# Roadmap: classical analytic étale cohomology, part II — almost duality and constructible proper base change

**Summary.** Build integral Faltings traces, local almost Poincaré duality on admissible formal models, and global mod-p, finite p-power, integral and rational Poincaré duality for smooth proper rigid spaces. The construction combines almost coherent formal sheaves, coherent duality over valuation rings, polystable root towers and descent through finite wild quotients. A second branch develops relative almost finite presentation over disconnected perfectoid bases. Together with proper smooth local systems, analytic resolution and affinoid algebraization, this yields Zariski-constructible proper pushforward, proper base change for every torsion exponent, and the constant cohomology sheaf of a proper rigid space on smooth bases.

## Scope and ownership

ClassicalAdicEtaleCohomology §§1.1–1.4 supplies the classical sites and coefficient operations; §§8.2–8.4 supplies proper algebraic comparison, the all-torsion projection formula and proper cohomological bounds; §§9.5–9.7 supplies the analytic trace, including p-primary coefficients in characteristic zero, and prime-to-residue duality. This Part II begins at integral Faltings traces and p-primary duality. Its all-torsion base-change theorem concerns Zariski-constructible locally bounded complexes; the parent's Huber-constructible sheaves have a different stratification condition.

The roadmap owns the formal almost-coherent specialization and its derived duality, formal canonical sheaves, integral Faltings traces, product-polystable character calculations and local duality descent, global p-primary duality, relative almost finite-presentation estimates, affinoid constructible algebraization, constructible proper pushforward and all-torsion proper base change. AInfCohomology §§AI.6.1–AI.6.2 owns the semistable chart and tower with one branch block and cyclotomic parameter; §3.1 here extends the geometry to products of blocks with arbitrary nonzero parameters, including units. Its normalized multiplication retains every block parameter. Abstract almost modules belong to PerfectoidSpaces P0; abstract module-derived tensor, Hom, cotangent complexes and completion belong to DerivedModuleAlgebra §§0.2–0.17 and 1.1–1.8; ringed-site enhancements belong to EnhancedDerivedSheaves §§0.1–0.4 and E1.

Proper singular primitive comparison, finite-level and integral proper cohomology perfectness are stated by PadicHodgeTheory §2.7 and are consumed here. Proper smooth mod-p, finite p-power and finitely generated integral local systems are stated by HodgeTateAndCanonicalSubgroups §7.6 and are consumed here, including its geometric-fibre and rigid base-change comparisons. Layer 6 supplies the distinct module estimates and continuity criterion of the relative almost argument. Finite p-group fixed vectors are already in the library as `Representation.exists_common_fixed_vector_of_isPGroup` and `Representation.invariants_ne_bot_of_isPGroup`; no new fixed-vector or abstract perfect-pairing theorem is assigned here. Scheme compactification belongs to EtaleCohomologyFoundations §§G.1–G.3. Rigid Zariski geometry, normalization and resolution belong to AdicSpacesPartIIPartII RZ.0–RZ.5. Formal model geometry, coherent GAGA and finite algebra traces belong to AdicSpacesPartIII F0, R2 and R3. The additional valuation-base and branched-cover conclusions are exact supplier contracts below.

The [headline acceptance file](Suggested.lean) records which headline statements have the required carriers at the pins. Its module docstring identifies each missing geometric carrier.

## Conventions

Fix a prime p. Layers 0–6 use a complete algebraically closed, nontrivially rank-one valued extension C of ℚ_p, its valuation ring O_C and maximal ideal 𝔪_C. For Galois conclusions let K be a complete nontrivially rank-one valued field of mixed characteristic (0,p), and C its completed algebraic closure. The formal-duality assertions over O_K retain that generality; generic canonical identifications and model-independent coherent traces in Layer 1 use K=C. Layer 7 allows every complete nontrivially valued characteristic-zero nonarchimedean K. Residue characteristic zero is included, using the prime-to-residue branch for every finite exponent.

An admissible formal model is flat and topologically finitely presented over the valuation ring. Formal dualizing complexes use separated models, global comparisons use separated qcqs models, and local assertions restrict to such opens. Pure dimension d means every generic component has dimension d. Write 𝔛₀=𝔛⊗O_C/p and 𝔛̄=𝔛⊗O_C/𝔪_C; reducedness of 𝔛̄ does not imply reducedness of 𝔛₀. Almostification is with respect to the flat idempotent ideal 𝔪_C, or its scalar extension on a perfectoid C-base. Almost zero means annihilation by the entire ideal. It does not mean annihilation by p or by one chosen small scalar.

Complexes are cohomological: Hⁱ(M[r])=Hⁱ⁺ʳ(M). Thus M[−a] is concentrated in degree a. All tensor products, reductions and inverse limits of complexes are derived. Underived maps are identified explicitly. A pairing is perfect when both adjoints to derived internal Hom are isomorphisms; this is distinct from finite Tor amplitude over a singular coefficient ring. RalHom denotes almost derived internal Hom. Cohomological indices in duality are integers: 2d−i is integer subtraction, with zero groups outside the stated interval. Finite coefficients ℤ/pⁿ use n≥1; ℤ/n uses n≥1, including the zero coefficient ring at n=1.

The completed absolute cotangent line gives the Breuil–Kisin twist {1}. Fontaine dlog maps O_C(1) injectively into O_C{1} with image (ζ_p−1)O_C{1}. Put a=ζ_p−1. Its ideal equals that of 1−ζ_p, but formulas involving the element use a consistently. Tate twists (r) retain their Galois action; choosing roots of unity for a toric calculation does not trivialize that action canonically. The oriented Koszul complex uses ordered generators γ_i−1 and the cup product's cohomological signs. Inversion converts left and right group actions in group-ring tensor products. Sites and derived categories use fixed object and morphism universes, enlarged once for sheaf categories; quasi-pro-étale covers use one common adequate cardinal bound.

**Checks.**

- On ℙ¹_C, the point class lies in H²(ℙ¹_C,Λ(1)) and has trace 1. A derived trace to Λ[−2] induces this map; Λ[2] has its nonzero cohomology in degree −2.
- On the one-torus, the coordinate character maps back to dlog T in its Tate line. If j is the rational change of twists and Φ=Sch∘j, then j∘Φ⁻¹=Sch⁻¹; multiplying the source by a changes this value to a⁻¹dlog T.
- For a smooth surface chart, interchanging the two coordinates changes dT₁∧dT₂ to −dT₁∧dT₂. The ordered group trace has the same sign. For p=2 this sign still exists integrally; reduction makes −1=1.
- In O_C/p, p annihilates 1, whereas an ε with 0<v(ε)<v(p) has ε·1≠0. In O_C/𝔪_C every ε∈𝔪_C annihilates 1, and its almostification is zero.
- The two-point trace is (x,y)↦x+y; at p=2 it sends (1,1) to 0 and (1,0) to 1. Trace is summation, with no inverse of the degree.
- For K=ℚ_p(π) with π²=p, the class of π in 𝒪_K/p is nonzero and has square zero, whereas π maps to zero in the residue field. This distinguishes reduction modulo p from reduction modulo the maximal ideal for both p=2 and p=3.

## Exact supplier contracts

### From Mathlib

Use `LinearMap.IsPerfPair` in `Mathlib/LinearAlgebra/PerfectPairing/Basic.lean`, line 39: both adjoints are bijective. The definition by itself imposes neither finite dimension nor projectivity. Use `Representation.invariants` in `Mathlib/RepresentationTheory/Invariants.lean`, line 73: the submodule consists of vectors fixed by every group element. It imposes no finiteness on the group. Use `AlgebraicGeometry.Scheme`, `ModuleCat`, `DerivedCategory`, polynomial quotients, exterior powers and the sheaf categories on their native carriers. Scheme étale sites are `AlgebraicGeometry.Scheme.smallEtaleTopology` in `Mathlib/AlgebraicGeometry/Sites/Etale.lean`, line 50; they are used only on schemes.

### From Tau Ceti

Use `Representation.exists_common_fixed_vector_of_isPGroup` and `Representation.invariants_ne_bot_of_isPGroup` in `TauCeti/RepresentationTheory/Unipotent/PowerOrder.lean`, lines 151 and 158. Their hypotheses are a field of exponential characteristic p, a nonzero finite-dimensional representation, and a p-group; the group need not be finite. Finite-group bar cohomology is used through its derived suppliers. Use the adic-space carrier `TauCeti.AdicSpace` in `TauCeti/AlgebraicGeometry/AdicSpace/PreAdicSpace/Adic.lean`, line 243. It is the full subcategory of sheafy locally affinoid pre-adic spaces. This carrier alone specifies neither a rigid étale site nor an almost module category; those are geometric supplier constructions.

### From TauCetiRoadmap.PerfectoidSpaces

Sections P0.1–P0.13 and P0.29 supply the almost quotient, its two adjoints, tensor–Hom, almost finite generation and presentation, and almost sheaves. Sections P3.11–P3.22 supply almost purity and étale almost acyclicity; P5.9–P5.13.4 supply finite-stage étale descent including affinoidness; P6.5–P6.7 and P6.15–P6.16 supply pro-étale towers and their continuous function rings. The single ideal defining almostification is retained through these comparisons.

### From TauCetiRoadmap.AdicSpacesPartII

Layers R0–R1 supply classical affinoids, rational restrictions, continuous differentials, smooth and étale charts, fibre products, properness and analytification. Sections R0.19–R0.20 supply the spectral and ordinary tilde-limit calculus used in continuity. These contracts include the topology and plus ring of each pair.

### From TauCetiRoadmap.AdicSpacesPartIII

Sections F0.6–F0.8 and R2.2–R2.8 supply coherent formal modules, admissible models, generic fibres, blowups, Raynaud localization, formal properness and algebraization on their stated bases. Sections R3.1–R3.8 supply associated coherent sheaves, coherent operations, continuous differentials, Kiehl proper mapping, relative proper GAGA and finite locally free coefficient trace. The finite coefficient trace sends the unit to the degree, including degree p; the torus formula is Tr(dlog T)=dlog S for S=Tʳ.

What AdicSpacesPartIII must provide (gap:valuation-models): Supply reduced cofinal admissible models over complete rank-one valuation rings, refined Elkik algebraization, finite formal quotients with quasiprojective residue fibre, the reduced quotient and polystable rig-isomorphism zigzag of Z Theorem 4.4.1 and U Theorem 1.4, and the reduced power-bounded base-change theorem used in SW Lemma 10.5.9.

### From TauCetiRoadmap.AdicSpacesPartIIPartII

RZ.0 supplies Zariski closed and locally closed subspaces and affinoid dimension induction; RZ.1 supplies finite normalization and Riemann extension on normal rigid spaces; RZ.2 and RZ.4 supply smooth loci and weakly Shilov geometry; RZ.5 supplies rigid resolution by proper modifications preserving a prescribed smooth locus.

What AdicSpacesPartIIPartII must provide (gap:finite-branched-covers): For a normal characteristic-zero rigid space and a nowhere dense Zariski closed subset, restriction identifies finite normal branched covers étale off that subset with finite étale covers of its complement, naturally under restriction.

What AdicSpacesPartIIPartII must provide (gap:proper-generic-smoothness): Supply weakly Shilov generic flatness and smooth-fibre criteria yielding a dense Zariski open U of a reduced target Y over which every proper map X→Y with smooth source in characteristic zero is smooth.

These contracts are Han Theorem 1.6, pp.4–5, Han line 134, and BH Theorems 2.21, 2.25, 2.27, 2.29, pp.11–14, BH line 475 and BH line 567. A smooth locus in X alone does not specify the open U in Y.

### From TauCetiRoadmap.RigidAnalyticGeometry and TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero

RigidAnalyticGeometry §§1.1–1.2 supplies noetherianity and excellence of classical affinoid algebras; SchemeAndStackFoundations §0.21 supplies finite-type permanence. ResolutionOfSingularitiesCharacteristicZero §§7.5 and 7.8 supplies projective regular-source modifications of reduced finite-type schemes over a characteristic-zero affinoid algebra, preserving the entire regular locus. This is the algebraic resolution used in the nonproper affinoid comparison route; AdicSpacesPartIIPartII RZ.5 supplies the separate rigid resolution in proper hypercovers. At the nodal affine curve the normalization has two branches over the node; at a regular affinoid the identity is a resolution.

### From TauCetiRoadmap.SchemeAndStackFoundations

Sections 0.6, 0.8–0.9 and 2.18–2.21 supply reflexive modules, finite-presentation geometry, DQCoh, the right adjoint of proper pushforward, upper shriek and coherent dualizing complexes on their stated bases.

What SchemeAndStackFoundations must provide (gap:valuation-coherent-duality): Extend coherent upper shriek to separated finitely presented schemes over universally coherent valuation quotients O_K/pⁿ, with finite-presentation compactification, proper adjunction, flat base change, amplitude [−d,0] for flat finitely presented maps with fibres of dimension at most d, flat canonical bottom sheaf and canonical-sheaf reflexivity for geometrically reduced residue fibre.

What SchemeAndStackFoundations must provide (gap:valuation-properness): Supply the valuation-base finite-presentation and valuative properness criterion used to turn the strictly contained chart restriction in SW Lemma 10.5.8 into a factorization through a finitely presented module.

The first contract is the coherent content of Z §§2.1–2.3, pp.10–18, Z line 475 and Z line 755, and AC §5.5, pp.129–131, AC line 5489. The second is SW pp.88–89, SW line 3544. Noetherian upper shriek alone does not give the valuation-quotient statement.

### From TauCetiRoadmap.DerivedModuleAlgebra and TauCetiRoadmap.DerivedDeRhamCohomology

DerivedModuleAlgebra §§0.2, 0.4, 0.8, 0.10–0.14 supplies derived tensor, the full cotangent complex, transitivity, base change and derived exterior powers; §§1.T.1, 1.1–1.8 and 1.E.1 supplies Hom, Milnor sequences, completion, complete Tor amplitude and effectivity of compatible perfect systems; §S.1 supplies spectral sequences of first-quadrant double complexes. DerivedDeRhamCohomology §1.22 supplies the valid exchanges of completion with derived operations. All quotient-tower comparisons keep bounded-torsion or coherence assumptions.

### From TauCetiRoadmap.EnhancedDerivedSheaves

Sections 0.1–0.4 and E1.1–E1.5 supply the ringed-site enhancement, replacements, derived tensor and internal Hom, coherent functor transformations, and point-site comparison. Section E2:towers.1 supplies coherent homotopy inverse limits. The enhancement realizes the geometric cohomological-descent comparisons on complexes.

What EnhancedDerivedSheaves must provide (gap:proper-hyperdescent): Supply the enhanced realization and finite-degree truncation of proper cohomological hyperdescent for torsion étale complexes on rigid spaces, sufficient to compare a fixed cohomological degree with finitely many levels of a proper resolution hypercover.

The geometric input is the proper-surjective descent used in BH Theorem 3.10, pp.17–18, BH line 769, and Han §4.1, pp.18–19; the contract includes the comparison maps and their convergence bounds.

### From TauCetiRoadmap.AInfCohomology

Section AI.0:integral.1 supplies the intrinsic completed cotangent line and Fontaine dlog with image aO_C{1}; AI.1.1–AI.1.7 supplies décalage, its cohomology formula, multiplicativity, base-change criteria, continuous Koszul cochains and completed sums with uniform annihilator bounds; AI.3.1–AI.3.2 supplies completed pro-étale coefficients and toric comparison; AI.4.1 supplies Hodge–Tate and cotangent specialization. Sections AI.6.1–AI.6.2 supply the semistable single-block comparison on its cyclotomic parameter domain. The product-block duality here retains arbitrary nonzero parameters. On a single torus, γ−1 acts on a weight of order pᵐ by `ζ_{pᵐ}−1`; it acts by zero on the integral-weight summand.

### From TauCetiRoadmap.PadicHodgeTheory

Sections 2.1, 2.4 and 2.7 supply the completed structure sheaf, rational geometric Hodge–Tate comparison, absolute and relative primitive comparison with their smoothness hypotheses, singular proper constant primitive comparison and proper finite-level/integral perfectness. Section 7.2 supplies the geometric étale/pro-étale lattice comparison. The point primitive comparison is the identity, the torus character corresponds to dlog T, and the ℙ¹ top class has Tate twist (1) and trace 1.

What PadicHodgeTheory must provide (gap:general-nearby-coherence): Supply the general admissible-model almost coherent nearby-cycle theorem, its derived p-completeness, reduction, amplitude [0,d] and étale base change for d-dimensional generic fibre, as in AC Theorems 6.13.5–6.13.6.

What PadicHodgeTheory must provide (gap:integral-toric-field-extension): For complete algebraically closed C′/C/ℚ_p and an affinoid perfectoid toric cover A_∞, supply the almost isomorphism from A_∞° completed-tensored over O_C with O_C′ to the power-bounded ring of its generic scalar extension, with the finite Koszul cochain comparison for arbitrary affinoid charts.

These additional contracts are AC pp.170–172, AC line 7390, and BH Lemma 3.25, p.25, BH line 1102. Singular proper primitive comparison itself is the §2.7 input, not a second target here.

### From TauCetiRoadmap.ArithmeticGaloisDuality

Sections D7.1–D7.3 and R02.1.2–R02.2.3 supply derived finite/continuous group cochains, bar resolutions, Hochschild–Serre, Shapiro, coefficient changes and Mittag–Leffler limits on their stated coefficient domains. The geometric extension to ringed-site almost modules is §4.4 here. At G=C_p with trivial 𝔽_p action, H¹=𝔽_p; at an induced regular module, Shapiro gives the original module in degree zero and zero higher cohomology. Thus the imported calculus uses derived invariants in the wild case.

### From TauCetiRoadmap.DiamondsAndVStacks and TauCetiRoadmap.DiamondEtaleCohomology

DiamondsAndVStacks §§D1.1–D1.6 and D1.9–D1.11 supplies disconnected perfectoid bases, field components, automatic integral flatness and their topological sheaf description. DiamondEtaleCohomology §§C1.7–C1.12 supplies comparison and base change when the base map is quasi-pro-étale, for every p-torsion exponent. Its prime-to-p alternative is a separate hypothesis. At the identity base map the exchange is the identity even with 𝔽_p coefficients; the general arbitrary-base p-primary exchange is proved in §7.6 here.

### From TauCetiRoadmap.ClassicalAdicEtaleCohomology

Sections 1.1–1.4 supplies classical sheaves, local systems, twists and étale/pro-étale comparisons; 7.1 supplies weak geometric field-pair comparison on its exact domain; 8.2 supplies proper algebraic/analytic comparison; 8.4 supplies all-torsion proper amplitude and projection formula; 9.5 supplies the normalized analytic smooth trace, its geometric-fibre compatibility and surjectivity for nonempty fibres; 9.7 supplies Galois equivariance and prime-to-residue duality; 10.5 supplies prime-to-residue smooth-family constructibility; 11.1 supplies field-base nonproper algebraic comparison and its purity input. These are used without importing arbitrary p-primary proper base change. On a split degree-p cover, the trace sends (1,…,1) to p, reducing to zero, and sends (1,0,…,0) to 1.

### From TauCetiRoadmap.HodgeTateAndCanonicalSubgroups

Section 7.6 supplies proper smooth mod-p and finite p-power higher local systems, their geometric-fibre and rigid base-change identifications, and pro-étale integral direct images with finitely generated, possibly torsion, ℤ_p-stalks. Section 7.5 supplies the boundary-free proper finiteness specialization. A constant elliptic curve family has R¹ of rank two; the zero coefficient system has zero direct images. Layer 6's almost module estimates are additional results on the strict perfectoid base, not new statements of the supplied local-system theorem.

### From TauCetiRoadmap.EtaleCohomologyFoundations

Sections G.1–G.3 supplies scheme compactifications and common refinements; F.0 and §§0.5–0.11 supplies constructible finite coefficients, finite-cover monodromy, localization and algebraic support comparisons over the affinoid algebra. The compactification statement keeps finite type and separatedness; the non-Noetherian valuation duality extension is the separate contract above.

What EtaleCohomologyFoundations must provide (gap:quasi-excellent-direct-images): For a finite-type morphism of quasi-excellent Noetherian schemes and finite coefficients annihilated by an integer invertible on the target, derived direct image carries bounded constructible complexes to bounded constructible complexes, including nonproper morphisms.

This is the scheme finiteness input of Han Proposition 4.2, pp.19–20, Han line 801; its quasi-excellent affinoid-base range extends the field and excellent-trait forms of §F.3.


## How to read the build

Layers 0–1 construct almost coherent nearby cycles, formal canonical sheaves and coherent traces. Layer 2 glues the integral Faltings trace with its fixed rational normalization. Layer 3 proves product-polystable duality by characterwise derived root-algebra duality, and Layer 4 descends it through rig-isomorphisms and finite wild quotients. Layer 5 globalizes and obtains geometric étale Poincaré duality. Layer 6 develops the independent relative almost finite-presentation analysis. Layer 7 uses the supplied proper smooth local systems and the relative estimates, affinoid algebraization, proper resolution and generic smoothness to obtain constructible proper pushforward, field-extension invariance, all-torsion proper base change and its big-site application. The relative branch uses quasi-pro-étale base change before the arbitrary-base theorem.

## Layer 0: Almost coherent nearby cycles

### 0.1 Almost coherent sheaves on formal models

For a qcqs admissible formal O_C-scheme 𝔛, with I=(p) and almost ideal 𝔪_C, an almost sheaf Fᵃ is almost adically quasi-coherent when its left-adjoint representative F! is I-adically complete with quasi-coherent reductions on every formal affine. It is almost coherent when locally its module of sections is almost finitely presented. D_acoh(𝔛)ᵃ is the full subcategory of D(O_𝔛ᵃ) whose cohomology sheaves have this property. The same notation on 𝔛₀ denotes almost quasi-coherent almost coherent sheaves on the scheme modulo p. (AC §§4.5, 4.8, Definitions 4.5.3, 4.5.6, Lemma 4.5.22, Definition 4.8.9, pp. 94–100, 109; AC line 4286.)

The API includes the following facts.

- On Spf A, almost coherent sheaves correspond to almost coherent A-modules under completed associated sheaf and sections.
- For n≥1, reduction modulo pⁿ preserves almost coherence and agrees with the scheme associated-sheaf functor.
- A derived object belongs to D_acoh exactly when every cohomology almost sheaf is almost coherent.

One proof route is as follows. Apply the abstract Serre quotient of modules and sheaves supplied by PerfectoidSpaces P0 to (O_C,𝔪_C). Use completed localization on each formal affine and glue; use AC Lemma 4.5.22 to identify almost finite presentation with almost coherence in this adhesive setup. Define the derived subcategory by cohomology, using the almost coherent weak Serre property; do not define it using all adically quasi-coherent sheaves as an abelian category.

The formal and scheme-modulo-p categories agree on sheaves killed by p.

**Checks.**

- O_𝔛ᵃ and its reductions belong to the category. The unit has one local generator.
- A sheaf annihilated by 𝔪_C represents the zero object, even if its honest sections are nonzero. For example O_C/𝔪_C has a nonzero honest unit class but zero almostification.
- The derived p-completed direct sum of infinitely many copies of O_C is not almost finitely generated: reduction and multiplication by one fixed nonzero ε cannot be generated in finitely many coordinates. This excludes the category of all complete modules.

*Needs:* AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; PerfectoidSpaces §§P0.1–P0.13 and P0.29 (almost modules and almost sheaves); EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom).

### 0.2 Affine comparison and almost coherent calculus

For 𝔛=Spf A topologically finitely presented over O_C, RΓ identifies D_acoh(𝔛)ᵃ with D_acoh(A)ᵃ, compatibly with completed localization and reduction. For F∈D⁻_acoh and G∈D⁺_acoh, RalHom(F,G) is bounded below almost coherent and is computed by the affine derived Hom. Proper topologically finitely presented maps preserve almost coherent cohomology; boundedness is retained in the almost category. All derived completeness claims are derived p-completeness, not exactness of ordinary completion on arbitrary modules. (AC Theorem 4.8.6, Corollary 4.8.16, Lemma 4.9.7(1), Theorem 5.1.6, pp. 108–118; AC line 4725.)

One proof route is as follows. Use derived completed localization and the affine equivalence for derived complete complexes; almost coherent cohomology makes the associated-sheaf functor t-exact. Approximate almost finitely presented sheaves to any prescribed finitely generated subideal of 𝔪_C by coherent sheaves, as in AC Theorem 4.7.6. Apply coherent formal proper mapping, then finite Čech descent and these approximations; apply affine Ext comparison to internal Hom. Use the boundedness order in AC Lemma 4.9.7(2).

On an affine, Hⁱ(RΓF)=ΓHⁱ(F) in the almost category; proper pushforward need not preserve honest finite presentation.

**Checks.**

- On Spf O_C with F=G=O_C, derived Hom is O_C in degree zero.
- With F=O_C and G having O_C in every negative degree, Hom has the same nonzero negative degrees; this excludes the reversed boundedness assertion.
- For the identity proper map, the affine comparison is the identity on H⁰ and both sides have zero higher unit cohomology.

*Needs:* §0.1; EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom); AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; AdicSpacesPartIII §§F0.6–F0.8 (formal coherent modules, completion and algebraization).

### 0.3 Almost coherent proper duality

Let R=O_C/pⁿ, n≥1, and f:Y→T be a proper finitely presented morphism between separated finitely presented R-schemes. Using coherent upper shriek over the valuation quotient, define f!ᵃ(Fᵃ)=(f!(F!))ᵃ. It is right adjoint to R f_* on bounded-below almost quasi-coherent categories. For A∈D⁻_acoh(Y)ᵃ and B∈D⁺_aqc(T)ᵃ, R f_* RalHom_Y(A,f!ᵃB)≅RalHom_T(R f_*A,B), naturally on T. For a smooth relative-d map, f!ᵃB=f^*B⊗Ωᵈ[d]. (AC §5.5, Definition 5.5.2, Theorem 5.5.5, Lemmas 5.5.6–5.5.7, pp. 129–131; AC line 5504.)

One proof route is as follows. Use flatness of the almost tensor ideal and preservation of almost-zero objects by the coherent f! to descend to the quotient. Obtain adjunction from coherent proper duality and the almost projection formula. Construct the internal-Hom comparison by cup, evaluation and the counit, then prove it is an isomorphism by testing against quasi-coherent objects. The valuation-duality contract supplies this construction over the valuation quotient.

For f=id the counit and comparison are identities; the Hom comparison lives on T, not Y.

**Checks.**

- For f=id and A=B=O_Cᵃ/p, both sides are O_Cᵃ/p in degree zero and the comparison sends 1 to 1.
- For a smooth curve, f! of the unit is Ω¹[1], in degree −1.
- For a split two-point finite map, the counit is (a,b)↦a+b, so (1,0) maps to 1.

*Needs:* §0.1; SchemeAndStackFoundations §§2.18–2.21 and the valuation-duality contract; SchemeAndStackFoundations §§0.6, 2.18–2.21 and the valuation-duality contract; EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom).

### 0.4 Almost nearby-cycle complexes

For an admissible formal O_C-scheme 𝔛 with d-dimensional generic fibre X, write ν:X_proét→𝔛_Zar for the specialization morphism of ringed sites and μ:X_proét→X_an for the analytic one. Set `A_𝔛=Rν_*Ô_X^{+a}` and K_𝔛=Rν_*(O_X⁺/p)ᵃ on 𝔛₀; `K_𝔛≅A_𝔛⊗ᴸ_{O_𝔛}O_𝔛₀`. Both have almost coherent cohomology and almost amplitude [0,d]; A_𝔛 is derived p-complete. Their formation commutes with étale maps of formal schemes. (Z §3.1, p. 30; AC Theorems 6.13.5–6.13.6, pp. 170–172; AC line 7390.)

The API includes the following facts.

- A_𝔛⊗ᴸO_𝔛₀≅K_𝔛, with cup products.
- For étale g:𝔜→𝔛, g^*K_𝔛≅K_𝔜 and g^*A_𝔛≅A_𝔜.
- In the almost category, Hⁱ(A_𝔛)=Hⁱ(K_𝔛)=0 for i<0 or i>d.

One proof route is as follows. Construct ν by specialization and its structural ring map; use PadicHodgeTheory §2.7’s pro-étale completed structure sheaf. Compute locally on toric perfectoid covers with almost purity and continuous cochains; sheafify the resulting finite-range almost coherent cohomology. Use derived reduction and étale base change; invoke the general almost-coherence theorem with its finite-dimensional generic-fibre bound. The proof input beyond the smooth PadicHodgeTheory §2.7 scope is the nearby-cycle and scalar-extension contracts.

The honest integral complex may have almost-zero cohomology outside [0,d]; truncation is made after almostification. The sheaf-level affine comparison is separate from the amplitude assertion.

**Checks.**

- For Spf O_C, A≅O_Cᵃ and K≅O_Cᵃ/p in degree zero. Positive cohomology is zero.
- For the d-dimensional smooth formal torus, the torsion-free part of Hⁱ(A) has rank binomial(d,i). For d=2 these ranks are 1, 2, 1.
- The target of ν is the formal Zariski site, so replacing it by μ gives O_X-coherent rational Hodge–Tate sheaves rather than integral sheaves on 𝔛₀. The two direct images have different ringed-site targets.

- For the square-zero model Spf 𝒪_C[ε]/(ε²), every generic nilpotent cε is power bounded. Its nilpotent coefficient group Cε is p-divisible, so (𝒪_X⁺/p)=𝒪_C/p and its completed integral nearby coefficient is annihilated by ε. The generic fibre is nonreduced; its coefficient sheaf is not the naive formal ring 𝒪_C[ε]/(ε²).

*Needs:* §0.1; §0.2; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; PerfectoidSpaces §§P3.11–P3.22 (almost purity and almost acyclicity); AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 0.5 Generic fibres of almost coherent complexes

For the specialization map sp:X_an→𝔛_Zar, define `F_K=Lsp^*F=sp⁻¹F⊗ᴸ_{sp⁻¹O_𝔛}O_X`. It kills 𝔪_C-almost-zero objects, hence descends from almost complexes to ordinary O_X-complexes. It sends bounded almost coherent complexes to bounded coherent complexes and commutes with proper pushforward between admissible models. When X is smooth, `(Rν_*Ô_X^{+a})_K≅Rμ_*Ô_X`. (Z Appendix C, Definitions C.1, C.3, Lemmas C.4–C.9, pp. 92–95; Z line 4369.)

The API includes the following facts.

- Generic fibre is exact on coherent and almost coherent cohomology and preserves derived tensor products.
- For proper f, (R f_*F)_K≅R f_K,*(F_K).
- For smooth generic fibre X, the generic fibre of A_𝔛 is Rμ_*Ô_X, compatible with cup and finite étale trace.

One proof route is as follows. Invert a nonzero topologically nilpotent scalar on formal affines, then pull back and glue. Use almost coherent approximation and coherent generic-fibre comparison to identify cohomology and proper direct images. Compare the two ringed-site pullbacks and the integral/rational completed structure sheaves for the last identification. Smoothness supplies coherent rational Hodge–Tate cohomology in Z Lemma C.9; it is not needed for the generic-fibre functor itself.

A sheaf killed by a power of p has zero generic fibre; this assertion concerns generic fibre, not reduction modulo p.

**Checks.**

- (O_𝔛ᵃ)_K=O_X. The unit remains the unit.
- (O_𝔛ᵃ/pⁿ)_K=0 for n≥1. The scalar p becomes invertible.
- For Spf O_C, generic fibre is ordinary scalar extension O_C→C, so two lattices differing by a nonzero scalar give isomorphic C-lines. Generic fibre forgets lattice size.

*Needs:* §0.1; §0.2; §0.4; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces).

### Examples

For the formal point, A=O_Cᵃ and K=O_Cᵃ/p have amplitude [0,0]. Generic fibre takes the first to C and the second to zero. For a smooth two-torus the torsion-free nearby ranks are 1,2,1. (AC Theorems 6.13.5–6.13.6, pp.171–172, AC line 7390; Z Lemma C.4, p.92, Z line 4369.)

### Dependencies

Use PerfectoidSpaces P0 and §§P3.11–P3.22; AdicSpacesPartIII §§F0.6–F0.8, R2.2–R2.8 and R3.1–R3.8; SchemeAndStackFoundations §§2.18–2.21 with valuation coherent duality; EnhancedDerivedSheaves §§0.1–0.4; AInfCohomology AI.1; and the general-nearby-coherence contract of PadicHodgeTheory. The individual statements specify their derived boundedness ranges.

## Layer 1: Formal canonical sheaves and coherent traces

### 1.1 Formal dualizing complexes and canonical sheaves

For a separated flat admissible formal O_K-scheme 𝔛 with pure relative dimension d, put 𝔛_n=𝔛×Spec(O_K/pⁿ), n≥1. Choose compatible scheme dualizing complexes `ω•_{𝔛_n}=f_n!O_K/pⁿ` and define ω•_𝔛=Rlim_n `ω•_{𝔛_n}`. Its isomorphism class is independent of choices, but no canonical identification of these complexes is asserted. The bottom sheaf ω_𝔛=H⁻ᵈ(ω•_𝔛) is canonical and O_K-flat. The complex is coherent of amplitude [−d,0], reduces derivedly to `ω•_{𝔛_n}`, and for smooth 𝔛 is `Ω̂ᵈ_{𝔛/O_K}[d]`. (Z Definition 2.4.1, Warning 2.4.2, Theorem 2.4.4, Corollary 2.4.5, pp. 19–20; Z line 831.)

The API includes the following facts.

- ω_𝔛=lim_n `H⁻ᵈ(ω•_{𝔛_n})` and is O_K-flat.
- `ω•_𝔛⊗ᴸO_K/pⁿ≅ω•_{𝔛_n}` for n≥1.
- For smooth pure-d 𝔛, ω•_𝔛≅Ω̂ᵈ[d], and the bottom identification is canonical.

One proof route is as follows. Apply coherent f! over O_K/pⁿ, using its flat-finite-presentation amplitude theorem, and choose compatible reductions. Take the derived inverse limit; use coherence and derived completeness to identify derived reductions. Extract the bottom sheaf from the compatible system; use torsion-freeness over the valuation ring for its flatness. Universally coherent f! is the valuation-duality contract.

The modulo-p dualizing complex is a derived reduction of ω•_𝔛, not generally the sheaf ω_𝔛/p in degree −d alone.

**Checks.**

- For Spf O_K, ω•=O_K and ω=O_K. The amplitude is [0,0].
- For Spf O_K⟨T₁,…,T_d⟩, ω is generated by dT₁∧⋯∧dT_d and sits in degree −d. For d=2 the generator has degree −2.
- Let R be the p-adic completion of the subalgebra ℤ_p[pT,T²,T³] of ℤ_p[T]. Its generic fibre is the smooth closed unit disc. Modulo p, the class x=pT is nonzero, x²=0 and xT²=xT³=0. This embedded point makes the one-dimensional reduction non-Cohen–Macaulay, so the dualizing complex has more than its bottom cohomology.

*Needs:* SchemeAndStackFoundations §§2.18–2.21 and the valuation-duality contract; SchemeAndStackFoundations §§0.6, 2.18–2.21 and the valuation-duality contract; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8.

### 1.2 Étale and algebraic comparison of formal duality

Bounded coherent complexes on an admissible formal model are derived p-complete. For an étale g:𝔜→𝔛 of separated pure-d models, g^*ω_𝔛≅ω_𝔜 canonically and g^*ω•_𝔛≅ω•_𝔜 as isomorphism classes. If 𝔛 is the p-adic completion of a separated flat finitely presented O_K-scheme with pure-d generic fibre, its formal dualizing complex is the derived completion of the scheme one, and their bottom sheaves agree under completion. (Z Lemmas 2.4.6–2.4.8 and Corollary 2.4.9, pp. 20–22; Z line 901.)

One proof route is as follows. Use coherent completeness and reduction to each finite thickening. Apply étale f! comparison and flatness to the bottom sheaves. Compare completion with the inverse system of algebraic dualizing complexes; avoid claiming canonical identifications not furnished by the inverse limit.

Étale coordinate changes give the determinant Jacobian transition on the bottom sheaf.

**Checks.**

- For the coordinate change U=2T over K of odd residue characteristic, dU=2dT, so the bottom transition has determinant 2.
- At n=1, completion followed by derived reduction returns the scheme dualizing complex modulo p.
- On the identity model, the étale comparison sends the canonical generator to itself.

*Needs:* §1.1; AdicSpacesPartIII §§F0.6–F0.8 (formal coherent modules, completion and algebraization); SchemeAndStackFoundations §§2.18–2.21 and the valuation-duality contract.

### 1.3 Gluing generic and smooth-open sections

Let 𝔘⊂𝔛 be a formal open and F a sheaf. Define Glue_𝔘(F) as the kernel of `j_K,*F_K⊕j_𝔘,*(F|𝔘)→j_{𝔘_K},*(F_K|𝔘_K)`, with the difference of the two restriction maps. There is a natural map F→Glue_𝔘(F). The notation as an intersection of lattices is used only after proving both restriction maps injective. (Z Definition 2.5.1 and Warning 2.5.2, p. 22; Z line 956.)

The API includes the following facts.

- Sections are pairs of a generic section and an integral section on 𝔘 with equal restrictions on 𝔘_K.
- A compatible pair determines a unique section of Glue_𝔘(F).
- When both maps into the common generic restriction are monomorphisms, Glue equals the usual intersection of their images.

One proof route is as follows. Form the kernel of the restriction difference in the sheaf category. Construct the natural map by the two restrictions; identify it with an intersection only inside a common ambient sheaf when injectivity has been proved.

Compatible pairs, rather than arbitrary pairs, are the sections.

**Checks.**

- For 𝔘=𝔛 the gluing sheaf is F. There is one compatible section, not two independent choices.
- For 𝔘 empty the gluing sheaf is j_K,*F_K, so it need not equal F. For the unit on Spf O_K its sections become K.
- For 𝔛=Spf O_K and 𝔘=𝔛, the compatible pairs in K⊕O_K are exactly (a,a) with a∈O_K, not all of K⊕O_K. The unrestricted direct sum contains (1,0), which is incompatible.

*Needs:* §0.5; §1.2; AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces).

### 1.4 Hartogs extension for the canonical sheaf

Suppose 𝔛 is separated admissible, has smooth pure-d generic fibre and geometrically reduced residue special fibre 𝔛̄=𝔛⊗k. Then ω_𝔛 is reflexive. For every dense formal open 𝔘, ω_𝔛→Glue_𝔘(ω_𝔛) is an isomorphism. More generally, on an admissible formal model with reduced residue special fibre, every coherent reflexive F satisfies F≅Glue_𝔘(F) for every dense formal open 𝔘; this last assertion needs neither smooth generic fibre nor smoothness of 𝔘. (Z Lemmas 2.5.3–2.5.4 and Theorem 2.5.5, pp. 22–24; Z line 987.)

One proof route is as follows. Reduce on formal affines to an algebraic model using the refined algebraization input the valuation-model contract. Use reflexivity of the scheme canonical sheaf over a valuation ring with geometrically reduced special fibre; its extension beyond Noetherian bases is the valuation-duality contract. Recover sections from the generic and dense smooth open using the reflexive extension criterion, then complete and glue.

Reduced residue special fibre is an explicit hypothesis; smooth generic fibre alone does not establish this statement.

**Checks.**

- For a smooth formal affine and 𝔘=𝔛, the compatible pair of a section s is (s,s).
- On Spf O_C the empty open gives the generic module C, so density cannot be omitted from recovery of O_C.
- For uv=ϖ the residue fibre has two branches; a dense formal open meets both, excluding an open meeting just one branch.

*Needs:* §1.3; §1.1; §1.2; SchemeAndStackFoundations §§0.6, 2.18–2.21 and the valuation-duality contract; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 1.5 Traces between formal canonical sheaves

For proper f:𝔜→𝔛 between separated flat admissible pure-d models, the proper duality counits on all reductions give compatible bottom traces f_*ω_𝔜→ω_𝔛. Here f_* denotes underived direct image. These traces compose and agree with the scheme trace under algebraization/completion. This construction does not assert a general formal-scheme exceptional inverse image. (Z Lemmas 2.6.1–2.6.2, pp. 24–25; Z line 1060.)

The API includes the following facts.

- Reduction agrees with the bottom of the scheme trace for f_n, through the canonical bottom reduction maps.
- The trace of id is id.
- For proper g and f of this scope, `Tr_{f∘g}=Tr_f∘f_*Tr_g`.

One proof route is as follows. Apply H⁻ᵈ to `Rf_n*ω•_{𝔜_n}→ω•_{𝔛_n}`, using the lower amplitude bound. Take the compatible inverse limit to obtain an honest map of bottom sheaves. Use composition of counits at finite level for transitivity.

A rig-isomorphism need not induce an isomorphism on the full underived direct images without additional hypotheses.

**Checks.**

- For the identity model, every finite-level and limiting trace is the identity. This fixes the counit normalization.
- For a disjoint union of r copies of 𝔛 mapping to 𝔛, the trace adds the r sections. At r=2 the pair (1,0) maps to 1.
- In dimension zero, for a finite étale degree-p generic map, the trace of the unit canonical section 1 is p; it is not normalized to 1. After reduction modulo p the unit trace is zero.

*Needs:* §1.1; §1.2; SchemeAndStackFoundations §§2.18–2.21 and the valuation-duality contract; SchemeAndStackFoundations §§0.6, 2.18–2.21 and the valuation-duality contract.

### 1.6 Generic canonical sheaf and top differentials

Let K=C be algebraically closed. For a separated qcqs admissible O_K-model 𝔛 with smooth pure-d generic fibre X and geometrically reduced residue special fibre, there is a canonical `s_𝔛:Ωᵈ_{X/K}≅(ω_𝔛)_K` and an identification Ωᵈ_X[d]≅(ω•_𝔛)_K. The bottom identification is independent of algebraization and compatible with proper rig-isomorphisms between models with these hypotheses. The complex comparison is not asserted to be canonical. (Z Theorem 2.7.1, Lemmas 2.7.3, 2.7.5 and Remark 2.7.4, pp. 25–27; Z line 1142.)

One proof route is as follows. Use refined local algebraization the valuation-model contract for models with geometrically reduced residue special fibre. Apply smooth algebraic duality after inverting p and compare completions. Check independence using algebraization comparisons and the bottom trace for proper rig-isomorphisms. Reduced-model cofinality the valuation-model contract supplies models in this class when constructing the rigid trace.

On the formal torus, s sends the wedge of dlog coordinates to the generic canonical generator.

**Checks.**

- At the point, s sends 1 to 1.
- On a smooth one-torus it sends dlog T to the generic canonical generator.
- For the coordinate change U=T⁻¹, dlog U=−dlog T on both sides.

*Needs:* §0.5; §1.2; §1.5; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 1.7 Coherent traces on smooth rigid spaces

Over the algebraically closed field C, for a proper morphism f:Y→X of smooth separated qcqs rigid C-spaces, both pure of dimension d, define Tr_f:f_*Ωᵈ_Y→Ωᵈ_X by a proper map of admissible models and their bottom trace, transported by s. The map is independent of models, composes, and for finite étale f equals the coefficient trace under Ωᵈ_Y≅f^*Ωᵈ_X. Pullback in this last formula is the usual inverse image of differential bundles. (Z Theorem/Definition 2.7.6 and Lemma 2.7.9, pp. 27–29; Z line 1200.)

The API includes the following facts.

- Any proper formal model gives the same trace.
- `Tr_{f∘g}=Tr_f∘f_*Tr_g` for proper maps of the same pure dimension.
- For finite étale f, `Tr_f(b·f^*α)=Tr_{O_Y/O_X}(b)·α`.

One proof route is as follows. Choose a formal representative after admissible blow-ups and take the generic fibre of its bottom trace. Use cofinal common models and the trace comparison for rig-isomorphisms to show independence. Algebraize finite étale maps on a dense smooth open and compare the multiplication trace; extend using coherent generic-fibre descent.

For a finite étale map of degree r, Tr_f(f^*α)=rα, including r divisible by p.

**Checks.**

- For the identity on a smooth rigid C-space, the coherent trace is the identity on its top differential bundle. This fixes the domain and codomain identification.
- For r disjoint copies of X the trace is summation. The pair (1,0) maps to 1.
- On T↦Tʳ, Tr(dlog T)=dlog S and Tr(f^*dlog S)=r dlog S, since dlog S=r dlog T. At r=p these values are 1 and p, respectively.

*Needs:* §1.6; §1.5; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces).

### Examples

For S=Tʳ on a smooth one-torus, pullback sends dlog S to r dlog T, while coherent trace sends dlog T to dlog S. Thus trace after pullback is multiplication by r, also at r=p. The identity model has bottom trace 1→1. (Z Lemma 2.7.9, pp.28–29, Z line 1266.)

### Dependencies

Use Layer 0, SchemeAndStackFoundations §§0.6, 2.18–2.21 with valuation coherent duality, AdicSpacesPartIII F0/R2/R3 with valuation models, and DerivedModuleAlgebra §§1.1–1.8. Canonical generic identifications use C algebraically closed; formal duality retains general mixed-characteristic K.

## Layer 2: Integral Faltings traces

### 2.1 Torsion-free nearby cohomology

For n≥0 and any admissible formal O_C-model, define R̃ⁿν_*Ô⁺ as Rⁿν_*Ô⁺ modulo its p-power torsion, equivalently modulo its (ζ_p−1)-power torsion. It is an honest O_𝔛-module with no O_C-scalar torsion. Cup products descend, and cup of n degree-one classes factors through the exterior power, also for p=2. (Z Definition 3.2.1 and Lemma 3.2.2, p. 31; Z line 1326.)

The API includes the following facts.

- There is a natural surjection Rⁿν_*Ô⁺→R̃ⁿν_*Ô⁺ killing exactly the power torsion.
- The product of n degree-one classes defines ∧ⁿR̃¹→R̃ⁿ.
- Inverting p identifies R̃ⁿ with Rⁿ and, when X is smooth, with Rⁿμ_*Ô_X.

One proof route is as follows. Quotient by the union of kernels of scalar powers; p and ζ_p−1 generate cofinal power ideals. Descend cup products using their scalar linearity. Graded commutativity gives 2x²=0; for p=2 the quotient is 2-torsion-free, so x²=0.

The infinite-power torsion quotient cannot be replaced by the kernel of one scalar without a separate theorem.

**Checks.**

- The quotient of O_C⊕O_C/p² is O_C, not O_C⊕pO_C/p². 
- A torsion-free module is unchanged. 
- When p=2, every degree-one square in the torsion-free cup algebra vanishes; anticommutativity alone in the original module is insufficient. 

*Needs:* §0.4; DerivedModuleAlgebra §§0.4, 0.8, 0.10–0.14; DerivedDeRhamCohomology §1.22; AInfCohomology §AI.0:integral.1 (cotangent line and Fontaine dlog).

### 2.2 BMS maps on admissible models

For every admissible formal O_C-model and n≥1, construct `Φⁿ:Ω̂ⁿ_{𝔛/O_C}{−n}→R̃ⁿν_*Ô⁺`. In degree one use the p-completed absolute cotangent map and `H⁰(L̂_{O_𝔛/ℤ_p})=Ω̂¹`, `H⁰(Rν_*L̂_{Ô⁺/ℤ_p})=R¹ν_*Ô⁺{1}`; then quotient torsion. Higher Φⁿ are exterior cup powers. These maps are functorial under flat morphisms and commute with étale restriction. (Z Lemmas 3.2.3–3.2.4, Definition 3.2.5, Remarks 3.2.6–3.2.8, pp. 31–33; Z line 1373.)

The API includes the following facts.

- Φ¹ is induced by the completed cotangent comparison before quotienting torsion.
- Φⁿ(α₁∧⋯∧α_n)=Φ¹(α₁)∪⋯∪Φ¹(α_n).
- The Φ square commutes for flat maps; for étale maps the vertical comparison maps are isomorphisms.

One proof route is as follows. Use cotangent transitivity O_C/ℤ_p and the perfectoid vanishing on the pro-étale basis. Take degree zero, untwist and pass to the torsion quotient. Take exterior powers and cup; obtain flat functoriality from the cotangent transformation and flat base change.

The input twist is the Breuil–Kisin twist {−n}, not the Tate twist (−n).

**Checks.**

- Positive-degree Φ on Spf O_C has zero differential source. For n=1 the source is zero.
- For a smooth model, im Φⁿ=(ζ_p−1)ⁿR̃ⁿ; Φ need not be surjective before inverting this scalar. For n=1 the cokernel of the image lattice is killed by a.
- On the formal torus Φ¹(dlog T) is the cotangent dlog cocycle with the Breuil–Kisin twist, not an arbitrarily chosen Tate generator. A scalar rescaling changes its intrinsic cotangent normalization.

*Needs:* §2.1; AInfCohomology §AI.0:integral.1 (cotangent line and Fontaine dlog); DerivedModuleAlgebra §§0.4, 0.8, 0.10–0.14; DerivedDeRhamCohomology §1.22.

### 2.3 Smooth integral Hodge–Tate inverse

For a smooth pure-d formal model, Rⁿν_*Ô⁺/Rⁿν_*Ô⁺[ζ_p−1]=R̃ⁿ is finite locally free, and Φⁿ identifies Ω̂ⁿ{−n} with (ζ_p−1)ⁿR̃ⁿ. Divide onto this image and use the dual Fontaine dlog map to obtain the canonical Ψ′ⁿ:R̃ⁿ→Ω̂ⁿ(−n). In degree d, compose the quotient and Ω̂ᵈ≅ω to get Ψᵈ:Rᵈν_*Ô⁺→ω(−d). Here n≥1; set Φ⁰=Ψ′⁰=id on the unit sheaf, which defines the dimension-zero trace. (Z Lemmas 3.3.1–3.3.2, Theorem/Definition 3.3.4 and Definition 3.3.5, pp. 33–37; Z line 1657.)

The API includes the following facts.

- Φⁿ is injective with image (ζ_p−1)ⁿR̃ⁿ.
- Put a=ζ_p−1 and let ι_n=id⊗(dlog∨)⊗n. For x∈R̃ⁿ, aⁿΨ′ⁿ(x)=ι_n((Φⁿ)⁻¹(aⁿx)); torsion-freeness determines Ψ′ⁿ uniquely. This uses a, rather than 1−ζ_p, in both occurrences.
- Ψᵈ commutes with étale pullback and the canonical identification of ω.

One proof route is as follows. Apply BMS Hodge–Tate comparison after `Lη_{ζ_p−1}`; use its cohomology formula to identify the single-scalar and power-torsion quotients. Check the image of Φ¹ using the cotangent truncation and obtain all degrees by the multiplicative comparison. Combine Φ inverse on its scalar image with dlog-dual on twists. Independence of a root-of-unity trivialization follows from the intrinsic dlog map.

Do not select an isomorphism O_C{1}≅O_C(1) without its dlog scaling factor.

**Checks.**

- On Spf O_C, Ψ⁰ is the identity on O_C. Dimension zero uses no division.
- On the formal one-torus, after inversion Ψ′¹ takes the coordinate-character class to dlog T in the dual Tate line. The inverse with an extra a⁻¹ would give a⁻¹dlog T.
- For a smooth d-model the rank of R̃ⁿ is binomial(d,n), hence it vanishes for n>d. For d=1 the ranks are 1, 1, 0 in degrees 0, 1, 2.

*Needs:* §2.2; AInfCohomology §AI.4.1 (Hodge–Tate and cotangent specialization); AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; AInfCohomology §AI.0:integral.1 (cotangent line and Fontaine dlog); §1.1.

### 2.4 Nice formal models

A nice model of dimension d is a qcqs separated admissible formal O_C-scheme whose generic fibre is smooth of pure dimension d and whose residue special fibre modulo 𝔪_C is reduced. Its reduction modulo p need not be reduced. A separated qcqs smooth model of pure dimension d is nice; the local theory is extended to non-quasi-compact spaces by restriction to the qcqs opens to which the statements apply. (Z Definition 3.5.1, p. 44; conventions §1.4, pp. 7–10; Z line 2088.)

The API includes the following facts.

- An étale formal scheme over a nice pure-d model is nice when separated and qcqs.
- The formal smooth locus contains a dense open in the residue special fibre.
- The generic fibre is a separated qcqs smooth pure-d rigid space.

One proof route is as follows. Conjoin the three geometric conditions with the ambient qcqs convention for this roadmap. Use perfection of the residue field to pass between reduced and geometrically reduced residue fibres in this O_C setting.

Niceness is stable under étale restriction; it is not a chosen smooth formal model.

**Checks.**

- Spf O_C⟨T₁,…,T_d⟩ is nice. Its residue algebra is a polynomial algebra.
- Spf O_C⟨u,v⟩/(uv−ϖ), 0≠ϖ∈𝔪_C, is nice of dimension one but is not a smooth formal model. Its residue equation is uv=0, a reduced union of two axes.
- Spf O_C⟨t⟩/(t²−ϖ) for nonzero ϖ∈𝔪_C has smooth zero-dimensional generic fibre but nonreduced residue fibre, so is not nice. Its residue algebra has the nonzero square-zero class t.

*Needs:* AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; §1.4.

### 2.5 Rational Hodge–Tate normalization and traces

For a nice model, the generic fibre of Φⁿ is Scholze’s canonical Ωⁿ_X(−n)≅Rⁿμ_*Ô_X, after applying the Fontaine dlog change of twists. In torus coordinates dlog T_i corresponds to the i-th coordinate character of Γ=ℤ_p(1)ᵈ. Consequently the generic Ψ is its inverse, and it commutes with finite étale traces on top differentials and pro-étale cohomology. (Z Lemmas 3.4.5, 3.4.7–3.4.8, Corollary 3.4.9, Theorem 3.4.12, Definitions 3.4.13–3.4.14 and Remark 3.4.15, pp. 38–44; equation (3.7) with the normalization determined by equation (3.6); Z line 1957.)

One proof route is as follows. Compare the cotangent and Kummer cocycles on the one-torus, then take exterior powers and use étale descent. With j the dlog-dual change of twists, equation (3.6) gives Φ=Sch∘j; define the rational inverse as j∘Φ⁻¹=Sch⁻¹. Compare finite étale traces on toric coordinates and extend using equality of coherent maps on the generic fibre.

Coordinate tori suffice for normalization; no splitting of the entire Hodge–Tate complex is asserted. On the one-dimensional torus, Ψ′ sends the normalized coordinate character back to dlog T with its Tate twist; a residual factor (1−ζ_p)⁻¹ would fail this normalization.

**Checks.**

- For the torus, Φ=Sch∘j gives jΦ⁻¹(Sch(dlog T))=dlog T.
- For S=Tʳ, pullback takes dlog S to r dlog T and coherent trace takes dlog T to dlog S.
- For d=0 all comparison and trace maps send 1 to 1.

*Needs:* §0.5; §2.2; §2.3; §1.7; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces); §2.4.

### 2.6 Integral and mod-p Faltings traces

For a nice d-model, there is a unique honest integral map `Tr_F^{d,+}:Rᵈν_*Ô⁺→ω_𝔛(−d)` agreeing with Ψᵈ on the formal smooth locus and with the generic inverse Hodge–Tate map. Truncate the almost integral complex to obtain A_𝔛→ω_𝔛ᵃ(−d)[−d]. Derived reduction modulo p and the canonical bottom inclusion give `Tr_F:K_𝔛→ω•_{𝔛₀}ᵃ(−d)[−2d]`. (Z Theorem 3.5.2, Definitions 3.5.3, 3.5.5 and Lemma 3.5.4, pp. 44–45; Z line 2093.)

The API includes the following facts.

- The smooth-open and generic restrictions uniquely characterize `Tr_F^{d,+}`.
- Tr_F is derived reduction of the almost integral trace followed by the bottom inclusion.
- The generic integral trace is the inverse of Scholze’s top Hodge–Tate map through s_𝔛.

One proof route is as follows. Use the Hartogs kernel to glue the two maps into the canonical sheaf. Use almost amplitude ≤d to project A_𝔛 to Hᵈ(A_𝔛)[−d], then apply the honest map after almostification. Reduce derivedly and compose `ω_𝔛/p[−d]→ω•_{𝔛₀}[−2d]`, obtained from the bottom-cohomology map; this gives the mod-p trace.

For a smooth model `ω•_{𝔛₀}=Ωᵈ[d]`, so the target becomes Ωᵈᵃ(−d)[−d]. The [−2d] is essential in the singular presentation.

**Checks.**

- For Spf O_C all three traces are the identity in degree zero. Each source and target is the unit module.
- For a smooth curve model the mod-p trace has target Ω¹ᵃ(−1)[−1], not Ω¹ᵃ(−1)[1]. Its nonzero target cohomology is in degree 1.
- For a singular special fibre retain `ω•_{𝔛₀}`; replacing it by ω_𝔛/p without its bottom inclusion and shifts changes the pairing. The bottom inclusion has source H⁻ᵈ(ω•)[d], fixing the two shifts.

*Needs:* §2.4; §2.3; §2.5; §1.4; §0.4; §1.1.

### 2.7 Pseudo-finite formal morphisms

A proper morphism f:𝔜→𝔛 between nice d-models is pseudo-finite if f_C is finite and R f_* A_𝔜 has almost cohomology only in [0,d]. The amplitude condition is part of the definition, not a consequence of generic finiteness. Finite morphisms and proper rig-isomorphisms are examples. (Z Definition 3.6.1 and Example 3.6.2, p. 46; Z line 2168.)

The API includes the following facts.

- f_C is finite, with its finite étale counit when further rig-étale.
- R f_*A_𝔜 is almost bounded above by d.
- Proper rig-isomorphisms and finite formal maps satisfy the pseudo-finite condition.

One proof route is as follows. Impose generic finiteness and the derived integral amplitude condition. For a finite map use exactness of the formal finite pushforward on the relevant quasi-coherent almost sheaves; for a rig-isomorphism identify the pro-étale generic sites.

There is no assumed finite flatness of f on integral models.

**Checks.**

- Every identity of a nice model is pseudo-finite. Its nearby complex retains amplitude [0,d].
- A proper admissible blow-up between nice models is pseudo-finite although its special-fibre map need not be finite. Generic degree is one while an exceptional special fibre can have dimension one.
- A proper map whose generic fibre has a positive-dimensional fibre cannot be pseudo-finite, even if its pushforward happens to have the stated amplitude. Positive generic fibre dimension violates the finite-map condition.

*Needs:* §0.4; §2.4; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 2.8 Finite pro-étale traces and model pushforwards

For finite étale f:Y→X, the exact pro-étale pushforward has its counit Tr:f_*Ô_Y⁺→Ô_X⁺, defined by summation on a splitting cover. It extends to Ô and O⁺/pⁿ, and to R f₀_*K_𝔜→K_𝔛 for formal representatives. Its generic fibre agrees with the rational trace. On a perfectoid section this is the finite algebra trace, with no division by the degree. (Z Appendix D, Definitions D.3, D.5–D.9, Lemmas D.4, D.11–D.13, pp. 96–99; Z line 4538.)

The API includes the following facts.

- On a split r-cover, the trace is the sum of r components.
- Tr commutes with derived reduction and inversion of p.
- Tr(b·f^*a)=Tr(b)·a and Tr∘restriction is multiplication by degree.

One proof route is as follows. Use the supplied finite étale counit, then take the inverse limit over pⁿ before inverting p. Push forward through the specialization diagram to define model traces. Check locally on a split perfectoid cover; identify summation with the algebra trace and descend.

All mod-p and mod-pⁿ coefficient labels stay consistent through the construction.

**Checks.**

- Modulo p a split cover of degree p has Tr(1)=0; its summation trace is still nonzero. The vector (1,0,…,0) still has trace 1.
- The degree-one trace is the identity. No normalization scalar occurs.
- For split covers of degrees r and s, iterated summation equals the trace of the rs-cover. On a unit vector both composites have value 1.

*Needs:* ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients); AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces); §0.4; §0.5.

### 2.9 Trace compatibility and étale locality

For a rig-étale pseudo-finite f:𝔜→𝔛 between nice d-models, `Tr_F,𝔛∘Tr_f=Tr_{f₀,ω}∘R f₀_*Tr_F,𝔜`, as maps to `ω•_{𝔛₀}ᵃ(−d)[−2d]`, with the analogous integral top-degree square. For the associated pairings, tracing the first argument and restricting the second agrees with tracing the product. Faltings traces also commute with étale base change on models. (Z Lemmas 3.6.4, 3.6.6 and Corollary 3.6.5, pp. 46–48; Z line 2195.)

One proof route is as follows. Use Hartogs to compare the honest top-degree maps on the generic fibre and dense smooth opens; reduce to the finite étale algebra trace there. Use the pseudo-finite amplitude to pass through truncation, then reduce modulo p and compare bottom inclusions. Apply the trace projection formula to get the pairing square; for étale locality use étale pullback of canonical sheaves and nearby cycles.

The argument uses flatness of ω from Z Corollary 2.4.5, not a scheme-only flatness citation applied to a formal model.

**Checks.**

- For the identity model both composite traces send the unit class to itself.
- For a split two-cover, the two routes send (x,y) to x+y.
- For a degree-p split cover the unit maps to p integrally and 0 modulo p by both routes; (1,0,…,0) maps to 1.

*Needs:* §2.7; §2.8; §2.6; §1.5; §2.5.

### Examples

On the one-torus the rational inverse sends the normalized character to dlog T. For a smooth curve, ω•₀=Ω¹₀[1], so the mod-p Faltings trace target ω•₀(−1)[−2] is Ω¹₀(−1)[−1]. At the formal point it is the identity. (Z Theorem 3.4.12 and Remark 3.4.15, pp.42–44, Z line 1957; Definition 3.5.5, p.45, Z line 2143.)

### Dependencies

Use Layers 0–1; AInfCohomology §AI.0:integral.1, AI.1 and §AI.4.1; DerivedModuleAlgebra §§0.4, 0.8, 0.10–0.14; DerivedDeRhamCohomology §1.22; PadicHodgeTheory §§2.1, 2.4; and ClassicalAdicEtaleCohomology §§1.1–1.4. The cotangent map, image lattice and rational dlog comparison are separate inputs to the gluing.

## Layer 3: Polystable character duality

### 3.1 Polystable formal models

For blocks i=1,…,l with n_i≥0 and 0≠ϖ_i∈O_C, a standard polystable algebra is `R⁺=O_C⟨t_{i,j}:0≤j≤n_i⟩/(∏_j t_{i,j}−ϖ_i for every i)`. Its relative dimension is d=Σ_i n_i. A polystable formal scheme admits an étale cover with étale maps to such models. Unit ϖ_i are allowed; zero ϖ_i are excluded. A separated qcqs polystable model of pure dimension d is nice; on such a model ω is invertible with ω•≅ω[d]. (Z Definitions 4.2.1–4.2.2 and Lemmas 4.2.4–4.2.7, pp. 49–50; Z line 2353.)

The API includes the following facts.

- The dimension of the chart is Σ n_i, unchanged under étale maps.
- For a separated pure-d polystable model, ω is an invertible sheaf and ω•=ω[d].
- Polystability is defined by the stated étale charts and is preserved under étale restriction.

One proof route is as follows. Use the monomial relations to prove O_C-flatness and topological finite presentation. The nonzero parameters give smooth generic fibres; reduction gives a product of normal-crossing monomial hypersurfaces. Apply complete-intersection duality on algebraic charts and formal étale comparison to get the invertible bottom sheaf.

A polystable chart is a product of blocks, not just a single semistable equation.

**Checks.**

- O_C⟨u,v⟩/(uv−ϖ) with nonunit nonzero ϖ has d=1 and is polystable. Its residue fibre has two reduced branches.
- If all parameters are units, each block is a formal torus after eliminating one coordinate. The generic and formal dimensions are each Σ n_i.
- O_C⟨u,v⟩/(uv) is excluded: its generic fibre is singular, even though its residue fibre is reduced. At (u,v)=(0,0) both partial derivatives vanish.

*Needs:* §2.4; §1.1; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 3.2 Polystable root towers

Choose compatible p-power roots of each nonzero ϖ_i. Let R_m⁺ be the same block algebra in `t_{i,j}^{1/p^m}` with block product `ϖ_i^{1/p^m}`, and R_∞⁺ the p-completed direct limit. The generic inverse limit is affinoid perfectoid and a pro-étale Γ-torsor over Spa(R⁺[1/p],R⁺), where Γ consists of the root-of-unity actions with product one in each block, hence Γ≅ℤ_p(1)ᵈ. Each finite stage is finite and finitely presented over R⁺ and O_C-flat; it need not be R⁺-flat. (Z §4.2.2, equations (4.2)–(4.5), Lemmas 4.2.8 and 4.2.11, pp. 50–52; Z line 2420.)

The API includes the following facts.

- R_m⁺ is finite finitely presented over R⁺ and O_C-flat.
- `(ε_{i,j})` acts on `t_{i,j}^{1/p^m}` by its m-th root, subject to `∏_jε_{i,j}=1`.
- Spa(R_∞⁺[1/p],R_∞⁺) is the perfectoid inverse limit of the generic finite étale stages.

One proof route is as follows. Adjoin roots subject to the block-product conditions and form the completed colimit. Verify Frobenius surjectivity modulo p and the integral perfectoid criterion on monomials. Invert p to identify finite étale root covers and their inverse-limit torsor; use the product-one constraints to compute Γ.

Keep O_C-flatness distinct from R⁺-flatness at finite level.

**Checks.**

- With every n_i=0 the tower is constant and Γ is trivial. Each block variable is its chosen scalar root.
- For the one-torus, the tower is the familiar tower adjoining all p-power roots of its coordinate. For one coordinate the deck group is ℤ_p(1).
- For uv=ϖ with nonunit ϖ, the finite stages must not be certified finite locally free over the nodal base merely from their finite étale generic fibres. At p=2 the closed-node fibre of a degree-two root stage has length 3, whereas its generic rank is 2.

*Needs:* §3.1; AInfCohomology §§AI.3.1–AI.3.2 (completed structure sheaf and toric comparison); PerfectoidSpaces §§P3.11–P3.22 (almost purity and almost acyclicity).

### 3.3 Character summands of polystable towers

Let T be the block-product-one torus and `L=X*(T)=⊕_i(ℤ^{n_i+1}/Z·(1,…,1))`. Every χ∈L[1/p] has a unique representative with nonnegative rational exponents and minimum zero in each block. Let V_χ be the O_C-line generated by that monomial. Then R_m⁺ is the p-completed sum of V_χ for χ∈p⁻ᵐL. For χ̄∈L[1/p]/L define `R⁺_{χ̄}` as the completed sum over χ+L. This yields a finite direct sum at level m and a completed direct sum at infinity. Multiplication `V_χV_ψ⊂V_{χ+ψ}` has a parameter factor and is not generally an isomorphism. (Z Remark 4.2.14, Lemma 4.2.15 with normalized multiplication, Definition 4.2.17 and Lemma 4.2.19, pp. 53–55; Z line 2560.)

The API includes the following facts.

- Every weight has exactly one blockwise minimum-zero representative.
- `R⁺_{χ̄}` depends only on χ̄ and Γ acts by that character.
- If a,b are normalized lifts, their product is `∏_iϖ_i^{min_j(a_{i,j}+b_{i,j})}` times the normalized monomial of χ+ψ, using the chosen roots for rational exponents.

One proof route is as follows. Normalize exponents by subtracting the minimum separately in each block. Prove uniqueness of the resulting monomial expansion in the completed algebra. Regroup by integral-character cosets; the Γ action is scalar on each coset. Retain the scalar factor created when a product requires a new normalization.

The character decomposition is additive. Its multiplication is the normalized monomial multiplication with its block parameter factors.

**Checks.**

- For uv=ϖ, V_[u]V_[v]=ϖ·V_0; for nonunit ϖ this is a proper submodule of V_0. For ϖ=p the product ideal is pO_C, not O_C.
- The integral-character coset summand is R⁺ itself, not just the constant line O_C. For normalized exponents (1,0) and (0,1) the removed common minimum is 1.
- For unit parameters the multiplication factors are units and the weight-line multiplication maps are isomorphisms. The integral-weight coset contains T as well as 1.

*Needs:* §3.2; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8.

### 3.4 Character cohomology and nearby-cycle comparison

For a standard polystable chart, sheafified continuous cochains C_cont(Γ,R_∞⁺)→Rν_*Ô⁺ are an almost isomorphism. Choose a basis of Γ. Koszul cochains compute the completed character summands: the trivial character has exterior cohomology of ranks binomial(d,i); every nontrivial finite-level character cohomology is annihilated by ζ_p−1, and is almost finitely presented with no 𝔪_C-torsion. The annihilator estimates improve with growing p-power denominators, giving the small tails used in completed sums. (Z Lemma 4.2.13, Lemma 4.2.23 and Corollaries 4.2.25–4.2.26, pp. 52–53, 55–57; Z line 2629.)

One proof route is as follows. Apply almost purity and Cartan–Leray on the generic perfectoid Γ-torsor, then sheafify over formal affines. For a character of order pᵐ, one Koszul scalar generates the ideal `(ζ_{pᵐ}−1)`; compute its exterior residual complex and annihilator. Use uniform torsion bounds and completed-sum cohomology. Distinguish annihilation by ζ_p−1 from almost-zero annihilation by all of 𝔪_C.

For a nontrivial character, H⁰ vanishes because the summand is O_C-torsion-free; positive cohomology may be nonzero torsion.

**Checks.**

- For Γ=ℤ_p with trivial coefficient O_C, the complex is [O_C→⁰O_C], with H⁰=H¹=O_C.
- For a nontrivial character of order pᵐ, the complex is `[O_C→(ζ_{pᵐ}−1)O_C]`; H⁰=0 and `H¹=O_C/(ζ_{pᵐ}−1)`.
- For Γ=1 the only cohomology is degree zero; a claim of a degree-one term would be false.

*Needs:* §3.3; §3.2; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; PerfectoidSpaces §§P3.11–P3.22 (almost purity and almost acyclicity); §0.4.

### 3.5 Integral décalage and the polystable top map

For a polystable chart, applying `Lη_{1−ζ_p}` to the almost continuous-cochain comparison gives an honest isomorphism. Rⁱν_*Ô⁺ modulo its (1−ζ_p)-torsion is locally free of rank binomial(d,i). The top integral Faltings map induces an isomorphism Rᵈν_*Ô⁺/[1−ζ_p]≅ω_𝔛(−d), where brackets mean the torsion submodule, not the principal-ideal quotient. (Z Lemma 4.2.27 and Corollaries 4.2.28–4.2.29, Theorem 4.2.30, pp. 57–59; Z line 2774.)

One proof route is as follows. Prove the special décalage criterion using the cone’s almost-zero cohomology and absence of 𝔪_C-torsion in the relevant derived reductions. An arbitrary almost isomorphism does not become an isomorphism under Lη. Use the character computations to verify that criterion, then compute Lη cohomology by the imported formula. On the top trivial-character line identify the trace on the generic fibre and use the torsion-free line to conclude.

The quotient removes scalar torsion; reducing a locally free module modulo 1−ζ_p would give a different, torsion module.

**Checks.**

- For the trivial one-torus the free quotient has ranks 1 and 1 in degrees 0 and 1.
- For a weight with differential ζ_p−1, décalage removes its torsion cohomology.
- For the torsion-free line O_C, quotient by its a-torsion is O_C, whereas reduction modulo a is O_C/a.

*Needs:* §3.4; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; §2.6; §3.1.

### 3.6 Root-stage projection traces

For a standard polystable chart, define tr_m⁺:R_m⁺→R⁺ by projection onto the integral-character coset summand in the finite decomposition. In characteristic p the analogous map tr_m:A_m→A for A=𝔽_p[t₀,…,t_n]/(t₀⋯t_n) is the monomial projection onto the base-ring summand in the pᵐ-root algebra A_m. These are module maps normalized by tr_m(1)=1; they are not the ordinary algebra trace of a degree-divisible-by-p extension. (Z Definitions 4.3.1 and 4.3.3, pp. 59–60; Z line 2818.)

The API includes the following facts.

- tr_m is the identity on R⁺ and zero on each other character coset.
- tr_m(a·b)=a·tr_m(b) for a∈R⁺.
- For m≤r the restriction of tr_r to R_m⁺ is tr_m.

One proof route is as follows. Define the characteristic-p monomial projection, retaining exactly the weights integral in L. Use the direct-sum coset projection for the integral tower. Verify compatibility with products by elements of the base ring and with finite-level inclusions.

For m=0 the map is identity.

**Checks.**

- tr_m(1)=1 even when m>0. The ordinary inseparable algebra trace would send 1 to 0 in characteristic p.
- For a one-torus and m>0, `tr_m(T^{1/pᵐ})=0`. This weight is nonintegral.
- For the same torus, tr_m(T)=T; the trace selects integral weights, not only exponent zero. For m=0 every weight is retained.

*Needs:* §3.3 (the finite character decomposition).

### 3.7 Derived duality of finite root algebras

For the characteristic-p monomial hypersurface A and every m≥0, multiplication followed by tr_m induces A_m≅RHom_A(A_m,A). For every standard polystable R⁺, the integral projection similarly gives `R_m⁺≅RHom_{R⁺}(R_m⁺,R⁺)`; characterwise `R⁺_χ≅RHom_{R⁺}(R⁺_{−χ},R⁺)`. These modules need not be projective or flat over the singular base. (Z Theorem 4.3.2, Lemmas 4.3.4–4.3.5, Proposition 4.3.6 and Corollary 4.3.7, pp. 59–62; Z line 2834.)

One proof route is as follows. In characteristic p, use the hypersurface resolution/duality and the explicit monomial projection to identify Hom and prove higher Ext vanishing; retain the singular relation in this computation. For a single nonunit-parameter block choose a nonzero π∈𝔪_C with `max(|ϖ^{1/pᵐ}|,|p|)<|π|<1`; reduce to the characteristic-p hypersurface after derived reduction. Use derived completeness, Hom base change and derived Nakayama to lift the isomorphism; for unit parameters use the free torus decomposition. Combine blocks by the completed derived Künneth comparison, whose finite-presentation and O_C-flatness hypotheses hold for the root stages; extract opposite-character pairs.

For a nodal chart, duality must be formulated by derived Hom; a declaration requiring all R⁺_χ to be free over R⁺ would reject the required example.

**Checks.**

- At m=0 the adjoint is r↦(s↦rs) and evaluates at 1 to r.
- At the characteristic-two node, the two fractional generators x,y satisfy xy=0 after reduction; their Hom duals are the ideals (u) and (v), so the coefficient constraints retain the branches.
- For the torus at p=2 and m=1, the projection pairing on basis (1,T^(1/2)) has matrix diag(1,T), of invertible determinant T.

*Needs:* SchemeAndStackFoundations §§2.19–2.20 (finite coherent duality and complete-intersection dualizing modules); §3.6; §3.2; §0.2; DerivedModuleAlgebra §§0.4, 0.8, 0.10–0.14; DerivedDeRhamCohomology §1.22; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8.

### 3.8 Oriented continuous-cochain traces

A basis of Γ≅ℤ_pᵈ identifies the top cohomology of its Koszul complex with its coefficient module. For trivial Γ action on R⁺, projection to Hᵈ defines tr_Γ:C_cont(Γ,R⁺)→R⁺[−d]. Compose C_cont(Γ,R_∞⁺)→C_cont(Γ,R⁺), induced by projection to the integral-character summand, with tr_Γ. A basis change multiplies this scalar trace by its determinant; restoring the Tate orientation line makes the geometric pairing intrinsic. (Z Definitions 4.3.9, 4.3.13 and Remark 4.3.14, pp. 62–63; Z line 3008.)

The API includes the following facts.

- The induced map on Hᵈ for trivial coefficients is the top-wedge identification.
- Changing the oriented basis changes the scalar trace by the corresponding determinant unit, according to the chosen orientation identification.
- Cup, multiplication and this trace define the continuous-cochain pairing with target R⁺[−d].

One proof route is as follows. Use the Koszul top wedge for the ordered basis and the trivial action. Project coefficients to the trivial coset and compose the trace in the derived category. Track the top exterior line under basis change rather than declaring the scalar trace canonical.

For d=0 the trace is the identity on the trivial coefficient ring.

**Checks.**

- For Γ=ℤ_p, trivial coefficients give the complex [R⁺→⁰R⁺] in degrees 0,1; trace projects to its degree-one term. It sends the degree-one generator to 1.
- For Γ trivial the complex and its trace are R⁺ in degree zero. It is the identity in dimension zero.
- Swapping two basis vectors reverses the top exterior orientation; the untwisted scalar trace changes by −1. For two generators the determinant is −1.

*Needs:* §3.3; §3.6; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; AInfCohomology §AI.0:integral.1 (cotangent line and Fontaine dlog).

### 3.9 Almost duality of polystable continuous cochains

Let B=C_cont(Γ,R_∞⁺). The oriented cup trace pairing `B⊗ᴸ_{R⁺}B→R⁺[−d]` is perfect after almostification: `Bᵃ≅RalHom_{R⁺ᵃ}(Bᵃ,R⁺ᵃ)[−d]`. Before passing to all characters, the Koszul pairing for each opposite pair `R⁺_χ,R⁺_{−χ}` is a derived duality. The comparison of the completed character sum with its dual product is an almost isomorphism. (Z Lemmas 4.3.10–4.3.12 and Theorem 4.3.15, pp. 62–64; Z line 3066.)

One proof route is as follows. Use Koszul self-duality and opposite-character root-module duality for each finite character. Show the internal Homs are derived p-complete before passing to the completed sum. Estimate the cokernel of the sum-to-product map using the improving high-denominator annihilators; it is killed by every small ideal, hence almost zero.

Ordinary direct sums cannot simply be interchanged with dual products; the almost tail estimate is part of the proof.

**Checks.**

- For d=0, B=R⁺ and evaluation of the adjoint at 1 sends b to b.
- For Γ=ℤ_p with trivial action, degrees 0 and 1 pair by multiplication into degree 1.
- For a nontrivial character χ, multiplication pairs χ with −χ; a different coset has projection trace zero.

*Needs:* §3.7; §3.8; §3.4; §0.2; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8.

### 3.10 Local almost duality on polystable models

For every separated qcqs polystable pure-d model, the cup Faltings trace induces A_𝔛≅RalHom(A_𝔛,ω_𝔛ᵃ(−d))[−d]. Reducing derivedly modulo p yields `K_𝔛≅RalHom(K_𝔛,ω•_{𝔛₀}ᵃ(−d))[−2d]`. These are perfect pairings in the sense of isomorphic adjoints; no finite-projective claim for K_𝔛 is made. (Z Theorem 4.3.16 and Corollary 4.3.17, pp. 64–66; Z line 3106.)

One proof route is as follows. Compare the cochain trace and Faltings trace on the top torsion-free line; their generic normalizations agree, and the top Faltings isomorphism identifies the integral lattices. Use the sheafified almost cochain comparison to transport the duality on charts. Glue by étale locality and reduce using derived Hom base change and `ω•_{𝔛₀}≅(ω_𝔛/p)[d]` on polystable models.

For d=1 the integral target is ω(−1)[−1] and the mod-p target is ω•₀(−1)[−2].

**Checks.**

- At the point, both adjoints are multiplication by the unit.
- For a curve, the integral target is ω(−1)[−1], while ω•₀(−1)[−2]=ω₀(−1)[−1].
- For two torus coordinates, paired degrees are 0 with 2 and 1 with 1; swapping the ordered coordinates changes the top generator by −1.

*Needs:* §3.9; §3.5; §2.6; §3.1; §0.2.

### Examples

For uv=ϖ, the two opposite normalized monomials multiply to ϖ; if ϖ is a nonunit, their product misses 1. At p=2 the first root stage modulo the closed-node ideal has basis 1,x,y and length 3, while its generic degree is 2. The derived root-module duality retains these singular relations. On two torus coordinates, reversing the ordered basis changes the scalar top trace by −1. (Z §§4.2.2–4.3.3, pp.50–64, Z line 2560 and Z line 2834.)

### Dependencies

Use Layers 0–2; the almost-to-honest and continuous Koszul comparisons of AInfCohomology §§AI.1.1–AI.1.7 and AI.3.1–AI.3.2; PerfectoidSpaces P3; scheme coherent finite duality from SchemeAndStackFoundations §§2.19–2.20; and DerivedModuleAlgebra §§1.1–1.8. Root-stage projection needs only the character decomposition; derived root duality uses the additional Hom and completion comparisons.

## Layer 4: Descent of local almost duality

### 4.1 Faltings pairings and adjoints

For a nice d-model set `D_𝔛=ω•_{𝔛₀}ᵃ(−d)[−2d]`. Define `β_𝔛:K_𝔛⊗ᴸ_{O_𝔛₀ᵃ}K_𝔛→D_𝔛` as cup followed by Tr_F, and its adjoint 𝒟_𝔛:K_𝔛→RalHom(K_𝔛,D_𝔛). Say β is perfect when both tensor–Hom adjoints are isomorphisms. This means derived self-duality relative to D_𝔛; it does not assert that K_𝔛 is a perfect complex over O_𝔛₀. (Z §1.4, p. 9 and Definition 4.1.1, pp. 48–49; Z line 2301.)

The API includes the following facts.

- The adjoint sends a to the functional b↦Tr_F(a∪b), with derived symmetry signs.
- Perfection is the isomorphism of both adjoints; by graded symmetry one suffices here.
- The pairing and its adjoint restrict to the pairing on every étale model chart.

One proof route is as follows. Use the cup algebra structure of K and the mod-p trace. Curry using derived tensor–Hom adjunction; graded commutativity relates the two adjoints. Compare on degree-zero finite free modules with the supplied LinearMap.IsPerfPair convention, without identifying general derived duality with finite projectivity.

Degree-zero ordinary pairings recover bijectivity of both maps to the module dual.

**Checks.**

- For Spf O_C, β is multiplication O_Cᵃ/p⊗ᴸO_Cᵃ/p→O_Cᵃ/p and is perfect over that coefficient ring. The coefficient ring is O_Cᵃ/p.
- For a smooth d-model, D_𝔛=Ω̂ᵈ_𝔛ᵃ/p(−d)[−d], so degrees i and d−i pair locally. For d=1 the local paired degrees are 0 and 1.
- For finite free modules in degree zero over a field and target the field in degree zero, perfection is exactly Mathlib LinearMap.IsPerfPair. The identity pairing on a one-dimensional vector space has both adjoints equal to 1.

*Needs:* §2.6; §0.3; EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom); Mathlib `LinearMap.IsPerfPair`.

### 4.2 Local duality descends along rig-isomorphisms

For a proper rig-isomorphism f:𝔜→𝔛 between nice d-models, perfection of β_𝔜 implies perfection of β_𝔛. The nearby-cycle comparison R f₀_*K_𝔜≅K_𝔛, trace compatibility and almost proper duality identify the pushed-forward adjoint with 𝒟_𝔛. (Z Lemma 4.4.3, p. 67; Z line 3227.)

One proof route is as follows. Identify generic fibres and their pro-étale complexes. Push forward the local adjoint and use the almost internal-Hom proper-duality comparison. Use the Faltings trace square to identify the resulting map with the target adjoint.

No averaging or special-fibre isomorphism is used for an admissible blow-up.

**Checks.**

- For f=id the descended adjoint is the original adjoint.
- For an admissible blowup, the generic map has degree one while an exceptional residue fibre can be a projective line; the argument uses Rf_*.
- At a point the pushed-forward trace sends 1 to 1; division by a special-fibre degree would have no defined role.

*Needs:* §4.1; §2.9; §0.3; §2.7.

### 4.3 Good formal quotients

A good quotient is a finite quotient morphism f:𝔛′→𝔛=𝔛′/G between nice d-models, for a finite group G acting over O_C, with 𝔛′ having quasiprojective residue special fibre and f_C a finite étale G-torsor. The group order may be divisible by p. Quasiprojectivity of that fibre and the formal quotient theorem are the geometric existence hypotheses, supplied through the valuation-model contract; this node names the proof-specific class of quotient diagrams. (Z Definition 4.4.2, p. 67; Z line 3219.)

The API includes the following facts.

- The formal morphism f is finite.
- The generic fibre is a finite étale G-torsor.
- The quotient map is universal for G-invariant formal maps, with the stated geometric existence hypotheses.

One proof route is as follows. Use a finite formal quotient of the specified quasiprojective model, then require niceness and the generic torsor condition. Equip the quotient with the given finite map; do not infer an integral étale torsor from the generic condition.

The special fibre may have fixed points and wild ramification.

**Checks.**

- For G=1 a nice model with quasiprojective residue special fibre maps identically to itself. The deck group has one element.
- G×𝔛→𝔛 is a good quotient for any finite G and nice 𝔛 with quasiprojective residue special fibre, including |G|=p. The regular representation has |G| basis vectors and is induced even in characteristic p.
- An action with a nontrivial generic stabilizer does not give a good quotient even if a finite formal quotient exists. A fixed generic point violates the torsor fibre cardinality |G|.

*Needs:* §2.4; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 4.4 Almost homotopy invariants and orbits

On a ringed O_C-site (T,O) with trivial action on the base, equivariant almost modules mean modules over Oᵃ[G], with O_C central even if G is nonabelian. For F∈D(O[G])ᵃ define `F^{hG}=RalHom_{Oᵃ[G]}(Oᵃ,F)` and `F_{hG}=F⊗ᴸ_{Oᵃ[G]}Oᵃ`, using the trivial action on Oᵃ. Use the usual inversion anti-involution to convert left and right actions where necessary. In geometric pushforwards the action is retained in the derived equivariant category, not only on cohomology. (Z Definitions 4.4.4, 4.4.10, 4.4.12, 4.4.14 and Remarks 4.4.5–4.4.9, 4.4.13, pp. 67–69; Z line 3328.)

The API includes the following facts.

- For G=1 both functors are naturally the identity.
- The standard bar resolution of the trivial O[G]-module computes both functors, with finite free terms for finite G.
- H⁰ of derived invariants of a module agrees with ordinary invariants, and with Mathlib Representation.invariants in the ordinary module setting.

One proof route is as follows. Import ordinary representations, invariants and bar-derived group cohomology; extend the ringed-site almost quotient using the central O_C action. Use K-injective/K-flat or finite-free bar resolutions to form derived invariants and orbits. For an invariant geometric map, derive the equivariant pushforward before forgetting the action.

When p divides |G|, invariants and orbits are derived and cannot be replaced by a Reynolds operator.

**Checks.**

- For C_p acting trivially on O_Cᵃ/p, H¹(C_p,O_Cᵃ/p)≅O_Cᵃ/p, so derived invariants have nonzero positive cohomology. The cyclic bar complex has zero mod-p differentials in degrees 0 and 1.
- For the regular induced module O[G]⊗_O M, homotopy invariants and orbits are each M with the usual Shapiro identifications. For G=S₃ the six regular basis vectors give one invariant sum and one coinvariant generator.
- If |G| is a unit in the coefficient ring, higher group cohomology vanishes and the norm divided by |G| gives the familiar averaging identification. For C₃ over F₂ the inverse of 3 is 1, so averaging fixes a constant vector.

*Needs:* §0.1; EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom); ArithmeticGaloisDuality §§D7.1–D7.3 and R02.1.2–R02.2.3; Mathlib `Representation.invariants`.

### 4.5 Pushforward and duality for equivariant nearby cycles

For t:(X_ét,O_X⁺/p)→(𝔛₀,O_𝔛₀) and finite G acting trivially on the base site, R t_* commutes with homotopy invariants and homotopy orbits. For equivariant F and a nonequivariant target D, there is `RalHom_O(F,D)^{hG}≅RalHom_O(F_{hG},D)`, with the contragredient action on Hom. No order-of-G invertibility is assumed. (Z Lemmas 4.4.11 and 4.4.15, pp. 68–69; Z line 3288.)

One proof route is as follows. Use coherence of the site map and its finite cohomological dimension to commute R t_* with sequential homotopy colimits, including unbounded bar complexes. Use preservation of homotopy limits for invariants and finite-free bar terms for both comparisons. Apply tensor–Hom adjunction to the bar resolution and almostify; central scalar flatness gives the almost comparison.

The orbit comparison needs the finite-cohomological-dimension input, not just the existence of a right derived pushforward.

**Checks.**

- For G=1, both comparison maps are identities.
- For G=C_p acting trivially on O_C/p, the invariant complex has H¹=O_C/p; pushforward does not erase this term.
- For S₃, (gh)⁻¹=h⁻¹g⁻¹, so inversion reverses multiplication in the right-action conversion; using g instead would reverse the action law incorrectly.

*Needs:* §4.4; §0.4; EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom); ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients).

### 4.6 Almost local duality descends along good quotients

For a good quotient f:𝔛′→𝔛 put B=R f₀_*K_𝔛′ with its derived G-action. Restriction gives `K_𝔛≅B^{hG}`, while trace gives `B_{hG}≅K_𝔛`. If β_𝔛′ is perfect, then β_𝔛 is perfect. These two isomorphisms come from torsor Shapiro descent, not a norm isomorphism for arbitrary G-modules. (Z Constructions 4.4.16–4.4.18 and Lemmas 4.4.19, 4.4.21–4.4.23, pp. 70–74; Z line 3392.)

One proof route is as follows. On a split generic torsor the coefficient pushforward is induced; apply Shapiro and commute t* with derived invariants/orbits to identify restriction and trace. Use the cup trace square and truncation bounds to lift the comparison needed for the duality morphism into the equivariant category, as in Lemmas 4.4.21–4.4.22. Apply almost proper duality and the Hom/invariants–orbits adjunction; substitute the two torsor isomorphisms to obtain 𝒟_𝔛. Do not assume a G-equivariant action on the entire pushed-forward dualizing complex.

For a split torsor with |G|=p, the trace and restriction descent still work despite Tr(1)=0.

**Checks.**

- On the split C_p torsor, invariants are the diagonal copy M and coinvariants are M via each component generator.
- The unit trace is p=0 modulo p, but the class of one component has trace 1; this proves the descent identification is not the norm on a trivial module.
- For G=S₃, the invariant regular sum has six terms and the coinvariant class of one term maps to 1 under trace.

*Needs:* §4.3; §4.5; §4.1; §2.8; §2.9; §0.3.

### 4.7 Local almost Poincaré duality

For every nice admissible formal O_C-model of pure dimension d, the Faltings pairing β_𝔛 is perfect: `K_𝔛≅RalHom_{O_𝔛₀ᵃ}(K_𝔛,ω•_{𝔛₀}ᵃ(−d))[−2d]`. (Z Theorem 4.4.1, Theorem 4.4.24 = Theorem 4.1.2, pp. 49, 66–67, 74–75; Z line 3587.)

One proof route is as follows. Use local altered uniformization the valuation-model contract: after a finite zigzag of Zariski covers and rig-isomorphisms, obtain finite good quotients 𝔛′_i/G_i=𝔛_i and rig-isomorphisms from polystable models to 𝔛′_i. Over algebraically closed C the finite field-extension part is unnecessary. Apply polystable duality and descend through rig-isomorphisms and good quotients. Reverse the zigzag, using étale/Zariski locality and rig-isomorphism descent; conclude on 𝔛. the valuation-model contract is supplied by the valuation-model contract.

The theorem is not claimed for arbitrary smooth-generic models with nonreduced residue special fibre.

**Checks.**

- For the point, the duality adjoint is identity.
- The nodal model uv=ϖ meets the theorem: 𝔛̄ has two reduced branches and the generic fibre is smooth.
- The model t²=ϖ has a nonzero nilpotent residue class t and fails niceness, even though its characteristic-zero generic fibre is étale.

*Needs:* §4.1; §3.10; §4.2; §4.6; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; §2.9.

### Examples

For a split C_p-torsor the unit trace is p, hence zero modulo p; the trace of a single component is 1. Shapiro identifies the induced module’s invariants and coinvariants with the coefficient module even in this case. A trivial C_p-module instead has nonzero H¹ in characteristic p. (Z Lemma 4.4.19, pp.70–71, Z line 3392.)

### Dependencies

Use §0.3, §2.9 and §3.10, valuation models from AdicSpacesPartIII R2, ArithmeticGaloisDuality §§D7.1–D7.3, EnhancedDerivedSheaves §§0.1–0.4, and ClassicalAdicEtaleCohomology §§1.1–1.4. The wild descent route uses bar resolutions and induced torsors for arbitrary finite groups.

## Layer 5: Global étale Poincaré duality

### 5.1 Global almost trace

For X/C smooth proper pure of dimension d, choose a proper nice formal model 𝔛 and let q₀:𝔛₀→Spec O_C/p. Define `Tr_X:RΓ(X,O_X^{+a}/p)→O_Cᵃ/p(−d)[−2d]` by RΓ of Tr_F followed by the almost coherent proper-duality counit R `q₀_*ω•_{𝔛₀}ᵃ→O_Cᵃ/p`. The result is independent of the proper nice model. (Z Definitions 5.2.1, 5.2.3 and Lemma 5.2.2, pp. 75–76; Z line 3640.)

The API includes the following facts.

- Every proper nice model computes the same Tr_X.
- For finitely many disjoint proper pure-d components, Tr_X is the sum of the component traces.
- Cup followed by Tr_X gives a derived O_Cᵃ/p pairing of `RΓ(X,O_X^{+a}/p)` with itself into O_Cᵃ/p(−d)[−2d].

One proof route is as follows. Use the valuation-model contract’s reduced-model theorem and properness comparison to choose a proper nice model. Compose the two counits with the cohomological degree shift. Compare any two choices on a common dominating nice model; use the rig-isomorphism trace square and transitivity of coherent proper traces.

The target is shifted by −2d; Z Definition 5.2.1 has the opposite sign in one displayed target.

**Checks.**

- For X=Spa C the trace is the identity on O_Cᵃ/p. All positive cohomology vanishes.
- For two points it is (a,b)↦a+b, not the average. At p=2 the trace of (1,1) is 0.
- For a proper smooth curve it induces `H²(X,O_X^{+a}/p)→O_Cᵃ/p(−1)`; a target shift +2 cannot induce this map. A shift +2 instead places the coefficient in degree −2.

*Needs:* §4.7; §0.3; §2.9; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 5.2 Global almost Poincaré duality

For smooth proper pure-d X/C let `C_X=RΓ(X,O_X^{+a}/p)`. The global cup trace pairing induces `C_X≅RalHom_{O_Cᵃ/p}(C_X,O_Cᵃ/p)(−d)[−2d]`. For every i, Hⁱ(C_X) and `H^{2d−i}(C_X)` are almost finite free and their pairing into O_Cᵃ/p(−d) is almost perfect. (Z Theorem 5.2.4 = Theorem 5.1.1 and Theorem 5.2.5, pp. 74, 76–77; Z line 3677.)

One proof route is as follows. Push the local adjoint along q₀ and apply almost proper duality to identify the resulting Hom with the global dual. Identify the map using the definition of the global trace and cup/evaluation. For degreewise perfection first apply primitive comparison to obtain almost finite free cohomology; only then split or use the universal-coefficient comparison to extract the cohomological adjoints.

Degreewise perfection is justified by almost finite freeness, not by derived perfection alone over O_C/p.

**Checks.**

- On the point, both factors and their dual are O_Cᵃ/p in degree zero.
- For ℙ¹, the nonzero degrees are 0 and 2, with trace of the top twisted point class equal to 1.
- For two points the pairing is diag(1,1); the trace of the total unit is 2, which can vanish modulo p without degenerating the pairing.

*Needs:* §5.1; §4.7; §0.3; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts.

### 5.3 Top étale trace and almost detection

A map between finite-dimensional 𝔽_p-vector spaces is an isomorphism exactly when its scalar extension to O_Cᵃ/p is an almost isomorphism. If X/C is connected smooth proper pure-d, the analytic torsion trace t_X:H²ᵈ_ét(X,𝔽_p(d))→𝔽_p imported from ClassicalAdicEtaleCohomology §§8.4, 9.5 is an isomorphism. For disconnected X its trace is the sum over its finitely many components. (Z Theorem 5.4.2 and Lemma 5.4.3, pp. 78–79; Theorem 5.3.3, pp. 77–78; Z line 3805.)

One proof route is as follows. A nonzero finite 𝔽_p-vector space becomes a nonzero almost O_C/p-module: multiplication by a sufficiently small nonzero ε∈𝔪_C does not kill O_C/p. Apply this to kernel and cokernel. Use H⁰(X,𝔽_p)=𝔽_p and global almost duality to prove dim H²ᵈ(X,𝔽_p)=1. Use the nonzero/surjective geometric-fibre normalization of the supplied analytic trace to identify the one-dimensional top trace as an isomorphism. The trace surjectivity used here is part of ClassicalAdicEtaleCohomology §9.5. For disconnected X use the finite component decomposition and trace composition.

The Faltings trace need not be identified with the analytic trace by an equality of maps in this proof: one-dimensional top cohomology and a nonzero normalized analytic trace suffice.

**Checks.**

- The zero map 𝔽_p→𝔽_p has kernel and cokernel of dimension 1; each becomes O_Cᵃ/p, which is nonzero almostly.
- The identity of 𝔽_p has kernel and cokernel zero before and after scalar extension.
- For two points the top trace 𝔽_p²→𝔽_p has one-dimensional kernel, so connectedness is required for its being an isomorphism.

*Needs:* §5.2; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; ClassicalAdicEtaleCohomology §§7.1, 8.4, 9.5, 9.7 and 10.5; ClassicalAdicEtaleCohomology §9.5 (nonempty-fibre trace surjectivity).

### 5.4 Mod-p Poincaré duality

Let K be complete rank one of mixed characteristic (0,p), C its completed algebraic closure, and X/K smooth proper pure of dimension d. For every integer i the cup product and analytic trace give a perfect Gal(C/K)-equivariant pairing `Hⁱ_ét(X_C,𝔽_p)⊗H^{2d−i}_ét(X_C,𝔽_p(d))→𝔽_p`. All groups outside [0,2d] vanish. The trace on the top twisted group is an isomorphism when X is geometrically connected. (Z Theorem 5.4.4 = Theorems 1.1.4, 5.1.2, pp. 3, 75, 79–80; Z line 3831.)

One proof route is as follows. Reduce to C and a connected component; use the top trace isomorphism. Compare the cup adjoint to its almost scalar extension via primitive comparison and finite-dimensional Hom base change. Use degreewise almost duality and almost detection to prove bijectivity. Recover the Galois action from the canonical étale trace and functorial cup products; do not choose a Galois-trivialization of the Tate twist.

For P¹ the trace sends c₁(O(1)) to 1; in characteristic p the analogous p-torsion theorem is not asserted. The residue-characteristic equality ℓ=p is allowed because char K=0. In characteristic p and positive dimension the Artin–Schreier sequence instead forces H²ᵈ(X_C,𝔽_p)=0; Z Remark 1.1.5 is a scope test, not an extension of this theorem.

**Checks.**

- At d=0 on two geometric points, the pairing matrix is diag(1,1).
- On ℙ¹, H⁰=𝔽_p and H²(−,𝔽_p(1))=𝔽_p, and the two generators pair to 1.
- At i=2d+1 both paired groups are zero, using integer negative-degree cohomology; natural subtraction would incorrectly turn the second group into H⁰.
- In characteristic p, ℙ¹ has H²_ét(−,𝔽_p)=0 and H⁰=𝔽_p, so the mixed-characteristic theorem cannot be extended to that input.

*Needs:* §5.3; §5.2; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; ClassicalAdicEtaleCohomology §§7.1, 8.4, 9.5, 9.7 and 10.5; Mathlib `LinearMap.IsPerfPair`.

### 5.5 Poincaré duality for finite mod-p local systems

Let K, C and smooth proper pure-d X/K be as in §5.4. For every integer i and every finite-rank étale 𝔽_p-local system L on X, cup, evaluation L⊗L∨→𝔽_p and t_X give perfect Galois-equivariant pairings `Hⁱ(X_C,L)⊗H^{2d−i}(X_C,L∨(d))→𝔽_p`. Duals, twists and evaluation use the supplied local-system operations. (Z Theorem 5.4.5 and proof, pp. 80–81; Z line 3877.)

One proof route is as follows. Trivialize L on a finite Galois cover and pass to its Sylow-p intermediate cover, whose degree is prime to p. The imported fixed-vector theorem gives a filtration of the residual p-group representation with trivial line quotients. Apply constant duality and the five lemma along the filtration. Restriction followed by finite trace is multiplication by the prime-to-p degree, hence splits L off the pushforward. This uses the Tate evaluation and cohomological connecting-map signs.

The mod-p filtration argument includes p=2. A degree-p trace alone would not split the local system.

**Checks.**

- For the rank-zero system, both groups are zero and both adjoints are bijections 0→0.
- For the constant rank-r system at a point, evaluation has identity matrix of size r.
- Over F₂ a C₂ Jordan block has fixed line spanned by e₁ and trivial line quotient; degree-two trace gives 0, so the Sylow intermediate splitting uses odd degree.

*Needs:* §5.4; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; ClassicalAdicEtaleCohomology §§7.1, 8.4, 9.5, 9.7 and 10.5; ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients); Tau Ceti `Representation.exists_common_fixed_vector_of_isPGroup`; Mathlib `Representation.invariants`.

### 5.6 Finite p-power derived Poincaré duality

For X/K smooth proper pure-d as above and Λ_n=ℤ/pⁿ, n≥1, the canonical analytic trace induces a perfect Galois-equivariant derived pairing `RΓ_ét(X_C,Λ_n)⊗ᴸ_{Λ_n}RΓ_ét(X_C,Λ_n(d))→Λ_n[−2d]`. Equivalently the adjoint is `RΓ(X_C,Λ_n)≅RHom_{Λ_n}(RΓ(X_C,Λ_n(d)),Λ_n)[−2d]`. (Z Theorem 5.5.2, pp. 81–82 (cohomological degree shift and coefficient base change); Z line 3920.)

One proof route is as follows. Form the derived trace using amplitude ≤2d and the normalized top trace. Use perfectness to commute duality with Λ_n→𝔽_p base change; both cup and traces reduce compatibly. The reduced adjoint is the mod-p isomorphism, so derived Nakayama proves the Λ_n adjoint is an isomorphism. Base change is over Λ_n, not an accidental tensor over ℤ_p.

For P¹ the two nonzero cohomology degrees are 0 and 2; a trace target Λ_n in degree zero cannot give this derived duality.

**Checks.**

- For n=1 this recovers the mod-p derived pairing.
- On ℙ¹ with Λ=ℤ/p², the degrees 0 and 2 pair to 1 in the coefficient target shifted by −2.
- The reduction is tensor over Λ_n; ℤ/pⁿ derived-tensored over ℤ_p with 𝔽_p has an additional Tor class, whereas tensor over Λ_n of its unit has none.

*Needs:* PadicHodgeTheory §2.7; §5.4; ClassicalAdicEtaleCohomology §§7.1, 8.4, 9.5, 9.7 and 10.5; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8.

### 5.7 Integral and rational p-adic traces

For smooth proper pure-d X/K, compatible finite torsion traces define `t_{X,ℤ_p}:H²ᵈ(X_C,ℤ_p(d))→ℤ_p` by inverse limit, using the cohomology-limit identification. Define `t_{X,ℚ_p}=t_{X,ℤ_p}[1/p]`. Their derived trace maps have targets ℤ_p[−2d] and ℚ_p[−2d], respectively. ℚ_p cohomology here is pro-étale cohomology of Ẑ_p[1/p], and agrees with RΓ(X_C,ℤ_p)[1/p] for qcqs X. (Z Definitions 5.5.3, 5.5.5 and the paragraph between Theorems 5.5.4 and 5.5.6, p. 82; Z line 3964.)

The API includes the following facts.

- The integral derived trace reduces to the finite coefficient trace after derived scalar extension.
- The ℚ_p derived trace is obtained by inverting p in the ℤ_p trace.
- For a finite disjoint union of pure-d components, the trace is summation of component traces.

One proof route is as follows. Take inverse limits of the coefficient-compatible analytic top traces; use Mittag–Leffler to identify the source with the integral top group. Construct the derived trace by the top truncation and the cohomological bound. Invert p using coherence of the qcqs pro-étale topos and commutation with the relevant filtered colimit.

The construction keeps the continuous Galois action and the Tate line.

**Checks.**

- For Spa C the ℤ_p and ℚ_p traces are identities. Reduction sends 1 to 1 at every finite level.
- For P¹, t(c₁(O(1)))=1 for both coefficient rings. This fixes the positive point-class sign.
- Torsion in Hⁱ(X_C,ℤ_p) is permitted; passing to ℚ_p kills it, so the integral construction cannot be specified by choosing bases of all integral cohomology groups. For the module ℤ_p/p, localization is zero.

*Needs:* PadicHodgeTheory §2.7; §5.6; ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients); ArithmeticGaloisDuality §§D7.1–D7.3 and R02.1.2–R02.2.3.

### 5.8 Integral derived Poincaré duality

For smooth proper pure-d X/K, cup and `t_{X,ℤ_p}` induce a perfect Galois-equivariant pairing `RΓ(X_C,ℤ_p)⊗ᴸ_{ℤ_p}RΓ(X_C,ℤ_p(d))→ℤ_p[−2d]`. Both factors are perfect; the statement retains the integral derived dual and its possible Ext contributions. (Z Theorem 5.5.4, p. 82 (with target shift −2d); Z line 3968.)

One proof route is as follows. Form the integral adjoint on perfect derived p-complete complexes. Reduce modulo p and identify it with the mod-p adjoint through coefficient-compatible traces. Apply derived p-complete Nakayama; the two-sided pairing follows by symmetry.

The result is not a degreewise perfect pairing into ℤ_p on arbitrary torsion cohomology modules.

**Checks.**

- For ℙ¹, the free degrees 0 and 2 are paired into ℤ_p[−2].
- The complex [ℤ_p→pℤ_p] has H¹=ℤ_p/p and no free dual of that group, while derived Hom has Ext¹=ℤ_p/p.
- For the point, reduction of the integral pairing sends 1⊗1 to 1 at every p-power level.

*Needs:* §5.7; §5.6; PadicHodgeTheory §2.7; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8.

### 5.9 Rational p-adic Poincaré duality

For smooth proper pure-d X/K, cup and `t_{X,ℚ_p}` give a perfect Galois-equivariant derived pairing RΓ(X_C,ℚ_p)⊗ᴸRΓ(X_C,ℚ_p(d))→ℚ_p[−2d]. Consequently every degreewise pairing `Hⁱ(X_C,ℚ_p)⊗H^{2d−i}(X_C,ℚ_p(d))→ℚ_p` is perfect. (Z Theorem 5.5.6, pp. 82–83 (with target shift −2d); Z line 3979.)

One proof route is as follows. Invert p in the integral perfect-complex adjoint. Identify the rational trace and cohomology with the previously constructed rationalizations. Use finite-dimensional field duality to extract the degreewise perfect pairings.

Degrees i<0 and i>2d vanish; local coefficients beyond the finite 𝔽_p case are not asserted here.

**Checks.**

- For ℙ¹, the trace-normalized rational pairing has matrix (1) between degrees 0 and 2.
- The torsion group ℤ_p/p becomes zero after inverting p.
- At d=0 on two points the rational pairing is diag(1,1), not the rank-one form given by product of total sums.

*Needs:* §5.8; §5.7; Mathlib `LinearMap.IsPerfPair`.

### Examples

On ℙ¹_C, each of 𝔽_p, ℤ/pⁿ, ℤ_p and ℚ_p has one cohomology generator in degrees 0 and 2, the latter with twist −1; cup followed by twisted trace pairs them to 1. PadicHodgeTheory §2.7 supplies perfect proper cohomology also for singular proper X. A two-term free complex [ℤ_p→pℤ_p] has torsion H¹=ℤ_p/p, illustrating why the integral conclusion uses derived Hom. (Z §§5.4–5.5, pp.79–83, Z line 3831 and Z line 3968; PS Theorem 3.17, pp.19–20, PS line 766.)

### Dependencies

Use Layers 0–4; PadicHodgeTheory §2.7 for primitive comparison and perfect proper cohomology; ClassicalAdicEtaleCohomology §§8.4, 9.5 and 9.7 for the cohomological bound, projection formula and normalized analytic trace; DerivedModuleAlgebra §§1.1–1.8 for derived Nakayama and compatible perfect systems; and the finite p-group representation theorem from Tau Ceti.

## Layer 6: Relative almost finite presentation

### 6.1 Coherent integral reductions of disconnected bases

For a totally disconnected perfectoid S=Spa(R,R⁺) over C and a pseudouniformizer ϖ∈R⁺, R⁺/ϖ is coherent. Thus an almost finitely generated submodule of an almost finitely presented R⁺/ϖ-module is almost finitely presented. For the strictly totally disconnected bases used below, O_S⁺/p is flat over R⁺/p on the étale site, and étale sheaves identify with sheaves on |S|. (SW Proposition 10.5.2, Remarks 10.5.4–10.5.5, pp. 84–85; flatness input cited there as ECD Proposition 7.23; SW line 3365.)

One proof route is as follows. Use the imported component description by affinoid fields and profinite component space. Near any component a finitely generated ideal reduces to a principal ideal in a valuation-ring quotient with principal annihilator; extend the generators and relations over a clopen neighborhood and use compactness. Approximate almost modules by finite presentations to obtain almost coherence. Flatness and the strictly disconnected site identification are imported from DiamondsAndVStacks D1, not claimed for arbitrary perfectoid bases.

Adic constructibility and Zariski constructibility differ: the complement of a classical point of a closed disc need not be quasi-compact.

**Checks.**

- For S=Spa(C,O_C), a principal ideal (b) of O_C/p has annihilator (p/b) when b divides p, which is again principal.
- For two components the ring is (O_C/p)² and the ideal generated by (1,0) is a direct summand with one generator.
- The stalk of the unit sheaf at either component is O_C/p; the two components do not force equal ranks of an arbitrary module.

*Needs:* DiamondsAndVStacks §§D1.1–D1.6 and D1.9–D1.11; PerfectoidSpaces §§P0.1–P0.13 and P0.29 (almost modules and almost sheaves); PerfectoidSpaces §§P3.11–P3.22 (almost purity and almost acyclicity).

### 6.2 Relative strict containment

For affinoid U⊂V over an affinoid base S, U is strictly contained in V relative to S when every map Spa(K,O_K)→U over S whose projection extends to Spa(K,K⁺)→S, with K⁺ an open valuation subring, extends to a map Spa(K,K⁺)→V over S. The extended map is not required to land in U. For the factorization theorem U is a rational subset of V, and V maps to a relative ball through rational embeddings and finite étale maps. (SW Lemma 10.5.8, p. 88; SW line 3536.)

The API includes the following facts.

- If U is strictly contained in V over S and V is strictly contained in W over S, then U is strictly contained in W over S.
- The valuative extension property is preserved by base change when the affinoid fibre products in question exist.
- Proper smooth X/S admits the finite sequences of affinoid chart covers with this containment used in the relative Cartan–Serre argument.

One proof route is as follows. Express the lifting condition over valuation field pairs using the supplied adic morphisms. Use the relative valuative description to compare with compact containment on the smooth affinoid charts used in nested proper covers.

The larger target V in the extension is essential.

**Checks.**

- Over Spa C, the closed disc |T|≤|a| for 0<|a|<1 is strictly contained in the closed unit disc. At a rank-two specialization the primary value remains strictly less than 1.
- The empty subdomain satisfies the extension condition vacuously. There are zero source points to lift.
- The closed unit disc is not strictly contained in itself over Spa C: a rank-two boundary refinement can specialize outside that same rational domain in its ambient line. The primary Gauss value 1 can acquire a secondary value greater than 1.

*Needs:* AdicSpacesPartII Layers R0–R1 (affinoids, rational restrictions and morphism classes); DiamondsAndVStacks §§D1.1–D1.6 and D1.9–D1.11.

### 6.3 Finite presentation on relative smooth charts

Let S=Spa(R,R⁺) be a strictly totally disconnected perfectoid over C and let U=Spa(A,A⁺) map to the relative closed ball Bⁿ_S by a composite of rational embeddings and finite étale maps, with the integral structures used in SW. Then A⁺/p is a finitely presented R⁺/p-algebra. (SW Lemma 10.5.9 and proof, p. 89; SW line 3568.)

One proof route is as follows. Approximate the chart and finite étale/rational maps by finite-presentation rigid spaces over C, using the perfectoid limit theorem. Apply the Reduced Fibre input the valuation-model contract after a rig-étale cover at finite level; it splits over the strictly disconnected S. Geometrically reduced model fibres ensure that the power-bounded rings commute with these base changes; pass to the filtered colimit modulo p.

Finitely presented as an algebra does not mean finitely presented as a module; the next containment theorem adds that stronger conclusion only for a factorization.

**Checks.**

- For a zero-dimensional ball A⁺/p=R⁺/p, with zero algebra generators.
- For a one-dimensional ball it is (R⁺/p)[T], with one algebra generator and no finite module basis.
- At a field component, the split two-cover gives (R⁺/p)², a finitely presented algebra and module.

*Needs:* §6.1; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract; DiamondsAndVStacks §§D1.1–D1.6 and D1.9–D1.11; PerfectoidSpaces §§P5.9–P5.13.4 (finite-stage descent including affinoidness); PerfectoidSpaces §§P6.5–P6.7 and P6.15–P6.16 (pro-étale towers).

### 6.4 Finite presentation of restriction factorizations

In the preceding chart setting let U=Spa(A,A⁺)⊂V=Spa(B,B⁺) be rational and strictly contained relative to S. Then B⁺/p→A⁺/p factors through a finitely presented R⁺/p-module. No claim that the image itself is finitely presented is made. (SW Lemma 10.5.8 and proof, pp. 88–89; SW line 3536.)

One proof route is as follows. Work over a component valuation field and reduce to its residual valuation ring V=K⁺/K°°. The image algebra of B in A is flat finitely generated over V, hence finitely presented; strict containment supplies its valuative properness and therefore finiteness. Lift finitely many kernel generators, take powers killing their nilpotent images modulo p, and factor through a finite presented module algebra. Glue over clopens of the disconnected base. The valuation-ring finite-presentation and properness criterion are the valuation-properness and generic-smoothness contracts.

The factorization has a module-finite middle object although source and target chart algebras are usually not module-finite.

**Checks.**

- For a radius |a|<1 disc, T maps to aU; if aᴺ∈pO_C, then every monomial Tᵏ with k≥N maps to 0 modulo p.
- Taking N=2 and a²=p gives a middle module generated by 1,T.
- The unrestricted unit-disc identity cannot factor through a finite module: its reduction contains linearly independent 1,T,T²,… over O_C/p.

*Needs:* §6.2; §6.3; SchemeAndStackFoundations §§0.8–0.9 and the valuation-properness contract; AdicSpacesPartIII §§R2.2–R2.8 and the valuation-model contract.

### 6.5 Almost finite-presentation spectral-sequence factorization

Let `(E_i^{a,b}⇒M_i^{a+b})_{0≤i≤(N+1)3^{N+1}}` be upper-right-quadrant spectral sequences over R⁺/p with compatible transition maps. If for some fixed page r≥1 every successive page-r map factors through an almost finitely presented module, then `M_0^k→M_{(N+1)3^{N+1}}^k` factors through such a module for k≤N. If the endpoint map is the identity of M, this proves M almost finitely presented. (SW Lemma 10.5.6, Remark 10.5.7 and proof, pp. 86–88; SW line 3476.)

One proof route is as follows. A three-step transition at page r gives a factorization on kernels and then cokernels through almost finitely presented modules; use almost coherence for both. Iterate the three-step loss to reach the stable page in total degrees ≤N. Pass through the N+1 filtration steps by pullback–pushout extensions to factor the abutment map. An identity factorization makes M a retract of an almost finitely presented module; do not replace factorization by a claim about arbitrary images.

For N=0 the specified chain length is 3; a single arbitrary page-r image statement is a different and stronger assertion.

**Checks.**

- For N=0 the bound is 3 transitions; for N=1 it is 18; for N=2 it is 81.
- An identity M→F→M has composite 1, so M is the image of the idempotent F→M→F and is a retract.
- A zero map between infinitely generated modules factors through 0, although its source and target are not finitely presented; the claim concerns the map.

*Needs:* §6.1; EnhancedDerivedSheaves §0.3 and E2:towers.1; DerivedModuleAlgebra §S.1; PerfectoidSpaces §§P0.1–P0.13 and P0.29 (almost modules and almost sheaves).

### 6.6 Relative almost finite presentation of proper cohomology

Let f:X→Y be proper smooth between rigid spaces over C, L a finite 𝔽_p-local system, and S=Spa(R,R⁺)→Y a strictly totally disconnected quasi-pro-étale perfectoid. For every i≥0, `Hⁱ(X_S,L⊗O⁺_{X_S}/p)` is almost finitely presented over R⁺/p, for the pseudouniformizer almost convention of SW Proposition 10.5.2. (SW Proposition 10.5.10 and the argument preceding it, p. 89; proof strategy pp. 82–83; SW line 3594.)

One proof route is as follows. Choose enough nested affinoid covers with relative strict containment and good smooth coordinates; trivialize L on the finite étale charts. Compute local almost cohomology by toric perfectoid covers and Koszul complexes. The local restriction maps factor through almost finite presentations by the preceding chart theorem and the explicit toric cohomology estimates. Use the `(i+1)3^{i+1}` chain of spectral-sequence maps to factor the identity on Hⁱ through an almost finitely presented module. Retract closure proves the claim. The local proof compares the actual restriction cochains on each pair of nested charts and applies the factorization theorem before passing to the abutment.

Almost finite generation alone would not supply the continuity criterion needed for a local system.

**Checks.**

- For f=id and rank-r L, H⁰ is (R⁺/p)ʳ almostly and Hⁱ=0 for i>0.
- For a constant elliptic curve family and L=𝔽_p, the almost ranks are 1,2,1.
- At i=1 the spectral argument allows 18 transitions; one arbitrary image-finiteness assertion is insufficient.

*Needs:* §6.4; §6.5; §6.1; AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; PerfectoidSpaces §§P3.11–P3.22 (almost purity and almost acyclicity); PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts.

### 6.7 Local constancy from almost finite presentation

For proper smooth f:X→Y over C, finite 𝔽_p-local L and a strictly totally disconnected quasi-pro-étale affinoid S=Spa(R,R⁺)→Y, suppose M=Hⁱ(X_S,L⊗O⁺/p) is almost finitely presented. Then (Rⁱf_ét,*L)|S is a finite 𝔽_p-local system. This criterion uses the all-p quasi-pro-étale base-change branch, the relative primitive comparison, and the topology of the strictly disconnected base; it makes no arbitrary proper-base-change assertion in advance. (SW Lemma 10.5.3 and proof, pp. 84–86; ECD Corollary 16.10(ii) cited on p. 83; SW line 3397.)

One proof route is as follows. Use quasi-pro-étale base change to identify the pulled-back étale direct image, and flatness of O_S⁺/p to associate the underived module sheaf M. The elementary-divisor sequence of the fibre of M varies continuously in the sup norm, by almost finite presentation and valuation-ring elementary divisors. Primitive comparison makes each sequence consist of finitely many 1’s and then zeros; its rank is therefore locally constant. Extend a stalk basis to sections. Kernels and cokernels of the resulting map are almost finitely presented by almost coherence; their discrete elementary-divisor sequences vanish on a neighborhood. Detect the resulting 𝔽_p sheaf isomorphism by its field fibres, and descend along quasi-pro-étale covers. Prove the elementary-divisor continuity assertion in this criterion: finite presentations give uniform perturbation bounds on every finite truncation, and almost approximations bound the tail uniformly.

Use DiamondEtaleCohomology §C1.12 with the quasi-pro-étale base map; its separate prime-to-p alternative is unnecessary in this case.

**Checks.**

- For two base components, a module of ranks 1 and 2 gives elementary-divisor sequences (1,0,…) and (1,1,0,…), locally constant on each component.
- For a single fibre of rank r the sequence is r copies of 1 followed by zeroes; a sup-norm change less than 1/2 cannot change r.
- The zero coefficient system has sequence (0,0,…) and yields the zero finite local system.

*Needs:* §6.1; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; DiamondEtaleCohomology §§C1.7–C1.12, only the quasi-pro-étale all-p branch; DiamondsAndVStacks §§D1.1–D1.6 and D1.9–D1.11; PerfectoidSpaces §§P0.1–P0.13 and P0.29 (almost modules and almost sheaves).

### Examples

For the rational restriction T↦aU with a²=p, modulo p every monomial Tᵏ for k≥2 maps to zero. The restriction therefore factors through the module spanned by 1,T. The identity of the whole disc has infinitely many independent monomials modulo p and cannot do so. The supplied relative local-system theorem gives ranks 1,2,1 for a constant elliptic curve family and permits torsion in integral direct images. (SW Lemmas 10.5.8–10.5.9, pp.88–89, SW line 3536; Theorem 10.5.1 and integral paragraph, p.82, SW line 3295; HodgeTateAndCanonicalSubgroups §7.6.)

### Dependencies

Use DiamondsAndVStacks D1, PerfectoidSpaces P0/P3 and §§P5.9–P5.13.4, AdicSpacesPartIII R2 with reduced power-bounded base change, SchemeAndStackFoundations §§0.8–0.9 with valuation properness, DerivedModuleAlgebra §S.1, AInfCohomology §AI.1.7 and PadicHodgeTheory §2.7. The local-constancy criterion uses DiamondEtaleCohomology §C1.12 only for quasi-pro-étale base change. The branch is independent of the duality proof in Layer 5.

## Layer 7: Zariski-constructible proper base change

### 7.1 Zariski-constructible torsion complexes

For a rigid K-space in characteristic zero and Λ=ℤ/n, n>0, an étale Λ-sheaf is Zariski-constructible when on every affinoid open it is finite locally constant on each stratum of some finite stratification by Zariski-locally closed rigid subspaces. `D_zc^{(b)}(X,Λ)` consists of complexes whose cohomology is Zariski-constructible and which are bounded on every qcqs open. On qcqs X this is D_zcᵇ. This is distinct from Huber’s adic constructibility on Boolean combinations of qc opens. (BH Definition 3.1 and Warning 3.2, pp. 14–15; BH line 594.)

The API includes the following facts.

- On qcqs X, locally bounded Zariski-constructible complexes are globally bounded.
- Rigid pullback preserves Zariski-constructible cohomology and local boundedness.
- For a Zariski-locally closed stratum, extension by zero of a finite local system is Zariski-constructible.

One proof route is as follows. Use the supplied rigid Zariski closed/locally closed subspace operations. Define finite local constancy on strata using the supplied étale local-system category. Take the cohomological full derived subcategory and the locally bounded convention.

Global boundedness cannot be imposed on every non-quasi-compact proper-map problem.

**Checks.**

- A skyscraper finite sheaf at a classical point of a closed disc is Zariski-constructible; it need not be Huber-constructible because the complement is not qc. Its two Zariski strata are the point and its complement.
- Every finite constant sheaf is Zariski-constructible. There is one stratum.
- On a disjoint union of points, place Λ in degree −j on the j-th component: the object is locally bounded and Zariski-constructible but not globally bounded. There is no common lower cohomological bound.

*Needs:* ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients); AdicSpacesPartIIPartII RZ.0 (Zariski closed sets and dimension); EnhancedDerivedSheaves §§0.1–0.4, E1.1–E1.5 (ringed-site enhancement and tensor–Hom).

### 7.2 Affinoid constructible algebraization

Let K have characteristic zero, A be a K-affinoid algebra, S_alg=Spec A and S=Spa(A,A°). For a finite-type S_alg-scheme Z and n≥1, analytification induces a fully faithful t-exact functor D_cᵇ(ℤ,ℤ/n)→D_zcᵇ(Z_an,ℤ/n); it is an equivalence when Z is proper over S_alg, in particular for Z=S_alg. For every finite-type map h:Z→W of finite-type S_alg-schemes, (Rh_*F)_an≅Rh_an,*F_an for F∈D_cᵇ(ℤ,ℤ/n), without a properness hypothesis on h. It also identifies the lisse subcategories for every such Z. (BH Proposition 3.7 and proof, pp. 15–16; BH line 672.)

One proof route follows Han Propositions 4.3–4.7. Affinoid excellence and scheme constructibility on quasi-excellent bases permit the reduction by algebraic compactification, finite-cover coefficient generators and a resolution preserving the regular open. The comparison on regular open immersions follows from the regular-boundary purity theorem on its finite-coefficient characteristic-zero domain. The unit F→Rμ_*μ*F is an isomorphism because its restriction to every étale test scheme is the cohomology comparison; adjunction then proves full faithfulness. For proper Z, induct over a normal lisse open. Extend its finite étale covers to finite normal branched covers, apply relative rigid GAGA, and restrict back. Finite descent and a normal proper compactification identify the lisse subcategories on nonproper Z. (Han Theorems 1.8, 1.10(ii), pp.5–6, Han line 196 and Han line 226; §§4.2–4.3, pp.19–23, Han line 817 and Han line 946; BH Proposition 3.7 proof, p.16, BH line 684.)

For Z=Spec A the equivalence identifies scheme constructibility with rigid Zariski-constructibility. It does not identify it with Huber constructibility.

**Checks.**

- For Z=Spec A, the proper structural identity gives an equivalence of the two constructible categories.
- A skyscraper at a classical point algebraizes to the corresponding closed-point sheaf; its complement need not be an adic constructible stratum.
- For Z=Spec K and the constant (ℤ/n)ʳ sheaf, analytification preserves the finite coefficient module (ℤ/n)ʳ in degree zero.

*Needs:* RigidAnalyticGeometry §§1.1–1.2 (affinoid excellence); ResolutionOfSingularitiesCharacteristicZero §§7.5, 7.8 (scheme resolution over an affinoid algebra); the quasi-excellent-direct-images contract; ClassicalAdicEtaleCohomology §11.1 (the regular-boundary purity comparison); §7.1; ClassicalAdicEtaleCohomology §§8.2 and 11.1 (proper and field-base algebraic comparison); AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces); AdicSpacesPartIIPartII RZ.1 (normalization and Riemann extension), with the branched-cover contract; EtaleCohomologyFoundations §§G.1–G.3 and F.0 (scheme compactification and constructible coefficients).

### 7.3 Locality and finite-cover generators

Zariski-constructibility of finite torsion étale sheaves in characteristic-zero rigid geometry is étale local. On a qcqs X, D_zcᵇ(X,ℤ/n) is the thick triangulated subcategory generated by finite direct images f_*M of finite constant sheaves on finite Y→X. The affinoid algebraization input identifies these categories with constructible sheaves on Spec A when X=Spa A. (BH Theorem 3.5, Proposition 3.6, Proposition 3.7 and proof of Theorem 3.5, pp. 15–17; BH line 647.)

One proof route is as follows. Use the affine constructible comparison the branched-cover contract and §7.2 and the maximal lisse open; flat restriction maps preserve it, so the complement glues to a coherent closed subset. Induct on dimension to prove locality, using descent of coherent ideals. For generators, pass to a prime-to-ℓ finite étale cover on a dense lisse stratum, with unipotent residual monodromy, and extend it to a finite branched cover; use localization and direct summands. the branched-cover contract and §7.2 includes the branched-cover extension theorem. The unipotent filtration is a finite-group representation argument; reuse Tau Ceti’s fixed-vector results, or the pinned Mathlib fixed-point baseline, without invoking geometric Poincaré duality.

Use the affinoid comparison owned by this Part II; its nonproper comparison and branched-cover input remain the branched-cover contract and §7.2.

**Checks.**

- At a point, a finite module is a finite constant sheaf and is one generator.
- For a point embedded in a disc, its skyscraper is the direct image of the unit under that finite closed immersion.
- A C₂ Jordan block over F₂ has a trivial line and trivial quotient, so it lies in the generated thick category without using geometric duality.

*Needs:* §7.2; §7.1; AdicSpacesPartIIPartII RZ.1 (normalization and Riemann extension), with the branched-cover contract; AdicSpacesPartIII §§R3.1–R3.8 (coherent sheaves, GAGA, differentials and finite traces); Mathlib `Representation.invariants`; Tau Ceti `Representation.exists_common_fixed_vector_of_isPGroup`.

### 7.4 Zariski-constructible proper pushforward

For any proper morphism f:X→Y of rigid spaces over a characteristic-zero complete nonarchimedean field K, and any n>0, R f_* carries `D_zc^{(b)}(X,ℤ/n)` into `D_zc^{(b)}(Y,ℤ/n)`. If source and target are qcqs, it carries bounded objects to bounded objects. The theorem allows residue characteristic dividing n. (BH Theorem 3.10 and proof, pp. 17–18; BH line 764.)

One proof route is as follows. Work over an affinoid target, use finite-cover generators, and reduce to the constant sheaf on a proper space. Use rigid resolution and proper cohomological descent. For a cosimplicial object in D≥0, Hⁱ of its totalization depends on the truncation through cosimplicial degree i+1; thus finitely many smooth hypercover terms suffice for each i≥0. Use proper generic smoothness the valuation-properness and generic-smoothness contracts to find a dense Zariski open of the reduced target over which those proper maps are smooth. For ℓ=p apply HodgeTateAndCanonicalSubgroups §7.6; for ℓ≠p use ClassicalAdicEtaleCohomology §9.5’s smooth proper prime-to-p local constancy. Induct over the closed complement and use weak geometric base change plus the uniform local cohomological bound. This proof does not use the arbitrary base change theorem it precedes.

Over a non-qc target, neither global fibre dimension bounds nor one global cohomological interval are assumed.

**Checks.**

- For f=id the image complex is the original one.
- For the finite inclusion of a classical point in a disc, R⁰f_*Λ is its Zariski-constructible skyscraper and Rⁱ=0 for i>0.
- For a nodal proper curve, smooth normalization and finitely many point strata have dimensions 1 and 0; a fixed cohomological truncation uses finitely many hypercover degrees.

*Needs:* §7.3; HodgeTateAndCanonicalSubgroups §7.6; AdicSpacesPartIIPartII RZ.5 (rigid resolution); ClassicalAdicEtaleCohomology §§7.1, 8.4, 9.5, 9.7 and 10.5; EnhancedDerivedSheaves §0.3 and E2:towers.1; DerivedModuleAlgebra §S.1; AdicSpacesPartIIPartII RZ.2 and RZ.4, with the generic-smoothness contract; the proper-hyperdescent contract; the generic-smoothness contract.

### 7.5 Proper cohomology under algebraically closed field extension

For C′/C/ℚ_p an extension of complete algebraically closed nonarchimedean fields, proper rigid X/C and F∈D_zcᵇ(X,ℤ/pᵃ), the canonical map `RΓ(X,F)→RΓ(X_{C′},F_{C′})` is an isomorphism. The field extension need not have transcendence dimension zero. (BH Lemma 3.25 and proof, p. 25; BH line 1102.)

One proof route is as follows. Use finite generators and coefficient induction to reduce to 𝔽_p on a proper finite cover. Use the singular proper primitive comparison the nearby-cycle and scalar-extension contracts on both fields. On a local toric perfectoid cover, compute O⁺/p cohomology by a finite Koszul complex; the scalar-extended integral perfectoid ring and the power-bounded base-change ring are almost isomorphic. Glue the almost local comparison, then detect the finite 𝔽_p cohomology map by almost scalar extension. The local toric covering and singular comparison beyond the smooth case are part of the nearby-cycle and scalar-extension contracts.

This field-extension step supplies the missing all-p comparison at rank-one geometric points in arbitrary proper base change.

**Checks.**

- For a geometric point the map is Λ→Λ, sending 1 to 1.
- For ℙ¹, base extension preserves the two ranks 1 in degrees 0 and 2 and the point trace 1.
- For Λ=ℤ/p², reduction to 𝔽_p preserves the two point generators; the extension may have positive transcendence dimension.

*Needs:* §7.3; PadicHodgeTheory §§2.1, 2.4, 2.7 and 7.2, with the nearby-cycle and scalar-extension contracts; PerfectoidSpaces §§P3.11–P3.22 (almost purity and almost acyclicity); AInfCohomology §§AI.1.1–AI.1.7 (décalage, products and continuous Koszul cochains); DerivedModuleAlgebra §§1.1–1.8; §0.4; PadicHodgeTheory §2.7.

### 7.6 Proper base change with all torsion coefficients

In a cartesian square of rigid spaces over a complete characteristic-zero nonarchimedean field, with f:X→Y proper and arbitrary g:Y′→Y, let f′:X′→Y′ and g′:X′→X be the base changes. For every n>0 and `F∈D_zc^{(b)}(X,ℤ/n)`, the canonical exchange map g^*R f_*F→R f′_*g′^*F is an isomorphism. No prime-to-residue-characteristic restriction is imposed. (BH Theorem 3.15 and proof, pp. 19–20; BH line 864.)

One proof route is as follows. Construct the exchange natural transformation from the site adjunctions, respecting composition. Both sides are Zariski-constructible by proper pushforward and hence overconvergent; use enough rank-one geometric points and weak geometric proper base change to reduce the map to field-valued proper cohomology. For residue-prime-to-n coefficients apply the inherited Huber theorem; for p-power coefficients use the algebraically closed field-extension comparison. Use coefficient decomposition and local boundedness to conclude for all n and the stated derived range.

The result is scoped to Zariski-constructible locally bounded complexes; it is not an arbitrary-sheaf p-torsion six-functor theorem.

**Checks.**

- For g=id the exchange is identity on Rf_*F.
- For the structural map of ℙ¹ and n=p², a geometric extension preserves H⁰=Λ and H²=Λ(−1).
- For n=1 the coefficient category is zero and the exchange is 0→0.
- For an empty proper source, both direct images are zero for every base map.

*Needs:* §7.4; §7.5; §7.1; ClassicalAdicEtaleCohomology §§7.1, 8.4, 9.5, 9.7 and 10.5; ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients).

### 7.7 Proper constant cohomology sheaves on smooth rigid bases

Let K be complete algebraically closed over ℚ_p, g:Z→Spa K proper rigid, n≥1 and m≥0. On the big étale site of smooth rigid K-spaces, Rᵐg_ét,*(ℤ/n) is canonically the constant sheaf associated to Hᵐ_ét(ℤ,ℤ/n). Equivalently for a smooth Y/K the proper base-change sheaf on Y is the pullback of that finite module. This is a statement about sheaves, not equality of Hᵐ(Z×Y,ℤ/n) with Hᵐ(ℤ,ℤ/n) for all Y. (H §2.6, Proposition 2.18 and proof, p. 279; H, published locator; uncertified.)

One proof route is as follows. Apply all-torsion proper base change to Z×Y→Y for every smooth rigid Y. Over algebraically closed K the small étale sheaf Rᵐg_*(ℤ/n) on Spa K is the constant module Hᵐ(ℤ,ℤ/n). Pull back to Y and glue naturally in Y on the big étale site. Without algebraic closedness the correct base sheaf carries its Galois action.

For Y with its own nonzero higher cohomology, the product cohomology need not be constant; only the higher direct-image sheaf is being identified.

**Checks.**

- For Z a point, the degree-zero sheaf is Λ and every positive direct-image sheaf is zero.
- For Z two points, the degree-zero sheaf is constant Λ².
- For Z a point and Y=ℙ¹, the sheaf in degree 2 is zero although H²(Z×Y,Λ)=Λ(−1); sheaf constancy does not assert equality of product cohomology.

*Needs:* §7.6; §7.4; ClassicalAdicEtaleCohomology §§1.1–1.4 (étale and pro-étale coefficients).

### Examples

The finite inclusion of a classical point in a disc pushes the unit to a Zariski-constructible skyscraper with no positive direct images. For a proper point Z and Y=ℙ¹, the big smooth-site sheaf in degree 2 is zero although H²(Z×Y,Λ)=Λ(−1); the big-site assertion is sheafification of cohomology, not an equality of all product groups. (BH Definition 3.1 and Theorem 3.10, pp.14,17–18, BH line 594 and BH line 764; H Proposition 2.18, p.279, uncertified.)

### Dependencies

Use Layer 0 and Layer 6’s module comparisons; HodgeTateAndCanonicalSubgroups §7.6 for proper smooth local systems; AdicSpacesPartIIPartII RZ.0–RZ.5 with branched covers and proper generic smoothness; ClassicalAdicEtaleCohomology §§8.2, 8.4, 10.5 and 11.1; EtaleCohomologyFoundations §§G.1–G.3; PadicHodgeTheory §2.7 with integral toric field extension; and EnhancedDerivedSheaves §§0.3–0.4 with proper hyperdescent. Affinoid algebraization precedes the generator theorem, and proper pushforward precedes arbitrary-base exchange.

## Downstream consumers

Diamond étale cohomology and six-operation applications consume the classical all-torsion exchange map on its Zariski-constructible domain. Geometric p-adic applications consume Galois-equivariant smooth proper duality with its Tate twist, while relative applications consume the almost finite-presentation estimates alongside the supplied local-system theorem. Simpson correspondence applications use the constant cohomology sheaf on the big smooth étale site. Each consumer keeps the properness, smoothness, boundedness and coefficient conditions of the particular interface.

## Worked examples

On a connected smooth proper curve over C, the mod-p cup pairing is between degrees 0 and 2 and between degree 1 and itself, with target 𝔽_p after twisting the second factor by (1). On ℙ¹ the middle group is zero and the endpoint generators pair to 1. For an elliptic curve the dimensions are 1,2,1, and a symplectic basis e,f of H¹ has e∪f equal to the point generator and f∪e its negative; in characteristic two the alternating form still has zero diagonal. The almost local curve calculation instead pairs degrees 0 and 1 on the formal model, because coherent duality contributes ω•₀=ω₀[1]. Proper pushforward adds the other dimension and produces the global degree 2. (Z Theorems 4.3.16–4.3.17 and 5.4.4, pp.64–66,79–80, Z line 3106 and Z line 3831.)

For a proper nodal rigid curve, resolve the node and include the point fibres in the proper hypercover. Each fixed total cohomological degree uses only finitely many levels. The output is Zariski-constructible after pushforward to an affinoid base, even for coefficients ℤ/pⁿ. In the generic-smoothness step the dense open lies in that reduced base; deleting only the source's singular locus would not make the restricted map a family over an open base. (BH Theorems 2.29 and 3.10, pp.14,17–18, BH line 567 and BH line 764.)

## References

All statements are expressed in the roadmap's own words. Line locators refer to the source-service extraction for the specified version. The published numbering is used only for H.

- **Z.** Bogdan Zavyalov, *Mod-p Poincaré Duality in p-adic analytic geometry*, [arXiv:2111.01830v3](https://arxiv.org/abs/2111.01830v3), 21 February 2024. Sections 2–5 and Appendices C–D, preprint pp.10–83,92–99. The normalization and shift conventions in §§2.3, 2.5, 3.3 and 5.6–5.9 determine the statements where displayed formulas in the source disagree.
- **AC.** Bogdan Zavyalov, *Almost coherent modules and almost coherent sheaves*, [arXiv:2110.10773v3](https://arxiv.org/abs/2110.10773v3), 28 August 2022. Sections 4.5–4.9,5.1,5.5,6.13, pp.94–118,129–131,170–172. Internal Hom uses first argument bounded above and second bounded below; proper direct image goes to the target scheme.
- **SW.** Peter Scholze and Jared Weinstein, *Berkeley lectures on p-adic geometry*, [authors’ 27 March 2020 text](https://people.mpim-bonn.mpg.de/scholze/Berkeley.pdf), §10.5, printed pp.82–89. Remark 10.5.7 distinguishes factorization from finite presentation of an image.
- **BH.** Bhargav Bhatt and David Hansen, *The six functors for Zariski-constructible sheaves in rigid geometry*, [arXiv:2101.09759v2](https://arxiv.org/abs/2101.09759v2), 22 September 2021, §§2.3,3.1–3.3,3.5, pp.11–20,25. In the proper-pushforward proof the dense open is in the reduced target.
- **H.** Ben Heuer, *A p-adic Simpson correspondence for smooth proper rigid varieties*, [Inventiones Mathematicae 240 (2025), 261–312](https://doi.org/10.1007/s00222-025-01321-4), §2.6, Proposition 2.18, p.279. Uncertified: cited by its published locator.
- **U.** Bogdan Zavyalov, *Altered Local Uniformization Of Rigid-Analytic Spaces*, [arXiv:2102.04752v2](https://arxiv.org/abs/2102.04752v2), Theorems 1.3–1.4, pp.4–5. The precise reduced-model form used in §4.7 is Z Theorem 4.4.1, pp.66–67, Z line 3188.
- **PS.** Peter Scholze, *Perfectoid spaces: a survey*, [arXiv:1303.5948v1](https://arxiv.org/abs/1303.5948v1), §3.2, Theorem 3.17, pp.19–20, PS line 766.
- **Han.** David Hansen, *Vanishing and comparison theorems in rigid analytic geometry*, [institutional preprint of 25 February 2019](https://pure.mpg.de/rest/items/item_3214152_2/component/file_3282970/content), Theorems 1.6,1.8,1.10(ii), pp.4–6, Han line 134, Han line 196 and Han line 226; §4, pp.18–24. Published in Compositio Mathematica 156 (2020), 299–324, DOI 10.1112/S0010437X19007371. The 2017 arXiv version has different statements and numbering.
