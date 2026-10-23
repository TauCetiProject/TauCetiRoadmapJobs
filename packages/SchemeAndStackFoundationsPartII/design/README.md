# Scheme, stack, cohomology and intersection foundations, Part II

Flat cohomology with finite locally free coefficients over animated rings

This roadmap extends **SchemeAndStackFoundations**, principally SF.0–SF.2 and SF.4. It supplies the general cohomological interfaces for finite locally free commutative groups: deformation, continuity, excision, faithfully flat hyperdescent, henselian invariance, algebraization and adic descent with supports. It also proves the affine and ample-line-bundle Brauer comparison needed for henselian H² lifting. The purity theorems, the perfectoid Dieudonné formula and the mixed-characteristic birational applications have their own owners.

The specification is the mathematical text below. Proposed declaration names indicate the intended interfaces; they do not assert that the declarations have been implemented. The companion Suggested file illustrates only statements expressible using carriers already available at the library pins.

## Conventions and endpoints

Rings are commutative and unital, including the zero ring. A finite ideal means a finitely generated ideal. Unless a statement changes the base, R is an **ordinary** ring and G is an **ordinary** affine commutative R-group. The principal coefficients are finite locally free G, and some preliminary theorems also allow smooth affine G. We evaluate those groups on animated R-algebras A. No theorem silently introduces a finite-flat-group theory over an arbitrary animated base.

We use cohomological indexing in D(Z): π_i corresponds to H^(−i). An animated module is connective, so occupies cohomological degrees ≤0. A derived fixed-point expression for V is **fib(V−1)** in D(Z); the ordinary fixed subgroup is only its H⁰. Limits of cohomology complexes are derived limits, including hypercover totalizations. The support convention is the fibre of restriction to the complementary open. For animated A, its topological spectrum means Spec π₀A, while all its algebraic tensor products retain higher homotopy.

Choose actual representatives for finite tuples of π₀-elements when forming derived Koszul quotients. All comparisons are invariant under the resulting equivalences; there is no chosen canonical map π₀A→A. Derived completion, animated rings, cotangent complexes and their module categories come from the owners listed below. On an ordinary ring, A/^La is the cone of multiplication by a on the underlying module; it need not equal A/(a).

A henselian pair means the native HenselianRing convention: I⊂Jac(R) and simple monic roots lift. Locality, Noetherianity and completeness are separate hypotheses. A nonunital henselian ring uses the genuine Dorroh unitalization Z⊕I, with multiplication (m,x)(n,y)=(mn,my+nx+xy).

The three Brauer objects retain distinct names: Br_Az(X), the parent’s Azumaya Morita classes; Br′(X)=H²_et(X,G_m)_tors; and ambient H²_et(X,G_m). The natural class map is compared with Br′ only under the stated affine or ample-line-bundle hypotheses. Kummer exactness with μ_n uses the fppf topology for every n≥1, including n divisible by residue characteristic.

The end results assert:

- RΓ(A,G) has fppf and fpqc hyperdescent and converges along the Postnikov tower.
- Square-zero deformation is controlled by e*L_(G/R), with an untruncated D(Z) obstruction triangle for cohomology.
- Perfect characteristic-p cohomology is a Dieudonné V−1 fibre, globally on perfect schemes and with supports.
- The prime-adic continuity formula holds for p-primary G over p-henselian π₀A, even when A is not complete.
- Excision holds under the derived residue condition, and local cohomology is invariant under Noetherian local completion.
- Complete animated rings satisfy the finite-ideal continuity formula. Henselian pairs preserve H^i for i≥2 and give surjectivity for i=1.
- Adically faithfully flat hypercovers descend **supported** cohomology with no completeness assumption; completeness of every term also gives full and punctured cohomology descent.

The order matters. Classical étale-neighborhood support excision precedes prime continuity; prime continuity precedes general excision. The independent henselian H² lemma precedes restricted complete continuity, which precedes complete descent, which precedes general complete continuity. General henselian invariance follows from the complete theorem by approximation. These orders prevent either of the apparent continuity/excision cycles.

## Imported mathematical interfaces

The library baseline is Mathlib 082e2d37e8b0463410cdb532e111cd43d5a66174 and Tau Ceti f790474821cf4256814db967cb154e7af3d0c369. Native Algebra.FinitePresentation and Module.FaithfullyFlat supply the ordinary predicates. Native scheme fppfTopology and fpqcTopology and TauCeti.CommAlgCat.fppfTopology fix the classical-site comparisons. The native finite-locally-free commutative affine group category and its cartierDual supply the Bégueri dual; HenselianRing and IsAzumaya fix the pair and affine-algebra conventions.

| Owner | Interface consumed here |
| --- | --- |
| SchemeAndStackFoundations SF.0 | Henselian pairs and henselization, affine-transition limits, Noetherian approximation, Popescu approximation, and Witt schemes. |
| SchemeAndStackFoundations SF.1 | Torsors, stack and gerbe module descent, representability and smooth affine group adapters. |
| SchemeAndStackFoundations SF.2 | Ordinary cohomology and comparison morphisms, smooth fppf–étale comparison, the existing Br_Az and Br′ definitions, Kummer, and Gabber affine proper base change. |
| EnhancedDerivedSheaves E1–E3, E5:animation, E5:cotangent-export | Stable derived objects, hypercovers, tower Milnor, animation and its universal property, perfect characteristic-p tensors, animated modules and cotangent calculus. |
| DerivedDeRhamCohomology DD.1 | Koszul towers, module and ring derived completion, derived Nakayama and completion exchanges. |
| PrismaticCohomologyPartII PD.6/perfect-base-classification | Exact covariant crystalline Dieudonné classification with base change, finite projective dimension and its F,V normalization. |
| ArcTopologyAndDescent AT.6, AT.8, AT.11, AT.12 | Torsion étale arc hyperdescent, formal glueing, complete étale hyperdescent, valuation-product covers and perfectoid structural hyperdescent. |
| PerfectoidQuotients Q0:integral-algebra | Integral perfectoid rings, their compatible-root annihilator identity, reducedness and completion properties. |
| ReductiveGroupsPartII RG2.0a | Affine Weil restriction along finite locally free maps and its arbitrary base change. |
| SchemeKTheoryOperations S.2 | Projective-module rank, cancellation and stabilization inputs for affine twisted patching. |
| PotentialModularityAndCompatibleSystems R23.1 | Incomplete Skolem-data theorem over Z, used for the arithmetic avoidance step in ample twisted generation. |
| TauCetiRoadmap AlgebraicVectorBundles L0A–L0C | Existing untwisted module tensor, dual, Hom and rank interfaces; the gerbe adapter consumes these directly. |

In the crystalline normalization, M(Z/p^n) has F=pσ and V=σ⁻¹, while M(μ_(p^n)) has F=σ and V=pσ⁻¹. Those are imported facts, not new definitions in this roadmap. Similarly, ordinary scheme Brauer groups and ordinary derived completion are imported objects.

The following supplier interfaces specify the precise strength used below. Their stable owner is given so that an implementation has a single source for each prerequisite.

**EnhancedDerivedSheaves:E5:animation — animation-composition.** For 1-sifted-colimit-preserving functors F:C→D and H:D→E between cocomplete categories generated by strongly finitely presented objects, construct Ani(H)∘Ani(F)→Ani(H∘F), an equivalence if F(C^sfp)⊂Ind(D^sfp) or Ani(H)(F(C^sfp)) is discrete. In particular the forgetful animated-ring→animated-abelian-group→anima functors compose compatibly and preserve limits. This is a categorical supplier theorem, not an additional definition of animated rings. Source: CS24 Proposition 5.1.5 and Example 5.1.6, p.49.

**EnhancedDerivedSheaves:E5:cotangent-export — general-square-zero.** Supply the category of module-valued square-zero extensions A′=A×_(A⊕M[1])A for a derivation and the zero derivation, with M connective. Recover ordinary square-zero ideals; if B is (m+1)-truncated, B→τ≤m B is such an extension by π_(m+1)(B)[m+1]. Include the cotangent comparison τ≤(m+2)L_(τ≤m B/B)≃π_(m+1)(B)[m+2] in homotopy indexing. The existing trivial-extension node alone does not provide this classification. Source: CS24 §§5.1.9–5.1.10, pp.51–52.

**SchemeAndStackFoundations:SF.2 — finite-group-ext.** For a commutative finite locally free group X over any scheme, the fppf sheaf associated to T↦Ext¹_(T_fppf)(X_T,G_m) is zero. Use the group-extension Ext, so local splitting supplies the symmetric-cocycle quotient in the Bégueri resolution. Preserve arbitrary base and non-étale groups. Source: Bégueri Proposition 2.2.1, pp.25–27, invoking SGA3 XVII 6.2.2.

**SchemeAndStackFoundations:SF.1 — gerbe-module-descent.** Supply quasi-coherent and coherent module descent on a G_m- or μ_n-banded gerbe, including descent of inertia-weight-zero modules, finite locally free pushforward along a finite locally free cover, and coherent extension across a quasi-compact open of a Noetherian gerbe. Reuse current TauCetiRoadmap AlgebraicVectorBundles L0A–L0C for all untwisted tensor, dual, Hom and rank carriers; construct only the gerbe descent adapter. No new vector-bundle foundation is requested. Source: de Jong §2.1–2.15, pp.1–4; Lieblich §§3.1.1–3.1.3, pp.6–10.

**SchemeKTheoryOperations:S.2 — projective-rank-lemmas.** For K₀ of finite projective modules of constant rank over any commutative ring, the kernel of rank is a nil ideal; equality [P]=[Q] implies P^⊕N≃Q^⊕N for some N>0; a positive-rank K₀ class has a positive multiple represented by a projective module; if P^⊗n is free (n>0), some P^⊕N is free. Include: for faithfully finite projective P and n>0 there exist faithfully finite projective Q and positive-rank finite free F₀,F₁ with P⊗Q^⊗n⊗F₀≃F₁. Prove by finite-type descent, Serre splitting, Bass cancellation and nilpotent rational power series; do not assume the ring is Noetherian. Source: Lieblich Lemma 3.1.4.3 and Corollary 3.1.4.4, pp.12–13.

**SchemeAndStackFoundations:SF.1 — henselian-torsor-gerbe.** For a henselian pair (R,I), a smooth affine group Q has H¹(R,Q)≃H¹(R/I,Q); for commutative smooth affine Q the kernel of H²(R,Q)→H²(R/I,Q) is zero. For every commutative finite locally free R-group G the map on H² is injective and the map on H¹ is surjective. Include the smooth algebraic-stack lifting theorem with quasi-affine diagonal used to prove these assertions. This is stronger than the parent’s henselian-local Brauer node and must hold for arbitrary, possibly non-Noetherian, pairs. Source: Bouthier–Česnavičius Proposition 2.1.4 and Theorem 2.1.6, pp.6–8; CS24 p.71.

**SchemeAndStackFoundations:SF.4 — cauchy-algebraization.** Let B be a topological ring with an open nonunital subring B′ that is henselian (via its Dorroh unitalization), with a neighbourhood basis of zero consisting of ideals of B′. Let B̂ be the separated completion. A set-valued functor F on B-algebras that commutes with filtered colimits and sends every henselian pair (C,J) to F(C)≃F(C/J) satisfies F(B)≃F(B̂). Supply the Cauchy-net ring, its null ideal, henselianity of that ideal, and the exact completion identification, without first-countability or Noetherian assumptions. Source: Bouthier–Česnavičius §2.1.12–2.1.15, pp.11–13.

**SchemeAndStackFoundations:SF.4 — punctured-h2-injectivity.** For Noetherian R→R′, finite-generated I⊂R with (R,I) and (R′,IR′) henselian and R/I^n≃R′/I^nR′ for every n>0, every open U containing Spec R minus V(I), and every commutative finite locally free R-group G, H²(U,G)→H²(U×_R R′,G) is injective. Include the torsor/gerbe patching input; no flatness assumption on R→R′ is added. Source: Bouthier–Česnavičius Corollary 2.3.5(c), pp.30–31; CS24 Corollary 5.6.13, p.77.

**DerivedDeRhamCohomology:DD.1 — adic-flat-module-limits.** For a finite weakly proregular ideal J in an ordinary commutative ring C, a compatible flat system M_n over C/J^n has a classically J-complete limit M′, reductions M′/J^n≃M_n, and M′ is J-adically flat: Tor_i^C(N,M′)=0 for i>0 and J-power-torsion N. Include adic-flatness preservation under completion. These assertions are not ordinary flatness over arbitrary non-Noetherian C. Source: Yekutieli arXiv:1606.01832v3 Theorems 1.8,4.3,5.9, pp.5–6,14,16–17 (published numbering cited by CS24: 2.8,4.3,6.9).

**SchemeAndStackFoundations:SF.2 — char-p-etale-dimension.** For an affine scheme in characteristic p, p-primary torsion abelian étale sheaves have cohomology zero in degrees ≥2 (affine p-cohomological dimension ≤1). Retain general sheaves, not only constant Z/p, and arbitrary affine rings. Source: CS24 Corollary 5.3.7, p.61, using SGA4 X 5.1.

**SchemeAndStackFoundations:SF.2 — flat-cohomology-limits.** For a filtered diagram of ordinary R-algebras C_j and an affine commutative R-group G smooth or finite locally free of finite presentation, colim H^i_fppf(C_j,G)≃H^i_fppf(colim C_j,G) for i≥0; finite-presentation torsors, their isomorphisms and finite diagram data descend. Include the same statement for fixed quasi-compact opens and supports with finitely generated defining ideal. The parent’s fixed-site filtered-sheaf-colimit node alone does not vary the base ring. Source: CS24 Lemma 5.3.1, Claim 5.3.5.3 and Corollary 5.2.10, pp.57–60; de Jong §3.1, p.4.

**SchemeAndStackFoundations:SF.4 — complete-torsor-effectivity.** For an arbitrary ordinary ring C that is classically complete and separated for a principal ideal (a), and a finite locally free C-group G, finite locally free G-torsors and their isomorphisms are equivalent to compatible systems over C/a^n. Prove effectivity using complete finite-projective modules and their finite algebra/action equations; no Noetherian hypothesis may be inserted. Include the H⁰ Mittag–Leffler comparison used in the restricted cohomology-continuity lemma. Source: CS24 Lemma 5.6.4 and its reference to the Gabber–Ramero completeness argument, pp.72–73.

**DerivedDeRhamCohomology:DD.1 — complete-module-hyperdescent.** For any finite tuple a in π₀A, a hypercover of animated A-algebras faithfully flat after derived Koszul reduction has descent for connective derived I-complete modules under completed tensor product. Prove by descent at every Koszul power, nilpotent flatness detection and interchanging limits. Include module descent over valuation-product perfectoid arc hypercovers when the structural ring and the flat Koszul reductions descend. The existing bounded-p-torsion Čech theorem alone is insufficient. Source: CS24 proof of Lemma 5.7.1 and square-zero step of Theorem 5.7.2, pp.78,80.

**DerivedDeRhamCohomology:DD.1 — koszul-geometric-support.** For an ordinary ring T, finite tuple b=(b₁,…,b_s), and N∈D(T), identify geometric support cohomology (the localization-cube fibre) with C_b⊗^L_T N≃colim_n RHom_T(K_T(b₁^n,…,b_s^n),N), where C_b=⊗_i[T→T[1/b_i]] and K is the existing finite Koszul complex. Include arbitrary derived base change, perfect-complex tensor coefficients, and filtered-colimit/totalization exchange for uniformly cohomologically bounded-below cosimplicial diagrams. For ordinary ring-valued terms the displayed dual Koszul complexes occupy [0,s], which gives the required uniform lower bound. No weak-proregularity or Noetherian assumption is needed, and the quotient T/(b)^n is not substituted for K. Source: CS24 proof of Theorem 5.7.2, p.81, with its ordinary quotient step replaced by the dual Koszul localization model; DerivedDeRhamCohomology DD.1 derived-completion, koszul-completion-tower and completion-exchanges; Stacks 0952, Lemma 47.9.1..

**SchemeAndStackFoundations:SF.0 — syntomic-presentations.** Supply the ordinary syntomic predicate on ring maps and schemes: flat and finitely presented with local complete-intersection fibres, equivalently Zariski-local standard presentations by a regular sequence with the required relative dimension. Include arbitrary base change, composition and finite-presentation limit descent. Ind-syntomic maps themselves are owned here. Source: CS24 §2.3.3 and footnote 11, p.24.

**SchemeAndStackFoundations:SF.0 — gabber-finite-free-etale.** For a local ring A and a local-étale A-algebra B, construct a nonzero finite free A-algebra C such that B maps to C_m for every maximal ideal m of C. Use the universal splitting algebra of a monic étale presentation and its symmetric-group action. No claim that the étale neighborhood B itself is finite over A is made. Source: Lieblich Lemma 3.1.3.6, p.10.

**SchemeAndStackFoundations:SF.1 — classical-affine-group-adapter.** Expose the classical affine commutative group-scheme category over arbitrary rings, affine Hopf-algebra evaluation and smoothness of a Weil restriction of G_m along a finite locally free morphism. Use the existing native Tau Ceti finite-locally-free commutative affine group category and its Cartier dual; extend its adapter to smooth affine commutative groups, rather than redefining Cartier duality. Source: Bégueri §§2.1–2.2, pp.23–27; CS24 §§1.4,5.1.11, pp.8,52.

**SchemeAndStackFoundations:SF.1 — flat-group-cotangent-amplitude.** For any flat affine commutative group G of finite presentation over any ordinary ring R, prove e*L_(G/R) perfect of amplitude [−1,0], smooth of amplitude [0,0], and identify the canonical additive linearization used by group-valued deformation theory. This group theorem cannot be inferred merely from flatness and finite presentation of an arbitrary R-algebra. Source: CS24 §5.1.11 and Proposition 5.1.12, p.52, citing Illusie VII (3.1.1.3).

**SchemeAndStackFoundations:SF.2 — ample-global-generation.** For a quasi-compact scheme X with ample invertible L and a finite-type quasi-coherent module F, F⊗L^n is globally generated for sufficiently large n; on Noetherian X the chosen generators and restrictions extend coherently. Do not add properness. Apply after gerbe weight-zero descent to Hom(F₁,F₂) in de Jong’s argument. The existing ample-serre-vanishing node assumes properness and does not supply this case. Source: de Jong §§3.2–3.7, pp.4–6.

**SchemeAndStackFoundations:SF.0 — noetherian-completion-flat.** For a Noetherian ring C and finite ideal J, the J-adic completion is flat over C and has quotients C/J^n. For local (C,m), its m-adic completion is faithfully flat. Supply exactly the derived residue comparison used for local support cohomology. Source: CS24 Corollary 5.4.5, p.68; standard Noetherian completion theorem.

The Witt support argument uses the geometric dual Koszul model, whose uniform nonnegative bound permits the necessary totalization exchange. It does not identify geometric supports with the right derived power-torsion functor over an arbitrary non-Noetherian ring. General henselian invariance uses Popescu approximation from SF.0.

## Layers

### FC.0 — Ind-flat maps and smooth resolutions

Ind-fppf and ind-syntomic maps, their factorization criteria and stability; the pro-fppf site; the Bégueri resolution built from the existing Cartier dual.

**Dependencies:** ReductiveGroupsPartII:RG2.0a; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2.

#### Ind-fppf ring maps

Target `ind-fppf` (definition). A ring map R→B is ind-fppf if B is a filtered colimit, in commutative R-algebras, of faithfully flat finitely presented R-algebras. Equivalently every R-algebra map C→B with C finitely presented factors C→D→B with D faithfully flat and finitely presented over R. The indexing category is filtered and small in a fixed universe; a general faithfully flat map need not satisfy this predicate.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §2.3.3 and footnotes 12–13, p.24.

**API.** The namespace is `TauCeti.FlatCohomology.IndFppf`.

- `of_fppf` (constructor): Every faithfully flat finitely presented R-algebra is ind-fppf.
- `iff_factorisation` (characterisation): The finite-presentation factorization criterion in the statement is equivalent to the filtered-colimit definition.
- `faithfullyFlat` (compatibility): An ind-fppf R-algebra is Module.FaithfullyFlat over R.
- `baseChange` (functoriality): Base change of an ind-fppf map along any ring map is ind-fppf.
- `comp` (functoriality): Composites of ind-fppf maps are ind-fppf.
- `finiteProduct` (structure): A nonempty finite product of ind-fppf R-algebras is ind-fppf.
- `filteredColimit` (structure): A filtered colimit of ind-fppf R-algebras is ind-fppf.

**Unit tests.**

- `polynomial`: R→R[X] is ind-fppf even when R has nilpotents.
- `not_rationals`: Z→Q is not ind-fppf: factorization of Z[1/2]→Q through a faithfully flat Z-algebra would make 2 a unit there.
- `identity`: R→R is ind-fppf, including the zero ring.
- `not_zero_target`: For nonzero R, R→0 is not ind-fppf; this detects omission of faithfulness.

**Uses.** CS24 Lemma 5.3.1, p.58: Build split-cover refinements without changing the flat cohomology descent problem. CS24 Claim 5.3.5.3, p.59: Descend finite-presentation cohomology data along refinements.

**Proof or construction.** (1) Use the finite-presentation factorization criterion for filtered algebra colimits; include faithful flatness in every approximating stage. (2) Descend finite equations and maps to finite stages; source footnote 13 explains preservation under composition.

**Inputs:** mathlib:Algebra.FinitePresentation; mathlib:Module.FaithfullyFlat; SchemeAndStackFoundations:SF.0/affine-transition-limits.

**Check.** R→R[X] is ind-fppf. Z→Q is flat but fails ind-fppf.

#### Ind-syntomic ring maps

Target `ind-syntomic` (definition). A ring map R→B is ind-syntomic if B is a filtered colimit of syntomic R-algebras, without requiring these algebras to be faithful. Syntomic means flat and finitely presented with local complete-intersection fibres, equivalently the local regular-sequence presentations of CS24 footnote 11. Every map from a finitely presented R-algebra to B must factor through a syntomic R-algebra.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §2.3.3, p.24.

**API.** The namespace is `TauCeti.FlatCohomology.IndSyntomic`.

- `of_syntomic` (constructor): Every syntomic ring map is ind-syntomic.
- `iff_factorisation` (characterisation): Factorization through syntomic finite-presentation algebras characterizes ind-syntomicity.
- `baseChange` (functoriality): Arbitrary base change preserves ind-syntomicity.
- `comp` (functoriality): Composition preserves ind-syntomicity.
- `faithfullyFlat_indFppf` (compatibility): A faithfully flat ind-syntomic map is ind-fppf.
- `products_colimits` (structure): Finite products and filtered colimits preserve ind-syntomicity.

**Unit tests.**

- `localisation`: Z→Z[1/2] is ind-syntomic but not ind-fppf.
- `inseparable_lci`: F_p→F_p[x]/(x^p) is syntomic and faithfully flat, hence both ind-syntomic and ind-fppf despite being non-étale.
- `bad_quotient`: Z→Z/4 is not ind-syntomic, since it is not flat.

**Uses.** CS24 Remark 5.3.2, p.58: The split-cover construction also applies with syntomic covers. PurityForFlatCohomology PF.1: The ind-syntomic input is shared with perfectoid root-cover constructions, whose construction belongs to their existing owner.

**Proof or construction.** (1) Apply the same finite-presentation factorization argument to the syntomic class. (2) Use finite-presentation descent of flatness and local complete intersection for composition and base change.

**Inputs:** `ind-fppf`; SchemeAndStackFoundations:SF.0.

**Check.** Faithfully flat ind-syntomic maps are ind-fppf; ind-syntomic alone need not be faithful.

#### The pro-fppf site

Target `pro-fppf-site` (definition). A map X′→X is pro-ppf if, locally on source and target in affine charts, its ring map is a filtered colimit of flat finitely presented algebras. The pro-fppf site has schemes as objects, pro-ppf arrows as covering candidates, and families satisfying: each quasi-compact open of the target is a finite union of images of quasi-compact opens in the sources. A single faithfully flat pro-ppf morphism is called pro-fppf. These covers are fpqc covers; no topology is generated by arbitrary faithfully flat maps alone.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §4.1.5, p.37.

**API.** The namespace is `TauCeti.FlatCohomology.ProFppfSite`.

- `cover_of_fppf` (constructor): Every fppf covering family is a pro-fppf covering family.
- `cover_baseChange` (functoriality): Base change preserves pro-fppf covers.
- `cover_comp` (structure): Composites of covering families cover.
- `toFpqc` (compatibility): Every pro-fppf cover is fpqc in the scheme-site sense.
- `affine_singleton` (characterisation): For affines, a faithfully flat ind-ppf ring map defines a pro-fppf singleton cover.
- `sheaf_representable` (compatibility): Representable functors are sheaves for this topology.

**Unit tests.**

- `identity`: The identity of any scheme covers.
- `two_components`: The two component inclusions into Spec(k×k) form a cover, although neither singleton is surjective.
- `missing_component`: Spec k→Spec(k×k) selecting one component does not cover.
- `affine_comparison`: A faithfully flat finitely presented affine map covers in both the native Mathlib fppf topology and this topology.

**Uses.** CS24 Proposition 4.1.7, p.38: Make V−1 surjective after a cover admitting perfection. CS24 Theorem 4.1.8, p.38: Compare perfect pro-fppf descent with ordinary flat cohomology.

**Proof or construction.** (1) Use affine filtered presentations and the quasi-compact covering condition to check pullbacks and refinements. (2) Relate the resulting topology to the existing fppf and fpqc topologies.

**Inputs:** `ind-fppf`; mathlib:AlgebraicGeometry.Scheme.fpqcTopology; SchemeAndStackFoundations:SF.2/topology-comparison-morphisms.

**Check.** An fppf cover induces a pro-fppf cover. The finite quasi-compact refinement condition is retained.

#### The Bégueri smooth resolution

Target `begueri-resolution` (construction). For a commutative finite locally free group G over a scheme S, use its existing Cartier dual X=G* and define H=Res_(X/S)G_m and Q as the affine group of symmetric multiplicative two-cocycles on X. The coboundary map H→Q has kernel G and is an fppf epimorphism. Thus 0→G→H→Q→0 is a functorial short exact sequence of fppf sheaves, H and Q are smooth affine commutative S-groups, and H→Q is faithfully flat and finitely presented. Over affines, no new Cartier dual is defined.

**Source:** [BG80](https://www.numdam.org/item/MSMF_1980_2_4__1_0.pdf), Proposition 2.2.1 and proof, pp.25–27.

**API.** The namespace is `TauCeti.FlatCohomology.BegueriResolution`.

- `middle` (data): H(T)=Γ(X_T,O)^× with its represented smooth affine group structure.
- `quotient` (data): Q is the symmetric-cocycle affine group and H→Q is the coboundary.
- `kernel` (characterisation): The kernel of H→Q is G via G≃G**.
- `exact` (relation): The displayed sequence is exact as fppf sheaves, not necessarily on global sections.
- `baseChange` (functoriality): Base change identifies both groups and both maps with the resolution of G_T.
- `smooth` (structure): H and Q are smooth affine commutative groups.

**Unit tests.**

- `trivial_group`: For the trivial group G, X=S and H≃Q≃G_m with coboundary an isomorphism.
- `roots_of_unity`: For G=μ_n and X=(Z/n)_S, H≃G_m^n and ζ embeds as (1,ζ,…,ζ^(n−1)); n need not be invertible.
- `alpha_p`: For G=α_p over F_p, H(T)=(T[t]/t^p)^× is an open subscheme of A^p, so smoothness of H does not require G to be smooth.

**Uses.** CS24 Theorems 5.2.6 and 5.2.8, pp.56–57: Reduce finite-flat cohomology and deformation to smooth groups. CS24 Lemma 5.6.3, p.71: Lift degree-two classes by separating smooth torsors and torsion multiplicative cohomology.

**Proof or construction.** (1) Represent H by finite-locally-free Weil restriction. Represent Q by the symmetry and cocycle equations inside the affine group of invertible functions on X×X. (2) Identify the kernel using Cartier duality. The vanishing of the local group-extension sheaf Ext¹(X,G_m), requested from SF.2, makes the coboundary locally surjective. (3) Use the explicit cocycle resolution to obtain smoothness of Q; do not replace it by a pointwise quotient.

**Inputs:** tauceti:TauCeti.FiniteLocallyFreeCommAffineGroupSchemeCat.cartierDualBaseChangeNatIso; ReductiveGroupsPartII:RG2.0a/weil-restriction-representing-algebra; ReductiveGroupsPartII:RG2.0a/weil-restriction-base-change; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundations:SF.1/torsor-representability; SchemeAndStackFoundations:SF.1.

**Check.** The sequence remains exact on animated fppf algebras after FC.3 constructs the site. Formation is compatible with arbitrary base change.

### FC.1 — Twisted sheaves and Brauer comparison

Inertia-weighted modules on banded gerbes, the Azumaya criterion, affine twisted-sheaf patching and the Gabber comparison for schemes carrying an ample invertible sheaf.

**Dependencies:** PotentialModularityAndCompatibleSystems:R23.1; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2; SchemeKTheoryOperations:S.2.

#### Inertia-weighted twisted sheaves

Target `twisted-sheaves` (definition). For a G_m-banded gerbe π:𝒢→X, a weight-j twisted quasi-coherent sheaf is a quasi-coherent O_𝒢-module on which λ in the identified inertia G_m acts as λ^j. The weight-one category is the category of twisted sheaves for 𝒢. For a μ_n-gerbe, n≥1, weights are in Z/n and the same definition uses the natural character μ_n→G_m, in the fppf topology even if n is not invertible. Finite locally free and coherent objects are defined by the imported untwisted local properties. Do not define these categories as modules over a chosen Azumaya algebra: such an algebra need not yet exist.

**Source:** [DJ](https://www.math.columbia.edu/~dejong/papers/2-gabber.pdf), §2.1–2.14, pp.1–4.

**API.** The namespace is `TauCeti.FlatCohomology.TwistedSheaves`.

- `inertia` (projection): The action of λ on a weight-j module is scalar λ^j.
- `neutralEquivalence` (equivalence): A chosen neutralization identifies the weight-j category with QCoh(X).
- `tensor_weights` (relation): Tensor adds weights and internal Hom subtracts them when its first argument is finite locally free.
- `weight_zero_descent` (equivalence): Weight-zero modules descend uniquely along π to modules on X.
- `pullback` (functoriality): Pullback along a band-preserving map preserves weights, coherence in its usual finite-type range, and finite local freeness.
- `finiteFlatPushforward` (compatibility): Pushforward along a finite locally free covering preserves twisted finite locally free sheaves; a faithfully flat covering preserves positive rank.
- `endomorphismDescent` (compatibility): End(E) for finite locally free weight-one E has weight zero and descends to an algebra on X.

**Unit tests.**

- `neutral`: On BG_m over a field k the one-dimensional standard character is weight one, whereas the trivial character is weight zero.
- `tensor_not_closed`: Two weight-one sheaves have tensor of weight two; this is not a weight-one tensor product on a G_m-gerbe.
- `mu_p_weights`: On Bμ_p over F_p, weight p equals weight zero even though μ_p is not étale.
- `rank_one_obstruction`: A G_m-gerbe admits an invertible weight-one sheaf exactly when its class in H²(X,G_m) is zero.

**Uses.** de Jong Theorem 1.1 and §3, pp.1,4–9: Construct an Azumaya representative without assuming a global twisted vector bundle. Lieblich Theorem 3.1.4.1, pp.11–13: Patch positive-rank twisted vector bundles over affines.

**Proof or construction.** (1) Use the band to specify the inertia action; take the full subcategory with the stated weight. (2) Glue local module descriptions and weight-zero descent using the SF.1 gerbe adapter and the existing vector-bundle operations.

**Inputs:** SchemeAndStackFoundations:SF.2/gerbe-h2-class; SchemeAndStackFoundations:SF.1.

**Check.** Over the neutral gerbe BG_m, weight one is the standard representation tensored with a sheaf on X.

#### Twisted vector bundles and Azumaya classes

Target `twisted-azumaya-criterion` (theorem). For a G_m-banded gerbe 𝒢→X, its class α∈H²_et(X,G_m) is represented by an Azumaya algebra if and only if 𝒢 admits a finite locally free weight-one sheaf of everywhere positive rank. End(E) descends to an Azumaya algebra of class α, with the band and scalar convention fixed by the parent’s trivialization-gerbe construction. On quasi-compact X one can choose a constant positive rank. For n≥1, a μ_n-gerbe maps to its associated G_m-gerbe and gives the same twisted-sheaf category.

**Source:** [DJ](https://www.math.columbia.edu/~dejong/papers/2-gabber.pdf), Lemma 2.14 and §2.15, pp.3–4.

**Proof or construction.** (1) Trivialize the gerbe locally: the descended endomorphism algebra is locally a matrix algebra. (2) For the reverse direction use the parent’s gerbe of trivializations and its tautological vector bundle. (3) Normalize finitely many locally constant rank values on a quasi-compact base by direct sums on their clopen loci. (4) On quasi-compact X the rank function has finite image and clopen fibres; equalize positive ranks by direct sums on these finite rank strata. Do not assert finitely many connected components.

**Inputs:** `twisted-sheaves`; SchemeAndStackFoundations:key/scheme-brauer; SchemeAndStackFoundations:SF.2/azumaya-trivialization-gerbe.

**Check.** The zero sheaf never proves representability of α. The rank-r bundle gives rα=0 by its determinant.

#### Affine patching of twisted vector bundles

Target `affine-twisted-patching` (theorem). Let X be affine and 𝒢→X an fppf μ_n-gerbe with n≥1. There is a finite locally free weight-one sheaf of constant positive rank on 𝒢. Local existence is promoted to global existence by patching on two affine principal opens after replacing the local bundles by suitable tensor factors and finite direct sums. No invertibility of n and no Noetherian hypothesis are imposed.

**Source:** [L08](https://arxiv.org/pdf/math/0511244v4), Theorem 3.1.4.1, Lemma 3.1.3.6 and Proposition 3.1.4.5, pp.10–13.

**Proof or construction.** (1) Dominate a local étale splitting by a finite free cover; finite-flat pushforward yields local positive-rank twisted bundles. (2) For a principal two-open cover, apply the requested K₀ rank/root and direct-sum stabilization lemmas to equalize the bundles on the affine intersection. Their n-th tensor powers have weight zero, so the K-theory calculation is untwisted. (3) Glue the resulting isomorphism; Quillen’s principal-open induction gives a global bundle.

**Inputs:** `twisted-sheaves`; `twisted-azumaya-criterion`; SchemeKTheoryOperations:S.2; SchemeAndStackFoundations:SF.0.

**Check.** This is an input to the ample theorem, not a consequence of it. Characteristic-p μ_p-gerbes remain in scope.

#### Gabber’s affine Brauer comparison

Target `gabber-affine-brauer` (theorem). For every commutative ring R, the parent’s natural class map Br_Az(Spec R)→Br′(Spec R)=H²_et(Spec R,G_m)_tors is an isomorphism, natural in R. Equivalently every torsion H² class is the boundary of a PGL_n-torsor for some n≥1. Ambient H²_et(G_m) is not replaced by its torsion subgroup.

**Source:** [L08](https://arxiv.org/pdf/math/0511244v4), Corollary 3.1.4.2, pp.11–12; [C19](https://arxiv.org/abs/1711.06456v4), §1.5, p.3; Lemma 3.1 and proof, p.6.

**Proof or construction.** (1) Use fppf Kummer to lift an n-torsion multiplicative class to a μ_n-gerbe, including noninvertible n. (2) Apply affine twisted-sheaf existence and descend End(E); injectivity is the existing Azumaya-gerbe comparison.

**Inputs:** `affine-twisted-patching`; `twisted-azumaya-criterion`; SchemeAndStackFoundations:SF.2/cohomological-brauer; SchemeAndStackFoundations:SF.2/brauer-kummer-sequence.

**Check.** For a field this is compatible with the parent’s comparison to the native field Brauer group. The theorem says surjectivity onto torsion, not onto all H².

#### Twisted bundles with an ample invertible sheaf

Target `ample-twisted-generation` (theorem). Let X be quasi-compact and separated with an ample invertible sheaf, and let 𝒢→X be a G_m-gerbe with torsion class. Then 𝒢 has a finite locally free weight-one sheaf of constant positive rank. The construction reduces to finite type over Z and improves the codimension of the non-locally-free locus of a coherent twisted sheaf until that locus is empty.

**Source:** [DJ](https://www.math.columbia.edu/~dejong/papers/2-gabber.pdf), §3.1–3.22, pp.4–9.

**Proof or construction.** (1) Spread out the finite gerbe data and the ample bundle to a finite-type Z-model; affine Gabber supplies enough local twisted bundles. (2) For a class killed by n, select n+1 coherent twisted sheaves, finite locally free at prescribed complementary points and of common generic rank r. The sum of r^n copies of each and their tensor product both have weight one, since nα=0. On a G_m-gerbe tensor weights add as integers: transport weight n+1 back to weight one with a chosen invertible weight −n sheaf, or make the construction on a μ_n-gerbe lift. (3) Use Serre generation and the high codimension of the determinantal bad cone to choose a morphism with controlled kernels. de Jong Claim 3.22 obtains such a section after a finite flat Z-extension: the complement of the bad closure is an open of affine space, surjective over Z, so the imported incomplete-Skolem theorem applies with empty local conditions. (4) Push the kernel back along the finite faithfully flat extension; its nonfree locus improves in codimension. Iterate through the finite dimension of the model.

**Inputs:** `gabber-affine-brauer`; `twisted-sheaves`; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundations:SF.0/noetherian-approximation; PotentialModularityAndCompatibleSystems:R23.1/moret-bailly-theorem-incomplete-skolem-data-have-integral-points.

**Check.** The arithmetic avoidance input is used only in its integral-point specialization. All untwisted vector-bundle tensor and total-space operations are imports.

#### Gabber’s Brauer comparison with an ample bundle

Target `gabber-ample-brauer` (theorem). If X is quasi-compact and separated and admits an ample invertible sheaf, Br_Az(X)→Br′(X)=H²_et(X,G_m)_tors is an isomorphism. This includes affine and quasi-affine schemes. The isomorphism is the existing natural Azumaya class map; no equality with the entire H² group is asserted.

**Source:** [DJ](https://www.math.columbia.edu/~dejong/papers/2-gabber.pdf), Theorem 1.1, p.1; proof §§2–3, pp.1–9.

**Proof or construction.** (1) Apply the ample twisted-bundle theorem to a gerbe representing a torsion class. (2) Descend its endomorphism algebra and use the parent’s injectivity of the class map.

**Inputs:** `ample-twisted-generation`; `twisted-azumaya-criterion`; SchemeAndStackFoundations:SF.2/cohomological-brauer.

**Check.** On an affine X it agrees with gabber-affine-brauer. A matrix algebra maps to the zero cohomological class.

### FC.2 — Group-valued animated deformation theory

Evaluate classical flat commutative affine groups on animated algebras; identify the linearized cotangent and the point-valued square-zero deformation fibre.

**Dependencies:** EnhancedDerivedSheaves:E1; EnhancedDerivedSheaves:E3; EnhancedDerivedSheaves:E5:animation; EnhancedDerivedSheaves:E5:cotangent-export; SchemeAndStackFoundations:SF.1.

#### Animated points of a classical group

Target `animated-group-points` (construction). Fix an ordinary commutative ring R and a commutative flat affine R-group G=Spec B. On animated R-algebras put G(A)=Map_(AnimAlg_R)(B,A), with the Z-module-object structure induced by the classical group law. This is an animated abelian group, equivalently an object of D(Z) in cohomological degrees ≤0. The definition evaluates a classical group on animated algebras; it does not define finite flat group schemes over an arbitrary animated base.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.1.11, p.52; Examples 5.1.6(2)–(3), p.49.

**API.** The namespace is `TauCeti.FlatCohomology.AnimatedGroupPoints`.

- `map` (functoriality): A→A′ gives G(A)→G(A′), preserving the Z-module structure and identities/composition.
- `discrete` (compatibility): For ordinary A, G(A) is the discrete classical A-point group.
- `limits` (universal-property): G sends all limits of animated R-algebras to limits of animated abelian groups.
- `baseChange` (compatibility): For an ordinary R-algebra S, evaluation of G_S on animated S-algebras agrees with evaluation of G.
- `connective` (coercion): The Dold–Kan image lies in D^{≤0}(Z); π_i corresponds to H^{−i}.

**Unit tests.**

- `additive`: For G=G_a, G(A) is the underlying animated additive group of A, including its higher homotopy.
- `ordinary_units`: For G=G_m and discrete A, π₀G(A)=A^× and π_iG(A)=0 for i>0.
- `nontrivial_homotopy`: For A=k⊕k[1], G_a(A) has π₁=k; replacing A by π₀A would lose this value.

**Uses.** CS24 Theorem 5.1.13, p.52: Apply representable points to the square-zero pullback. CS24 §5.2.5, p.55: Identify the nonpositive truncation of flat cohomology.

**Proof or construction.** (1) Use representability to preserve limits; transport the classical commutative group law and coherent Z-action through animation. (2) Use the requested composition comparison and Dold–Kan to distinguish animated abelian groups from arbitrary grouplike E∞ spaces.

**Inputs:** EnhancedDerivedSheaves:E5:animation/animated-commutative-rings; EnhancedDerivedSheaves:E5:animation; EnhancedDerivedSheaves:E1/enhanced-derived-category; SchemeAndStackFoundations:SF.1.

**Check.** For discrete A this is the usual group of A-points.

#### The cotangent at the identity

Target `group-linearized-cotangent` (construction). For a classical commutative flat affine R-group G and animated R-algebra A, the module-object cotangent corepresenting M↦fib(G(A⊕M)→G(A)) has underlying A-module C_G⊗^L_R A, where C_G=e*L_(G/R) and e is the identity section. The linearization carries the canonical Z-action coming from the group law. For finite-presentation G, this agrees with the ordinary R-linear action, rather than extra action data.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.1.11 and Proposition 5.1.12, p.52.

**API.** The namespace is `TauCeti.FlatCohomology.GroupLinearizedCotangent`.

- `identityPullback` (characterisation): The underlying complex is precisely e*L_(G/R).
- `derivations` (universal-property): Maps from C_G⊗A to M identify naturally with fib(G(A⊕M)→G(A)).
- `baseChange` (functoriality): Ordinary base change and animated scalar extension preserve this identification.
- `groupFunctoriality` (functoriality): A group homomorphism G→H induces C_H→C_G and the corresponding natural transformation of tangent point-fibres.
- `trivialZAction` (compatibility): For finite-presentation G the group-object Z-action agrees with restriction of the R-module structure.

**Unit tests.**

- `additive`: For G_a, C_G≃R in degree zero.
- `multiplicative`: For G_m, C_G≃R in degree zero, with its generator represented by dlog at 1.
- `mu_p`: For G=μ_p over F_p, C_G≃[F_p --0→ F_p] in degrees −1,0; using only the tangent space would lose the degree −1 term.

**Uses.** CS24 Theorems 5.1.13 and 5.2.8, pp.52,57: Corepresent the obstruction term, including its correct module and shift. CS24 proof of Theorem 5.3.5, pp.59–61: Control the obstruction tower by a p-power annihilator.

**Proof or construction.** (1) Identify the point-fibre over the identity with derivations B→R⊕M at the augmentation B→R. (2) Apply the cotangent universal property and base change; corepresentability in module objects supplies the coherent Z-action.

**Inputs:** `animated-group-points`; EnhancedDerivedSheaves:E5:cotangent-export/cotangent-complex; EnhancedDerivedSheaves:E5:cotangent-export/cotangent-base-change; EnhancedDerivedSheaves:E5:cotangent-export/modules-over-animated-rings; EnhancedDerivedSheaves:E3/accessible-localizations.

**Check.** No separate cotangent-complex definition is introduced.

#### Amplitude of the group cotangent

Target `group-cotangent-amplitude` (theorem). For a flat affine commutative R-group G of finite presentation, C_G=e*L_(G/R) is perfect of cohomological amplitude [−1,0]; for smooth G it is finite projective in degree zero. If G is finite locally free of p-power order, C_G[1/p]=0, so on affine base a power p^k kills C_G in D(R).

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.1.11, p.52; proof of Theorem 5.3.5, pp.59–60.

**Proof or construction.** (1) Use the finite-presentation flat group cotangent theorem (Illusie VII (3.1.1.3)), whose precise adapter is requested from SF.1, rather than inferring amplitude from flatness of an arbitrary algebra. (2) A p-primary finite flat group becomes finite étale after inverting p; localization of the perfect cotangent is zero. Compactness gives a finite p-power annihilator.

**Inputs:** `group-linearized-cotangent`; EnhancedDerivedSheaves:E5:cotangent-export/cotangent-lci-amplitude; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.1.

**Check.** For μ_p/F_p the two terms are both necessary.

#### Deformation of group-valued points

Target `points-deformation` (theorem). Let G be flat affine commutative of finite presentation over an ordinary ring R. If A′→A is a square-zero extension of animated R-algebras with connective ideal M, there is a functorial fibre sequence G(A′)→G(A)→Map_R(C_G,M[1]) in animated abelian groups. The last object is the connective realization of RHom_R(C_G,M[1]). This need not be a fibre sequence of untruncated D(Z)-objects: the obstruction map can fail to be surjective on π₀.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.1.13 and Remark 5.1.14, pp.52–53.

**Proof or construction.** (1) Apply G to the defining square-zero pullback and split the projection G(A⊕M[1])→G(A). (2) Use cotangent corepresentability to identify its fibre; retain the connective-cover qualification.

**Inputs:** `group-linearized-cotangent`; `group-cotangent-amplitude`; EnhancedDerivedSheaves:E5:cotangent-export.

**Check.** For a split extension the obstruction map is zero. For μ_p across F_p[ε]/ε²→F_p, the derived obstruction term cannot be replaced by an ordinary group quotient.

### FC.3 — Animated sites, cohomology and supports

Derived flatness and sites; étale lifting and henselization; D(Z)-valued flat cohomology and support fibres; hyperdescent, Postnikov convergence and deformation.

**Dependencies:** EnhancedDerivedSheaves:E1; EnhancedDerivedSheaves:E2; EnhancedDerivedSheaves:E3; EnhancedDerivedSheaves:E5:animation; EnhancedDerivedSheaves:E5:cotangent-export; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundationsPartII:FC.0; SchemeAndStackFoundationsPartII:FC.2.

#### Flat animated modules and maps

Target `animated-flatness` (definition). A connective animated A-module M is flat if π₀M is flat over π₀A and each canonical π_iA⊗_(π₀A)π₀M→π_iM is an isomorphism for i≥0. It is faithfully flat when π₀M is faithfully flat. A map of animated rings is (faithfully) flat when its target is so as a module over its source. Flatness of π₀ alone is insufficient.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.2.1, p.53.

**API.** The namespace is `TauCeti.FlatCohomology.AnimatedFlatness`.

- `piZero` (projection): Flatness supplies ordinary flatness of π₀M and the homotopy scalar-extension isomorphisms.
- `discrete` (compatibility): Over an ordinary ring R a connective flat module is discrete and its π₀ is an ordinary flat R-module.
- `faithful` (characterisation): Faithful flatness is flatness together with ordinary faithfulness of π₀M.
- `equivalenceInvariant` (compatibility): Equivalences of base rings and modules transport the predicate.
- `zero` (example): The zero module is flat, and is faithfully flat exactly when the base ring is zero.

**Unit tests.**

- `higher_obstruction`: For A=k⊕k[1], the quotient module k is not A-flat although π₀A→π₀k is an isomorphism.
- `scalar_extension`: A[X] is A-flat with π_i(A[X])=π_i(A)[X].
- `nilpotent_quotient`: Z/4→F₂ is not a flat map of discrete rings.
- `zero_faithfulness`: The zero module over a nonzero field is flat but not faithfully flat.

**Uses.** CS24 §5.2.3 and Lemma 5.2.2, pp.53–54: Define covers and detect them after nilpotent reduction. CS24 Theorem 5.7.2, p.78: Specify derived faithful flatness modulo an ideal.

**Proof or construction.** (1) Use the graded homotopy module and its canonical scalar-extension map. (2) Keep all homotopy-degree conditions as part of the predicate.

**Inputs:** EnhancedDerivedSheaves:E5:cotangent-export/modules-over-animated-rings; mathlib:Module.FaithfullyFlat.

**Check.** For ordinary rings and modules this is the native flatness notion.

#### Tensor products with flat animated modules

Target `flat-tensor-base-change` (theorem). For a flat connective animated A-module M and every connective animated A-module N, π_*(N⊗^L_A M)≃π_*N⊗_(π₀A)π₀M, naturally and as graded modules. Flatness and faithful flatness are preserved by arbitrary derived base change; composites of flat (respectively faithfully flat) animated ring maps have the same property.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.2.1, p.53.

**Proof or construction.** (1) Use the homotopy Tor spectral sequence: graded flatness kills all positive Tor columns. (2) Apply the resulting formula to the new base and ordinary faithfulness on π₀.

**Inputs:** `animated-flatness`; EnhancedDerivedSheaves:E5:cotangent-export/modules-over-animated-rings.

**Check.** The right side is graded π_*N, not a single π_iN.

#### Flatness after a nilpotent thickening

Target `nilpotent-flatness-test` (theorem). Let A→B induce a surjection π₀A→π₀B with nilpotent kernel, and let M be a connective animated A-module. Then M is flat, respectively faithfully flat, if and only if B⊗^L_A M is so over B. Also M=0 if and only if B⊗^L_A M=0. The nilpotent-kernel condition is uniform; a general localization is not a detection map.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.2.2, pp.53–54.

**Proof or construction.** (1) First reduce the source to π₀ by induction through its square-zero Postnikov layers, using the homotopy tensor calculation. (2) For ordinary rings reduce the nilpotent ideal to square-zero steps and apply the derived local flatness criterion; derived Nakayama detects zero for connective modules.

**Inputs:** `animated-flatness`; `flat-tensor-base-change`; EnhancedDerivedSheaves:E5:cotangent-export.

**Check.** A→π₀A satisfies the test. Z→Q does not detect zero of Z/2.

#### Étale, fppf and fpqc sites of animated rings

Target `animated-sites` (definition). Fix an animated ring A. On animated A-algebras use flat maps; étale maps are flat maps with étale π₀, and fppf maps are flat maps with finitely presented π₀. Covering families are jointly faithfully flat on π₀, with the usual finite quasi-compact refinement convention for fpqc. Fix a cardinal bound when forming the big fpqc site. The spectra and opens below are those of π₀, but the algebras and tensor products in these sites retain higher homotopy.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.2.3, p.54; §5.2.5, p.55.

**API.** The namespace is `TauCeti.FlatCohomology.AnimatedSites`.

- `cover` (constructor): A flat map with faithfully flat finitely presented π₀ is a singleton fppf cover.
- `pullback` (functoriality): Derived tensor products compute base change of covers.
- `discrete` (equivalence): For discrete A the three sites recover their ordinary counterparts; the affine fppf topology matches TauCeti.CommAlgCat.fppfTopology.
- `etaleToFppf` (relation): An étale cover is fppf, and an fppf cover is fpqc.
- `piZeroCover` (projection): Every covering family gives the corresponding covering family of π₀ rings.
- `universe` (data): The chosen fpqc cardinal bound is part of the site construction and may be enlarged compatibly.

**Unit tests.**

- `classical`: Every fppf algebra over Z/4 is discrete; ordinary fpqc cohomology is unchanged by the animated site.
- `wrong_piZero`: For A=k⊕k[1], A→k has étale π₀ but is not an animated étale map because it is not flat.
- `joint_cover`: Over k×k, the two component projections give a jointly faithful cover; a single component does not.
- `derived_quotient`: For A=Z/p² and the element p, A/^Lp has π₀=F_p and π₁=F_p. It is not the discrete ring A/(p); all cover and continuity formulas keep this higher group.

**Uses.** CS24 Theorem 5.2.6, p.56: The hypercovers use derived matching objects and these flatness conditions. CS24 Theorem 5.5.2, p.69: Compare fppf cohomology against fpqc hypercovers.

**Proof or construction.** (1) Verify the pretopology axioms from derived flat base change and the ordinary π₀ covering conditions. (2) A flat algebra over a discrete source is discrete, giving the exact comparison with existing classical sites.

**Inputs:** `animated-flatness`; `flat-tensor-base-change`; mathlib:AlgebraicGeometry.Scheme.fppfTopology; mathlib:AlgebraicGeometry.Scheme.fpqcTopology; tauceti:TauCeti.CommAlgCat.fppfTopology.

**Check.** No new covers of an ordinary ring arise.

#### Étale algebras see π₀

Target `animated-etale-equivalence` (theorem). For an animated ring A, π₀ induces equivalences from étale A-algebras to étale π₀A-algebras, and from finite étale A-algebras to finite étale π₀A-algebras. Étale A→B has L_(B/A)=0. The inverse functor is the unique étale lifting, not a tensor product along a nonexistent canonical map π₀A→A.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Proposition 5.2.4, p.54.

**Proof or construction.** (1) Use vanishing cotangent to lift étale algebras uniquely across Postnikov square-zero layers. (2) Pass to the complete Postnikov tower and compare finite presentation and finiteness on π₀.

**Inputs:** `animated-sites`; EnhancedDerivedSheaves:E5:cotangent-export/cotangent-complex; EnhancedDerivedSheaves:E5:cotangent-export.

**Check.** The lift of π₀A itself is A. Finite étale covering categories and their topology agree.

#### Henselization of an animated ring

Target `animated-henselization` (construction). For an animated ring A and I⊂π₀A, construct A^h_I as the filtered colimit of the unique étale lifts to A of the pointed étale neighborhoods defining (π₀A)^h_I. Then π₀(A^h_I)≃(π₀A)^h_I and π_i(A^h_I)≃π_iA⊗_(π₀A)(π₀A)^h_I; A→A^h_I is ind-étale. This fixes the notation used by prime-complete descent.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Proof of Lemma 5.6.5, p.74; §5.2.4, p.54.

**API.** The namespace is `TauCeti.FlatCohomology.AnimatedHenselization`.

- `unit` (constructor): There is the canonical map A→A^h_I.
- `piZero` (compatibility): The map on π₀ is the ordinary I-henselization unit.
- `homotopy` (characterisation): Higher homotopy is extended scalarly along the ordinary henselization.
- `universal` (universal-property): Maps from A to an animated ring B whose π₀ is henselian for the image of I extend uniquely up to contractible choice through A^h_I.
- `functoriality` (functoriality): Maps of pairs give compatible maps of henselizations; the identity and composition laws are coherent.

**Unit tests.**

- `ordinary`: For ordinary A this is precisely the parent’s ordinary henselization.
- `zero_ideal`: A^h_(0)≃A, including all higher homotopy.
- `already_henselian`: If π₀A is I-henselian then A→A^h_I is an equivalence, also when A is nondiscrete.

**Uses.** CS24 Claim 5.3.5.3, p.59: Form the p-henselian cohomology functor. CS24 Corollary 5.5.3 and Lemma 5.6.5, pp.70,74: Compare prime-complete and ordinary flat descent.

**Proof or construction.** (1) Use the imported ordinary henselization diagram and its pointed étale maps. (2) Lift the entire diagram via the étale equivalence and form its filtered colimit in animated rings; flatness computes homotopy.

**Inputs:** `animated-etale-equivalence`; SchemeAndStackFoundations:key/henselization; SchemeAndStackFoundations:SF.0/henselian-pair-characterisations.

**Check.** This construction supplies no new definition of an ordinary henselian pair.

#### Flat cohomology of animated algebras

Target `animated-flat-cohomology` (construction). Fix an ordinary ring R and a commutative flat affine R-group G. Form its animated point presheaf in D^{≤0}(Z), then sheafify it as a D(Z)-valued presheaf for the animated fppf topology. Its value is RΓ_fppf(A,G). Define the étale analogue with the étale topology. For an open U⊂Spec π₀A, RΓ(U_A,G) is the limit of these values over fppf A-algebras B whose spectra map into U, with pullback transition maps. This is a genuine derived sheafification, not the point group or cohomology of π₀A.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.2.5 and (5.2.5.1), p.55.

**API.** The namespace is `TauCeti.FlatCohomology.AnimatedFlatCohomology`.

- `pullback` (functoriality): Maps of animated R-algebras induce pullback on cohomology, with coherent identity/composition laws.
- `coefficients` (functoriality): Group homomorphisms induce maps of the cohomology complexes.
- `pointsTruncation` (compatibility): For affine commutative G, τ≤0 RΓ_fppf(A,G)≃G(A), with cohomological indexing.
- `classical` (equivalence): For ordinary A, recover the classical parent fppf cohomology and native sheaf cohomology groups.
- `openRestriction` (projection): An inclusion of opens yields the restriction map used for supports.
- `affineOpen` (compatibility): For U=D(a), open evaluation is RΓ(A[1/a],G).

**Unit tests.**

- `ga_affine`: For G_a, RΓ(A,G_a) is the underlying animated module of A; over ordinary A its positive cohomology vanishes.
- `alpha_p_torsor`: Over A=F_p[t], H¹_fppf(A,α_p)=A/A^p, so t gives a nonzero class; étale point evaluation alone would miss it.
- `negative`: For A=k⊕k[1], H^{−1}(A,G_a)=k.
- `units`: For ordinary A, H⁰(A,G_m)=A^× and H¹(A,G_m)=Pic(A).

**Uses.** CS24 Theorems 5.2.6–5.7.2: The common functor for deformation, continuity, excision and descent. PurityForFlatCohomology PF.3–PF.5: Supplies the coefficient and animated-evaluation layer without importing purity back into this roadmap.

**Proof or construction.** (1) Use presentable D(Z)-valued sheafification on the cardinal-bounded affine site. (2) Extend to opens by the slice-site limit; retain the canonical comparison from the points presheaf.

**Inputs:** `animated-group-points`; `animated-sites`; EnhancedDerivedSheaves:E1/enhanced-derived-category; EnhancedDerivedSheaves:E2/space-sheaves-and-postnikov; EnhancedDerivedSheaves:E3/accessible-localizations.

**Check.** Negative cohomology is permitted: H^{−i} records animated point homotopy.

#### Flat cohomology with supports

Target `animated-supports` (construction). For an animated R-algebra A, closed Z⊂Spec π₀A and complement U, set RΓ_Z(A,G)=fib(RΓ(A,G)→RΓ(U_A,G)) in D(Z). For I⊂π₀A write RΓ_I for the support V(I). The finite-generation hypothesis is imposed by the excision and adic theorems, not by this fibre definition. All pullbacks of supports use the underlying inverse image of closed subsets.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §1.4, p.9; §5.2.5, p.55; Theorem 5.4.4, p.67.

**API.** The namespace is `TauCeti.FlatCohomology.AnimatedSupports`.

- `localization` (relation): RΓ_Z(A,G)→RΓ(A,G)→RΓ(U_A,G) is a fibre sequence and yields the support long exact sequence.
- `empty` (simp): RΓ_∅(A,G)=0.
- `whole` (simp): RΓ_(Spec π₀A)(A,G)≃RΓ(A,G).
- `radical` (characterisation): Ideals with the same vanishing subset give canonically equivalent support complexes.
- `pullback` (functoriality): A→B gives RΓ_Z(A,G)→RΓ_(Z_B)(B,G), coherent in composites.
- `classical` (compatibility): On ordinary rings this recovers fppf local cohomology, not merely coherent Zariski local cohomology.
- `finiteCube` (characterisation): For I=(a₁,…,a_r), supports are the total fibre of the cube of localizations at the a_i.

**Unit tests.**

- `unit_ideal`: RΓ_(1)(A,G)=0, whereas RΓ_(0)(A,G)=RΓ(A,G).
- `radical_powers`: The supports for (t) and (t²) on F_p[t] agree.
- `principal_additive`: For G_a over k[t] with support (t), H¹_(t)=k[t,t⁻¹]/k[t] and H⁰_(t)=0; forgetting the fibre would give k[t].

**Uses.** CS24 Theorem 5.4.4 and Corollary 5.4.5, pp.67–68: Formulate excision and completion invariance. CS24 Theorem 5.7.2, p.78: Descend supported complexes without completeness of A or the hypercover terms.

**Proof or construction.** (1) Use the open-restriction map in the stable category and form its fibre. (2) Transport the fibre through base change and limits; identify classical support cohomology by ordinary-site comparison.

**Inputs:** `animated-flat-cohomology`; EnhancedDerivedSheaves:E1/enhanced-derived-category.

**Check.** The parent’s coherent Zariski supports do not supply this fppf object.

#### Fppf hyperdescent and Postnikov convergence

Target `fppf-postnikov-hyperdescent` (theorem). For an ordinary ring R and an affine commutative R-group G that is smooth or finite locally free, A↦RΓ_fppf(A,G) satisfies fppf hyperdescent on animated R-algebras and RΓ(A,G)≃Rlim_n RΓ(τ≤n A,G). If G is smooth, RΓ_et(A,G)≃RΓ_fppf(A,G) and the étale evaluation also satisfies fppf hyperdescent.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.2.6, p.56.

**Proof or construction.** (1) For smooth groups, use étale lifting and the deformation of points to control Postnikov layers; classical smooth fppf–étale comparison identifies the sites. (2) Quasi-coherent derived module sheaves are hypersheaves; finite cotangent amplitude gives uniform truncation control for Postnikov limits. (3) For finite locally free groups, apply the Bégueri short exact sequence of smooth affine groups and preserve it on the animated fppf site.

**Inputs:** `animated-flat-cohomology`; `begueri-resolution`; `animated-etale-equivalence`; `group-cotangent-amplitude`; SchemeAndStackFoundations:SF.2/smooth-group-fppf-etale-comparison; EnhancedDerivedSheaves:E2/bounded-below-hypercover-descent; EnhancedDerivedSheaves:E2/space-sheaves-and-postnikov.

**Check.** Both hypercover totalization and ring Postnikov limits are asserted; they are distinct claims.

#### Cohomology of increasingly accurate ring towers

Target `approximation-tower` (theorem). For G as in fppf-postnikov-hyperdescent and a tower of animated A-algebras A_n with τ≤n A≃τ≤n A_n compatibly, RΓ(A,G)≃Rlim_n RΓ(A_n,G). No completeness for an ideal is assumed; this is increasing Postnikov accuracy.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.2.7, p.56.

**Proof or construction.** (1) Compare the two Postnikov-indexed double limits using the uniformly bounded cotangent errors. (2) Apply convergence of each cohomology Postnikov tower and commute limits in D(Z).

**Inputs:** `fppf-postnikov-hyperdescent`; EnhancedDerivedSheaves:E5:animation/bounded-totalization-colimits.

**Check.** The canonical tower A_n=τ≤n A gives the preceding theorem.

#### The flat-cohomology deformation triangle

Target `cohomology-deformation` (theorem). Let G be an affine commutative R-group, smooth or finite locally free, and let A′→A be a square-zero extension of animated R-algebras with connective ideal M. There is a functorial fibre sequence RΓ_fppf(A′,G)→RΓ_fppf(A,G)→RHom_R(C_G,M[1]) in the entire derived category D(Z). The third term is untruncated.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.2.8, p.57.

**Proof or construction.** (1) Sheafify the point deformation sequence; the quasi-coherent obstruction module already satisfies fppf hyperdescent. (2) For finite flat G use the smooth resolution; cohomology absorbs the point-level π₀ surjectivity defect and yields an actual D(Z) triangle.

**Inputs:** `points-deformation`; `fppf-postnikov-hyperdescent`; `group-linearized-cotangent`; `begueri-resolution`.

**Check.** For G_a the triangle is the additive extension triangle. For μ_p in characteristic p the degree −1 term of C_G contributes essentially.

#### Positive cohomology and classical truncation

Target `pi-zero-comparison` (theorem). For affine commutative G smooth over R, H^i(A,G)→H^i(π₀A,G) is surjective for all integers i and bijective for i≥0. For finite locally free commutative G it is surjective for all integers i and bijective for i≥1. Degree zero for finite flat G need not be unchanged.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.2.9, p.57.

**Proof or construction.** (1) Apply the deformation triangle to each Postnikov step and use the two cotangent amplitude bounds. (2) Pass to the tower limit with the stronger approximation theorem.

**Inputs:** `cohomology-deformation`; `group-cotangent-amplitude`; `approximation-tower`.

**Check.** Do not replace the full cohomology complex by that of π₀.

#### Cohomology across nil ideals

Target `nil-invariance` (theorem). Let I⊂R be an ideal all of whose elements are nilpotent, without a uniform nilpotence bound. For smooth affine commutative G, H^i(R,G)→H^i(R/I,G) is surjective for i≥0 and bijective for i≥1. For commutative finite locally free G it is surjective for i≥1 and bijective for i≥2.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.2.10, p.57.

**Proof or construction.** (1) First treat a square-zero ideal with the deformation triangle. (2) Finite-generation approximation makes the nil ideal nilpotent at each Noetherian stage; iterate square-zero steps and pass through filtered colimits.

**Inputs:** `cohomology-deformation`; `group-cotangent-amplitude`; SchemeAndStackFoundations:SF.2.

**Check.** H¹(F_p[ε]/ε²,μ_p)→H¹(F_p,μ_p) need not be injective: 1+ε is not a p-th power.

#### Fppf supports in étale neighborhoods

Target `classical-neighborhood-excision` (theorem). For an ordinary ring C, finite locally free commutative G, a finitely generated ideal J and C→D an étale neighborhood inducing V(J)≃V(JD), restriction RΓ_J(C,G)→RΓ_J(D,G) is an equivalence. The same holds for C→C^h_J. This is the classical neighborhood-excision input needed before general derived excision is proved.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Claim 5.3.5.3 and footnote 24, p.59.

**Proof or construction.** (1) Use the morphism from the fppf topos to the small étale topos: étale neighborhood restriction preserves the local support fibre. (2) Verify the degree-zero support assertion for a sheaf, then dimension-shift an injective resolution. (3) Pass to the filtered system of pointed étale neighborhoods for henselization using finite-presentation continuity.

**Inputs:** `animated-supports`; SchemeAndStackFoundations:SF.2; `animated-etale-equivalence`; SchemeAndStackFoundations:SF.2/site-derived-pushforward; SchemeAndStackFoundations:key/henselization.

**Check.** This result does not use FC.6 excision, so prime-adic continuity remains acyclic.

### FC.4 — The Dieudonné formula over perfect bases

Import crystalline covariant Dieudonné theory, compare perfect pro-fppf and fppf sites, and compute flat cohomology as a derived V−1 fibre.

**Dependencies:** EnhancedDerivedSheaves:E5:animation; PrismaticCohomologyPartII:PD.6; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundationsPartII:FC.0; SchemeAndStackFoundationsPartII:FC.3.

#### Perfection preserves flat covers

Target `perfection-covers` (theorem). For morphisms of F_p-algebras, perfection preserves faithfully flat maps and ind-fppf maps. Thus the perfection of a pro-fppf cover of a perfect algebra is again a cover on the perfect pro-fppf site. Derived tensor products of perfect F_p-algebras over a perfect base are ordinary and perfect.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 4.1.6, pp.37–38.

**Proof or construction.** (1) Write the perfected map as the filtered colimit of Frobenius-twisted base changes. (2) Use flat base change and filtered-colimit stability of the corresponding class; the imported animation theorem supplies discreteness.

**Inputs:** `ind-fppf`; `pro-fppf-site`; EnhancedDerivedSheaves:E5:animation/frobenius-and-perfection.

**Check.** Frobenius is an isomorphism after perfection, including for non-Noetherian rings.

#### Dieudonné Hom and extension calculations

Target `dieudonne-hom-ext` (theorem). Let S be a perfect F_p-algebra and G a commutative finite locally free S-group killed by p^n, n>0. On (Spec S)_et, Hom(Z/p^n,G) and the étale sheafification of U↦Ext¹_(Sh_fppf(U,Z/p^n))(Z/p^n,G) identify respectively with ker(V−1:M(G)→M(G)) and coker(V−1:M(G)→M(G)). Extensions are in fppf Z/p^n-module sheaves, so their middle term is killed by p^n. The maps are additive; V is semilinear rather than W_n(S)-linear.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §4.1.4, p.37.

**Proof or construction.** (1) Use exact covariant crystalline Dieudonné classification and its normalization for Z/p^n. Homomorphisms are determined by the image of 1, which must be V-fixed. (2) Étale locally an extension of the free rank-one W_n-module by M splits as W_n-modules. In a splitting, V(0,1)=(m,1) and F(0,1)=(−F(m),p). A change of splitting by a changes m by (V−1)a; the F-compatibility follows from V-compatibility.

**Inputs:** `pro-fppf-site`; PrismaticCohomologyPartII:PD.6/perfect-base-classification.

**Check.** For G=Z/p^n, use F=pσ and V=σ⁻¹; for μ_(p^n), use F=σ and V=pσ⁻¹. Do not use extensions in all abelian sheaves: that category permits middle terms not killed by p^n. The cokernel here is on the étale site; pro-fppf sheafification kills it in the subsequent Artin–Schreier sequence.

#### Comparison with the perfect pro-fppf site

Target `perfect-pro-fppf-comparison` (theorem). For perfect S and commutative finite locally free p-primary G/S, restriction of flat cohomology to the perfect pro-fppf site preserves Rε_*G and cohomology on every quasi-compact open, including support fibres. Quasi-coherent W_n-module sheaves have no higher pro-fppf cohomology on an affine perfect algebra.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §4.1.5, p.37; proof of Theorem 4.1.8, pp.38–39.

**Proof or construction.** (1) Use fppf descent and filtered-colimit continuity to pass from ordinary covers to pro-fppf covers. (2) Perfection refines the covers without changing the site calculation needed for a finite flat coefficient. (3) Apply faithful-flat descent to finite-level Witt module sheaves and then to the open support fibre.

**Inputs:** `pro-fppf-site`; `perfection-covers`; `fppf-postnikov-hyperdescent`; `animated-supports`; PrismaticCohomologyPartII:PD.6/perfect-base-classification.

**Check.** This comparison concerns the indicated finite-flat coefficient and Witt modules; it does not assert equivalence of all ambient topoi.

#### The Dieudonné Artin–Schreier sequence

Target `dieudonne-artin-schreier` (theorem). On the perfect pro-fppf site over S, if G is commutative finite locally free and killed by p^n, there is a natural exact sequence 0→G→M(G)→M(G)→0, with final map V−1. Here M is the quasi-coherent finite-level Witt-module sheaf attached by the existing covariant classification.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Proposition 4.1.7, p.38.

**Proof or construction.** (1) The Hom identification gives the kernel. (2) A class in the cokernel gives an extension of Z/p^n by G; its fibre over 1 is a finite flat G-torsor. (3) Trivialize that torsor pro-fppf locally and perfect the cover; its splitting kills the extension class.

**Inputs:** `dieudonne-hom-ext`; `perfection-covers`; `perfect-pro-fppf-comparison`; PrismaticCohomologyPartII:PD.6/perfect-base-classification.

**Check.** Surjectivity is local on the perfect pro-fppf site, not necessarily on S-valued points.

#### Flat cohomology over a perfect base

Target `perfect-base-key-formula` (theorem). Let X be a perfect F_p-scheme and G a commutative finite locally free X-group killed by p^n, n>0. For ε:X_fppf→X_et and the imported covariant Dieudonné module M(G), Rε_*G≃fib(V−1:M(G)→M(G)). For every closed Z⊂X, RΓ_Z(X,G)≃fib(V−1:RΓ_Z(W_n(X),M(G))→RΓ_Z(W_n(X),M(G))). The spaces underlying X and W_n(X) are identified. On X=Spec S, this gives the affine Witt-ring formula. All fixed points are derived mapping fibres in D(Z), and V−1 is additive rather than W_n-linear.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 4.1.8, pp.38–39.

**Proof or construction.** (1) Push the short exact sequence from the perfect pro-fppf site to the étale site, using affine acyclicity of the Witt module terms. (2) Apply the support functor, which preserves fibres. (3) Check the W_n truncation agrees with the p^n-annihilated Dieudonné module and that V−1 remains an additive map. (4) Glue the affine calculation on the perfect scheme X through its Zariski site and the imported Witt-scheme construction; then apply the support fibre.

**Inputs:** `dieudonne-artin-schreier`; `perfect-pro-fppf-comparison`; `animated-supports`; PrismaticCohomologyPartII:PD.6/perfect-base-classification; SchemeAndStackFoundations:SF.0/witt-scheme.

**Check.** Replacing the derived fibre by the ordinary V-fixed kernel would lose H¹.

#### Higher vanishing over perfect affine rings

Target `perfect-affine-vanishing` (theorem). For a perfect F_p-algebra S and a commutative finite locally free S-group G of p-power order, H^i_fppf(S,G)=0 for i≥2.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 4.1.9, p.39.

**Proof or construction.** (1) On affine W_n(S), quasi-coherent M has no positive cohomology. (2) The mapping fibre of V−1 therefore occupies degrees zero and one.

**Inputs:** `perfect-base-key-formula`.

**Check.** The result applies to μ_p and α_p and imposes no Noetherian hypothesis.

### FC.5 — Continuity along a prime

Split-cover ind-fppf refinements, derived Beauville–Laszlo glueing, the prime-adic continuity formula and its cohomological-dimension consequences.

**Dependencies:** ArcTopologyAndDescent:AT.11; ArcTopologyAndDescent:AT.6; DerivedDeRhamCohomology:DD.1; EnhancedDerivedSheaves:E2; EnhancedDerivedSheaves:E5:animation; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundationsPartII:FC.0; SchemeAndStackFoundationsPartII:FC.2; SchemeAndStackFoundationsPartII:FC.3; SchemeAndStackFoundationsPartII:FC.4.

#### Ind-fppf refinements splitting all covers

Target `split-cover-refinement` (theorem). For any ring R there is an ind-fppf faithfully flat R-algebra R̃ such that every faithfully flat finitely presented R̃-algebra admits an R̃-algebra retraction. If I⊂Jac(R), R̃ may be chosen so (R̃,IR̃) is henselian. Each such R̃ has no higher fppf cohomology for any abelian sheaf; the henselian refinement remains ind-fppf.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.3.1 and Remark 5.3.2, p.58.

**Proof or construction.** (1) Choose a set of all finitely presented faithfully flat R-algebras and tensor over its finite subsets, ensuring each cover obtains a section after base change. (2) Iterate this operation countably; insert I-henselization at each step when requested. (3) Descend any finite-presentation cover of the final colimit to a finite step; its chosen factor at the next step provides a section. (4) Exactness of evaluation follows from splitting covers, hence vanishing of higher derived evaluation.

**Inputs:** `ind-fppf`; SchemeAndStackFoundations:key/henselization; SchemeAndStackFoundations:SF.0/henselian-pair-permanence; SchemeAndStackFoundations:SF.2.

**Check.** A refinement of a nonzero R remains nonzero by faithful flatness.

#### Derived Beauville–Laszlo glueing

Target `derived-beauville-laszlo` (theorem). For A→A′ of animated rings and a∈π₀A, if A/^La→A′/^La is an equivalence then A→A′×^h_(A′[1/a]) A[1/a] is an equivalence, also after passage to underlying D(Z)-objects. No nonzerodivisor or bounded-torsion assumption is imposed.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.3.3, p.58.

**Proof or construction.** (1) Apply the derived quotient and localization functors to the fibre of the comparison map. (2) It is both uniquely a-divisible and a-power torsion, so vanishes. (3) Use that limits of animated rings are computed on their underlying animated modules.

**Inputs:** `animated-flat-cohomology`; EnhancedDerivedSheaves:E5:animation/animated-commutative-rings; DerivedDeRhamCohomology:DD.1/derived-completion.

**Check.** For A→A^∧_a this is the derived formal-glueing square; ordinary completion may be substituted only after its derived comparison is proved.

#### The square-zero defect of completed π₀

Target `pi-zero-derived-completion` (theorem). For animated A and a∈π₀A, the map π₀(Rlim_n A/^La^n)→lim_n π₀(A)/a^n is surjective with kernel lim¹_n π₁(A/^La^n). This kernel is square-zero.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.3.4, p.58.

**Proof or construction.** (1) Use the tower Milnor sequence and π₀(A/^La^n)=π₀A/a^n. (2) Multiplication of two lim¹ classes lands in lim², which is zero for a sequential tower.

**Inputs:** `derived-beauville-laszlo`; DerivedDeRhamCohomology:DD.1/animated-ring-completion; EnhancedDerivedSheaves:E2/tower-milnor.

**Check.** Do not identify completed π₀ with ordinary completion unless this lim¹ vanishes.

#### Prime-adic continuity over henselian rings

Target `p-adic-continuity` (theorem). Fix a prime p, an ordinary ring R, a commutative finite locally free R-group G of p-power order, and an animated R-algebra A for which (π₀A,pπ₀A) is henselian. Then RΓ_fppf(A,G)≃Rlim_(n>0) RΓ_fppf(A/^Lp^n,G). The ring A itself need not be derived p-complete.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.3.5, pp.59–61.

**Proof or construction.** (1) Use ind-fppf split-cover hypercovers whose terms remain p-henselian. The topology of maps faithfully flat and ind-fppf modulo p is subcanonical for the henselian cohomology functor by classical neighborhood excision. (2) The p-primary linearized cotangent is killed by p^k; deformation of successive derived p-power quotients gives a uniform Mittag–Leffler bound on the images of point groups. (3) For discrete split-cover terms compare points with completed points using derived Beauville–Laszlo and étale hyperdescent on the puncture after inverting p. (4) Use the smooth resolution to kill higher cohomology on the split terms and their ordinary p-power quotients. (5) Pass to hypercover totalizations and then through Postnikov approximation to obtain the claimed D(Z) equivalence.

**Inputs:** `split-cover-refinement`; `derived-beauville-laszlo`; `pi-zero-derived-completion`; `classical-neighborhood-excision`; `cohomology-deformation`; `group-cotangent-amplitude`; `animated-henselization`; `approximation-tower`; ArcTopologyAndDescent:AT.11/complete-etale-hyperdescent; SchemeAndStackFoundations:SF.2/gabber-affine-proper-base-change; SchemeAndStackFoundations:SF.2.

**Check.** The p-henselian hypothesis cannot be replaced by a claim that A equals its p-completion. All quotients in the formula are derived.

#### Cohomological dimension in the primary case

Target `p-henselian-dimension` (theorem). In the hypotheses of p-adic-continuity, H^i(A,G)=0 for i≥3. If (π₀A/p)^red is perfect, then H^i(A,G)=0 already for i≥2.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.3.7, p.61.

**Proof or construction.** (1) Reduce through the derived quotient tower to characteristic p using the deformation triangle. (2) For ε from the fppf to the étale site, the Bégueri sequence and smooth comparison give R^jε_*G=0 for j≥2. The remaining sheaves are p-primary; affine p-primary étale cohomology has dimension at most one. Leray therefore gives fppf vanishing in degrees ≥3. (3) For a perfect reduced special fibre use the perfect-base vanishing and nil invariance. (4) Use the Mittag–Leffler control from continuity to avoid an extra lim¹ degree.

**Inputs:** `p-adic-continuity`; `perfect-affine-vanishing`; `nil-invariance`; SchemeAndStackFoundations:SF.2; EnhancedDerivedSheaves:E2/tower-milnor; SchemeAndStackFoundations:SF.2/site-leray-spectral-sequence; SchemeAndStackFoundations:SF.2/smooth-group-fppf-etale-comparison; `begueri-resolution`.

**Check.** The stronger vanishing requires perfection of the reduced special fibre.

#### Primary invariance under derived completion

Target `p-complete-comparison` (theorem). Let A→A′ be animated R-algebras with π₀A and π₀A′ p-henselian and A/^Lp≃A′/^Lp. For commutative finite locally free p-primary G/R and every open U⊂Spec π₀A containing D(p), restriction induces equivalences on RΓ(U_A,G) and on RΓ_Z(A,G), Z=Spec π₀A minus U. In particular RΓ(A,G)≃RΓ(A′,G).

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.3.8, pp.61–62.

**Proof or construction.** (1) Continuity identifies cohomology on the two rings from the identical derived quotients. (2) Use the punctured formal-glueing comparison and étale primary coefficients on D(p). (3) Apply the support fibre sequence for the indicated open.

**Inputs:** `p-adic-continuity`; `derived-beauville-laszlo`; `animated-supports`; ArcTopologyAndDescent:AT.6/torsion-arc-hyperdescent; ArcTopologyAndDescent:AT.11/complete-etale-hyperdescent.

**Check.** No assertion is made for arbitrary opens that fail to contain D(p).

### FC.6 — Derived excision

The exact derived residue condition, principal excision, finite-ideal excision and invariance of local cohomology under Noetherian completion.

**Dependencies:** ArcTopologyAndDescent:AT.6; ArcTopologyAndDescent:AT.8; DerivedDeRhamCohomology:DD.1; EnhancedDerivedSheaves:E5:animation; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundationsPartII:FC.3; SchemeAndStackFoundationsPartII:FC.4; SchemeAndStackFoundationsPartII:FC.5.

#### Perfection across an unchanged derived divisor

Target `semiperfect-perfection-excision` (theorem). Suppose A→A′ are ordinary F_p-algebras, A perfect and A′ semiperfect. If A/^La≃A′/^La for a∈A, then the kernel of A′→(A′)^perf is uniquely a-divisible, and A/^La≃(A′)^perf/^La.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.4.1, pp.62–63.

**Proof or construction.** (1) Semiperfection makes the perfection map surjective with nil kernel. (2) Use the derived quotient hypothesis to identify annihilator groups and show multiplication by a is bijective on the kernel. (3) The zero kernel modulo a and its zero derived a-torsion identify the derived quotients.

**Inputs:** `perfection-covers`; EnhancedDerivedSheaves:E5:animation/frobenius-and-perfection.

**Check.** The torsion subgroup in the proof belongs to A′, not A.

#### Excision for one derived equation

Target `principal-excision` (theorem). For a map A→A′ of animated R-algebras and a∈π₀A, if A/^La≃A′/^La, then RΓ_(a)(A,G)≃RΓ_(a)(A′,G) for every commutative finite locally free R-group G. Neither ring is required to be complete.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.4.2, pp.63–66.

**Proof or construction.** (1) Use the primary decomposition of G and derived Beauville–Laszlo to isolate the characteristic-primary contribution; the invertible-primary part is étale excision. (2) Use p-henselization and prime-adic continuity, then the deformation triangle and Postnikov approximation to reduce to ordinary characteristic-p rings. (3) Pass along ind-fppf semiperfect refinements; finite-type approximation and nilpotent reductions reduce to the perfected situation of semiperfect-perfection-excision. (4) Apply the derived V−1 formula and Witt-module local cohomology to the resulting perfect rings.

**Inputs:** `semiperfect-perfection-excision`; `derived-beauville-laszlo`; `cohomology-deformation`; `approximation-tower`; `p-adic-continuity`; `p-complete-comparison`; `perfect-base-key-formula`; `split-cover-refinement`; ArcTopologyAndDescent:AT.6/torsion-arc-hyperdescent; ArcTopologyAndDescent:AT.8/formal-glueing; SchemeAndStackFoundations:SF.2.

**Check.** Replacing the hypothesis by π₀A/(a)≃π₀A′/(a) would omit the derived torsion condition.

#### The derived residue condition

Target `derived-excision-condition` (definition). For A→B animated rings and a finitely generated ideal I⊂π₀A, say the derived residue condition holds if π₀A/I→(π₀A/I)⊗^L_A B is an equivalence. For any chosen finite generators a₁,…,a_r it is equivalent to A/^L(a₁,…,a_r)≃B/^L(a₁,…,a_r), and to equivalence of their iterated derived a_i-completions. The original definition makes independence of generators explicit.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), §5.4.3, pp.66–67.

**API.** The namespace is `TauCeti.FlatCohomology.DerivedExcisionCondition`.

- `identity` (constructor): The identity A→A satisfies the condition for every finite I.
- `koszul` (characterisation): For each finite generating tuple, the corresponding derived Koszul quotients are equivalent.
- `completion` (characterisation): The iterated generator-adic derived completions are equivalent.
- `generators` (compatibility): Changing the finite generating tuple preserves the predicate.
- `baseChange` (functoriality): Derived base change transports the residue equivalence to the image ideal.
- `unitIdeal` (simp): For I=(1) the condition holds for every map, since the residue and support vanish.

**Unit tests.**

- `completion`: Z→Z_p satisfies it for I=(p), since flatness identifies all finite p-power quotients.
- `ordinary_is_insufficient`: Z/p²→F_p has identical ordinary residue modulo p but fails the condition: F_p⊗^L_(Z/p²) F_p has nonzero Tor₁.
- `unit`: For I=(1), Z→F_p satisfies the condition despite not being an equivalence of rings.
- `identity`: A→A satisfies it even for A=k⊕k[1] and I=(0).

**Uses.** CS24 Theorem 5.4.4, p.67: The exact hypothesis of finite-ideal excision. CS24 Theorem 5.7.2, pp.78–79: Permit completion of the entire support-descent diagram.

**Proof or construction.** (1) Compare the residue tensor with the Koszul object by successive connective derived Nakayama. (2) Use derived completion and its Koszul reductions to prove the second equivalence.

**Inputs:** `animated-flatness`; DerivedDeRhamCohomology:DD.1/animated-ring-completion; DerivedDeRhamCohomology:DD.1/derived-completion; DerivedDeRhamCohomology:DD.1/koszul-completion-tower.

**Check.** Agreement of ordinary residue rings alone is weaker.

#### Finite-ideal derived excision

Target `finite-ideal-excision` (theorem). For animated R-algebras A→A′, finite I⊂π₀A, and commutative finite locally free G/R, the derived residue condition implies RΓ_I(A,G)≃RΓ_I(A′,G). In particular support cohomology is invariant under iterated derived completion along a finite generating tuple.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.4.4, pp.67–68.

**Proof or construction.** (1) Use the completion characterization to replace both rings by their equivalent iterated completions. (2) Apply principal excision successively to the finite localization cube computing support in the common zero locus. (3) Check the construction is independent of generator order by the residue formulation.

**Inputs:** `derived-excision-condition`; `principal-excision`; `animated-supports`; DerivedDeRhamCohomology:DD.1/animated-ring-completion.

**Check.** The theorem is about supports, not an equivalence of the full cohomology of arbitrary nonhenselian rings.

#### Local cohomology and Noetherian completion

Target `noetherian-local-completion` (theorem). For a Noetherian local ring (R,m), its m-adic completion R̂, and commutative finite locally free G/R, H^i_m(R,G)≃H^i_(mR̂)(R̂,G) for every integer i.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.4.5, p.68.

**Proof or construction.** (1) Noetherian completion is flat and has the same finite residue quotients. (2) Its derived residue tensor is R/m, so apply finite-ideal excision.

**Inputs:** `finite-ideal-excision`; SchemeAndStackFoundations:SF.0/noetherian-approximation; DerivedDeRhamCohomology:DD.1/ordinary-quotient-completion; SchemeAndStackFoundations:SF.0.

**Check.** There is no lower bound on i; all support groups are compared.

### FC.7 — Faithfully flat hyperdescent

Fpqc hyperdescent for animated flat cohomology and its p-complete supported form.

**Dependencies:** ArcTopologyAndDescent:AT.6; ArcTopologyAndDescent:AT.8; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundationsPartII:FC.3; SchemeAndStackFoundationsPartII:FC.4; SchemeAndStackFoundationsPartII:FC.5; SchemeAndStackFoundationsPartII:FC.6.

#### Fpqc hyperdescent of flat cohomology

Target `fpqc-hyperdescent` (theorem). For ordinary R and commutative finite locally free G/R, A↦RΓ_fppf(A,G) on animated R-algebras is a hypercomplete sheaf for faithfully flat covers. In particular for every fpqc hypercover A→A^•, RΓ(A,G)≃Rlim_Δ RΓ(A^•,G).

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.5.2, pp.69–70.

**Proof or construction.** (1) Split into primary coefficients. Primary continuity and punctured étale formal glueing reduce the question to derived characteristic-p quotients. (2) Use the deformation triangle and Postnikov convergence to reduce to ordinary characteristic-p algebras. (3) Ind-fppf semiperfect refinements, followed by nilpotent approximation, reduce to perfect algebras. (4) Use the perfect-base V−1 formula: Witt-module faithful-flat hyperdescent and its finite Tor-amplitude Dieudonné coefficients compute the limit.

**Inputs:** `fppf-postnikov-hyperdescent`; `p-adic-continuity`; `principal-excision`; `perfect-base-key-formula`; `cohomology-deformation`; `nil-invariance`; `perfection-covers`; `animated-supports`; ArcTopologyAndDescent:AT.6/torsion-arc-hyperdescent; ArcTopologyAndDescent:AT.8/formal-glueing; SchemeAndStackFoundations:SF.2.

**Check.** The hypercover, not just its Čech nerve, is allowed. The theorem does not depend on perfectoid purity.

#### Primary descent modulo p

Target `p-completely-flat-descent` (theorem). For p-primary commutative finite locally free G/R, A↦RΓ(A^h_(p),G) satisfies hyperdescent for maps whose derived reduction modulo p is faithfully flat. For closed Z⊂Spec R/p, A↦RΓ_(Z_A)(A,G) satisfies the same hyperdescent. No p-completeness is imposed on A.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.5.3, p.70.

**Proof or construction.** (1) Apply primary continuity to the p-henselization and to every hypercover term. (2) A faithful-flat derived mod-p hypercover remains so modulo p^n by the nilpotent-flatness test. (3) Commute the quotient-tower limit with hypercover totalization; recover supports by primary excision.

**Inputs:** `fpqc-hyperdescent`; `p-adic-continuity`; `animated-henselization`; `p-complete-comparison`; `animated-supports`.

**Check.** This is a primary theorem; the general finite-ideal theorem needs FC.10.

### FC.8 — Continuity over complete animated rings

Derived completeness implies henselianity; an independent H² lifting lemma starts restricted continuity, complete descent and general finite-ideal continuity.

**Dependencies:** ArcTopologyAndDescent:AT.11; DerivedDeRhamCohomology:DD.1; EnhancedDerivedSheaves:E2; SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundations:SF.4; SchemeAndStackFoundationsPartII:FC.0; SchemeAndStackFoundationsPartII:FC.1; SchemeAndStackFoundationsPartII:FC.2; SchemeAndStackFoundationsPartII:FC.3; SchemeAndStackFoundationsPartII:FC.5; SchemeAndStackFoundationsPartII:FC.6; SchemeAndStackFoundationsPartII:FC.7.

#### Derived completeness implies henselianity

Target `complete-implies-henselian` (theorem). For an animated ring A and an ideal I⊂π₀A, if A is derived a-complete for every a∈I, then (π₀A,I) is henselian. In particular finite-ideal derived completeness has this consequence; π₀A need not be classically I-complete.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.6.2, p.71.

**Proof or construction.** (1) Derived completeness is detected on homotopy groups and is preserved by truncation. Replace A by π₀A. For principal a, the completed-π₀ theorem then compares this ring to its ordinary a-completion with square-zero kernel. (2) A classically complete ring is henselian, and henselianity lifts across a nil ideal. (3) Apply the elementwise characterization of henselian pairs to all a∈I.

**Inputs:** `pi-zero-derived-completion`; DerivedDeRhamCohomology:DD.1/animated-ring-completion; SchemeAndStackFoundations:SF.0/henselian-pair-permanence; mathlib:HenselianRing.

**Check.** The square-zero completion defect cannot simply be discarded by an equality assertion.

#### H² invariance over a henselian pair

Target `henselian-h2` (theorem). For any henselian pair (R,I) and commutative finite locally free R-group G, H²_fppf(R,G)→H²_fppf(R/I,G) is an isomorphism. This independent low-degree lemma precedes the general henselian-invariance theorem.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.6.3, p.71.

**Proof or construction.** (1) The supplier henselian torsor/gerbe lifting theorem gives injectivity for finite flat G. (2) The smooth resolution reduces surjectivity to smooth affine groups and then Weil restrictions of G_m. (3) For the G_m term, the relevant torsion H² classes are Azumaya classes by affine Gabber, so lift them through the PGL_n torsor description and henselian smooth torsor lifting. (4) Use the exact coefficient sequence to recover surjectivity for G.

**Inputs:** `begueri-resolution`; `gabber-affine-brauer`; SchemeAndStackFoundations:key/scheme-brauer; SchemeAndStackFoundations:SF.2/cohomological-brauer; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2/brauer-kummer-sequence.

**Check.** Do not assert surjectivity of the entire ambient H²(R,G_m) over arbitrary henselian pairs.

#### Continuity with a cohomological bound

Target `restricted-complete-continuity` (theorem). Let A be a derived a-complete animated R-algebra, and G a commutative finite locally free R-group. If H^i(A,G)=H^i(A/^La,G)=0 for i≥3, then RΓ(A,G)≃Rlim_(n>0)RΓ(A/^La^n,G).

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.6.4, pp.72–73.

**Proof or construction.** (1) Use the bounds to reduce continuity to H⁰, H¹, H² and the low-degree tower Milnor sequence. (2) The henselian H² lemma identifies the degree-two systems. (3) Classical complete torsor effectivity and control of the automorphism tower handle H¹; affine point evaluation handles nonpositive degrees. (4) The deformation triangle controls the square-zero completion defect and the animated Postnikov error.

**Inputs:** `henselian-h2`; `complete-implies-henselian`; `cohomology-deformation`; `group-cotangent-amplitude`; `pi-zero-derived-completion`; `approximation-tower`; SchemeAndStackFoundations:SF.4; EnhancedDerivedSheaves:E2/tower-milnor.

**Check.** The vanishing hypothesis is part of this intermediate lemma, not the final continuity theorem.

#### Faithfully flat descent after principal completion

Target `complete-principal-descent` (theorem). For any a∈R and commutative finite locally free G/R, RΓ(−,G) on derived a-complete animated R-algebras satisfies hyperdescent for covers faithfully flat after derived reduction modulo a. All hypercover terms are derived a-complete.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.6.5, pp.74–75.

**Proof or construction.** (1) Separate primary coefficients and the locus where that prime is invertible. (2) For the primary piece, use prime continuity and the restricted complete-continuity lemma, whose required dimension bound holds in characteristic p. (3) Compare the error with the étale extension by zero j_!G from the prime-invertible locus, using excision and henselian étale proper base change. (4) Étale complete-arc hyperdescent handles that error. This order uses no general complete-continuity theorem.

**Inputs:** `restricted-complete-continuity`; `p-adic-continuity`; `p-henselian-dimension`; `fpqc-hyperdescent`; `principal-excision`; `animated-henselization`; SchemeAndStackFoundations:SF.2/gabber-affine-proper-base-change; ArcTopologyAndDescent:AT.11/complete-etale-hyperdescent.

**Check.** Reversing this lemma and general continuity would create a circular proof.

#### Continuity over complete animated rings

Target `derived-complete-continuity` (theorem). For animated R-algebra A derived I-complete with I=(a₁,…,a_r)⊂π₀A finite, and commutative finite locally free G/R, RΓ(A,G)≃Rlim_(n>0)RΓ(A/^L(a₁^n,…,a_r^n),G). The quotients are the animated Koszul quotients; they cannot in general be replaced termwise by ordinary quotients.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.6.6, p.75.

**Proof or construction.** (1) Treat one generator. Construct an ind-fppf split-cover hypercover, take derived a-completions, and use the square-zero defect of completed π₀ to see that the terms and their derived quotients have no nonsplit étale covers. The smooth resolution kills H^j for j≥2, so restricted continuity applies. (2) Use the preceding complete-descent theorem to pass from that cover back to A. (3) Iterate generatorwise; commute the resulting finite family of sequential limits and use the diagonal cofinal system.

**Inputs:** `complete-principal-descent`; `restricted-complete-continuity`; `henselian-h2`; `cohomology-deformation`; `fppf-postnikov-hyperdescent`; DerivedDeRhamCohomology:DD.1/animated-ring-completion; `split-cover-refinement`; `pi-zero-derived-completion`; `begueri-resolution`; `animated-etale-equivalence`.

**Check.** For empty generators I=(0), the limit is the constant A-system. No bounded-torsion or Noetherian assumption is added.

#### Comparison with ordinary quotient cohomology

Target `ordinary-complete-comparison` (theorem). Let an ordinary ring R be derived I-complete for finite I, and G finite locally free commutative over R. Then H^i(R,G)→H^i(R/I,G) is surjective for i≥1 and bijective for i≥2. There is an exact sequence 0→lim¹_n H⁰(R/^L(a₁^n,…,a_r^n),G)→H¹(R,G)→lim_n H¹(R/I^n,G)→0 for any finite generating tuple a of I. If R is also classically I-complete, the lim¹ term is lim¹_n G(R/I^n).

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Example 5.6.7, pp.75–76.

**Proof or construction.** (1) Take the tower Milnor exact sequence of the derived continuity formula. (2) Use positive-degree truncation comparison and nil-invariance to identify the quotient cohomology groups. (3) Use cofinality of the tuple-power ideals with I^n, keeping the derived point group in the degree-one kernel.

**Inputs:** `derived-complete-continuity`; `pi-zero-comparison`; `nil-invariance`; EnhancedDerivedSheaves:E2/tower-milnor.

**Check.** Surjectivity includes degree one, while injectivity there can fail.

#### Why henselianity does not give full continuity

Target `henselian-noncomplete-counterexample` (application). For the henselization R=F_p{t} of (F_p[t],(t)), the map H¹(R,μ_p)→H¹(F_p[[t]],μ_p) is not an isomorphism. The source is countable and the target is uncountable, as follows from units modulo p-th powers. Thus the complete-ring comparison cannot be extended to every henselian ring in degree one.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Remark 5.6.8, p.76.

**Proof or construction.** (1) The henselization of the countable finitely presented ring is countable. (2) In F_p[[t]] the p-th-power units have exponents divisible by p; independent infinitely many remaining coefficients give uncountably many quotient classes. (3) Both local rings have zero Picard group, so the Kummer sequence identifies H¹ with units modulo p-th powers.

**Inputs:** `ordinary-complete-comparison`; SchemeAndStackFoundations:SF.2/brauer-kummer-sequence; SchemeAndStackFoundations:key/henselization.

**Check.** This example does not contradict H² invariance for arbitrary henselian pairs.

### FC.9 — Henselian invariance and algebraization

Surjectivity in degree one and invariance in degrees at least two over henselian pairs; completion of topological rings, Laurent rings and punctured opens.

**Dependencies:** SchemeAndStackFoundations:SF.0; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundations:SF.4; SchemeAndStackFoundationsPartII:FC.3; SchemeAndStackFoundationsPartII:FC.6; SchemeAndStackFoundationsPartII:FC.8.

#### Flat cohomology over henselian pairs

Target `henselian-invariance` (theorem). For a henselian pair (R,I) and commutative finite locally free R-group G, H^i(R,G)→H^i(R/I,G) is surjective for i≥1 and bijective for i≥2. R and I may be non-Noetherian and I need not be finitely generated.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.6.9, p.76.

**Proof or construction.** (1) Use filtered approximation to reduce finite cohomological data to a Noetherian henselian pair with geometric-regularity control. (2) Apply Popescu approximation and henselian smooth lifting to compare that pair with its completion. (3) Use complete continuity and the independent H² lemma. (4) Descend and lift the finite data, then pass through filtered colimits; retain surjectivity only in degree one.

**Inputs:** `ordinary-complete-comparison`; `henselian-h2`; SchemeAndStackFoundations:SF.1; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundations:SF.0/popescu-desingularization; SchemeAndStackFoundations:SF.0/henselian-smooth-lifting.

**Check.** The parent’s Popescu plan carries an inherited field-case gap; this dependency is explicitly recorded.

#### Algebraization over a topological ring

Target `topological-algebraization` (theorem). Let B be a topological ring with an open nonunital henselian subring B′ and a basis of zero consisting of B′-ideals. For its separated completion B̂ and every commutative finite locally free B-group G, H^i(B,G)≃H^i(B̂,G) for i≥2. No first-countability or Noetherian condition is imposed.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.6.10, p.76.

**Proof or construction.** (1) Apply the Cauchy-net algebraization criterion to the functor C↦H^i(C,G), i≥2. (2) Its finitary property is the varying-base cohomology-limit theorem; invariance on henselian pairs is the previous node. (3) Retain the nonunital subring hypothesis via its Dorroh unitalization, which has its actual ring multiplication.

**Inputs:** `henselian-invariance`; SchemeAndStackFoundations:SF.4; SchemeAndStackFoundations:SF.2.

**Check.** This is a theorem about high cohomology; it does not give equivalence of all torsor groupoids.

#### Algebraization on a Laurent puncture

Target `laurent-algebraization` (application). For any ring R, let R{t} be the t-henselization of R[t]. For a commutative finite locally free group G over R{t}[1/t], the natural map H^i(R{t}[1/t],G)→H^i(R((t)),G) is an isomorphism for i≥2.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Example 5.6.11, p.77.

**Proof or construction.** (1) Use the t-adic topological ring B=R{t}[1/t] and open nonunital subring tR{t}. (2) Its completion is R[[t]][1/t]=R((t)); apply topological algebraization.

**Inputs:** `topological-algebraization`; SchemeAndStackFoundations:key/henselization.

**Check.** The punctured ring and degree bound are both essential.

#### Henselian comparison on punctured animated rings

Target `punctured-animated-comparison` (theorem). Let A→A′ be animated R-algebras and I⊂π₀A finite. Suppose π₀A and π₀A′ are henselian for I and its image, and π₀A/I≃(π₀A/I)⊗^L_A A′. For U=Spec π₀A minus V(I) and commutative finite locally free G/R, H^i(U_A,G)≃H^i(U_(A′),G) for i≥2.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.6.12, pp.76–77.

**Proof or construction.** (1) Compare the two support localization triangles. (2) The support terms are equivalent by derived excision and the affine high-degree terms by henselian invariance and truncation comparison. (3) Use the long exact sequences, including degree-two injectivity, to identify the punctured terms.

**Inputs:** `finite-ideal-excision`; `henselian-invariance`; `pi-zero-comparison`; `animated-supports`.

**Check.** Use the exact derived residue condition, rather than only an ordinary quotient isomorphism.

#### Comparison on Noetherian open neighborhoods

Target `noetherian-open-comparison` (theorem). Let R→R′ be Noetherian rings, I⊂R an ideal, and both (R,I) and (R′,IR′) henselian. Suppose R/I^n≃R′/I^nR′ for every n>0. For every open U⊂Spec R containing Spec R minus V(I) and every finite locally free commutative R-group G, H^i(U,G)≃H^i(U×_R R′,G) for i≥2.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Corollary 5.6.13, p.77.

**Proof or construction.** (1) Use Noetherian formal comparison and excision to compare supports on the complement of U. (2) Use henselian invariance for the affine ambient terms. (3) Use the independent punctured H² injectivity input for the boundary of the long exact sequence; higher degrees then follow.

**Inputs:** `punctured-animated-comparison`; `henselian-invariance`; `derived-complete-continuity`; `animated-supports`; SchemeAndStackFoundations:SF.4.

**Check.** The theorem assumes equality of all ordinary I-power quotients; it adds no flatness hypothesis.

### FC.10 — Adic descent with supports

Discreteness of completely flat animated modules over perfectoid rings and descent with supports for faithfully flat hypercovers modulo a finite ideal.

**Dependencies:** ArcTopologyAndDescent:AT.11; ArcTopologyAndDescent:AT.12; DerivedDeRhamCohomology:DD.1; EnhancedDerivedSheaves:E5:animation; PerfectoidQuotients:Q0:integral-algebra; SchemeAndStackFoundations:SF.2; SchemeAndStackFoundationsPartII:FC.3; SchemeAndStackFoundationsPartII:FC.4; SchemeAndStackFoundationsPartII:FC.5; SchemeAndStackFoundationsPartII:FC.6; SchemeAndStackFoundationsPartII:FC.7; SchemeAndStackFoundationsPartII:FC.8.

#### Discreteness of completely flat perfectoid modules

Target `perfectoid-flat-discreteness` (theorem). Let A be an integral perfectoid ring, derived complete for I=(a₁,…,a_r), and M a connective derived I-complete animated A-module. If M/^L(a₁^n,…,a_r^n) is flat over A/^L(a₁^n,…,a_r^n) for all n>0, then M is discrete. The conclusion is not ordinary flatness of M over an arbitrary non-Noetherian A.

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Lemma 5.7.1, p.78.

**Proof or construction.** (1) Use perfectoid p-complete arc hypercovers by products of complete rank-at-most-one valuation rings and descend M from its flat Koszul reductions. (2) After completing and splitting the valuation products, reduce I to a principal element with compatible p-power roots. (3) Compare M with the ordinary inverse limit of π₀M/a^n; the complete flat-system theorem identifies its reductions. (4) The compatible-root annihilator identity makes (a) weakly proregular; adic flatness gives derived reduction discreteness. (5) Derived Nakayama identifies M with that ordinary limit.

**Inputs:** `animated-flatness`; `nilpotent-flatness-test`; DerivedDeRhamCohomology:DD.1/animated-ring-completion; DerivedDeRhamCohomology:DD.1/derived-completion; ArcTopologyAndDescent:AT.11/complete-valuation-product-basis; ArcTopologyAndDescent:AT.12/integral-perfectoid-hyperdescent; PerfectoidQuotients:Q0:integral-algebra/semiperfectoid-quasisyntomic-and-qrsp-rings; PerfectoidQuotients:Q0:integral-algebra/perfectoid-rings-reduced; DerivedDeRhamCohomology:DD.1; DerivedDeRhamCohomology:DD.1.

**Check.** Connectiveness and derived completeness of M are both hypotheses.

#### Adically faithfully flat descent with supports

Target `adic-support-hyperdescent` (theorem). Fix ordinary R, commutative finite locally free G/R, animated R-algebra A and I=(a₁,…,a_r)⊂π₀A. If A→A^• is a cosimplicial animated A-algebra whose derived Koszul reduction modulo the tuple is a faithfully flat hypercover, then RΓ_I(A,G)≃Rlim_Δ RΓ_I(A^•,G). Without completeness this is a supported statement. If A and all A^j are derived I-complete, the analogous equivalences also hold for RΓ(A,G) and for RΓ(U_A,G), U=Spec π₀A minus V(I).

**Source:** [CS24](https://arxiv.org/pdf/1912.10932v3), Theorem 5.7.2, pp.78–81; [SP](https://stacks.math.columbia.edu/tag/0954), Tags 0952 (Lemma 47.9.1), 0954 (Lemma 47.8.2), and §47.10; online, no page numbers.

**Proof or construction.** (1) Excision permits completing every term. General continuity and fpqc descent already give full affine descent in the complete case; the support triangle reduces the new assertion to punctured descent. (2) Separate primary coefficients. Étale complete-arc hyperdescent treats the prime-invertible contribution and its j_! error. Prime continuity reduces the remaining punctured functor to characteristic-p quotients. (3) Use complete module descent and the cohomology deformation triangle to make the assertion invariant under square-zero extensions; Postnikov convergence reduces to discrete F_p-algebras. (4) Use ind-fppf semiperfect refinements, nilpotent approximation, and completion to reach perfect A. Perfectoid complete-flat discreteness makes the completed cover terms discrete, so cohomological connectiveness reduces hyperdescent to Čech descent. (5) Establish universal Čech descent, allowing refinement of the cover by its perfection; repeat the reductions after arbitrary animated base change. This makes every Čech algebra perfect. (6) Apply the perfect-base Dieudonné fibre formula. Remove V−1 by the fibre triangle and M by its finite projective dimension and base-change compatibility. (7) For J=(p,[a₁],…,[a_r]) in W(A), use geometric supports as colim_n RHom(K_J^n,−), with the finite Koszul complex, instead of ordinary J-power quotients. Each dual Koszul complex on an ordinary Witt ring occupies [0,r+1], so filtered colimits commute with the cosimplicial totalization. Derived complete faithful-flat module descent identifies W(A) with the totalization of its Witt terms. Finite-projective Koszul base change and commutation of RHom with limits prove each fixed-n equivalence, then its filtered colimit. Witt rings are derived J-complete: p is regular, reduction modulo p is the I-complete perfect ring, and complete derived Nakayama lifts completeness along the finite Teichmüller tuple. The same argument applies to every cover term.

**Inputs:** `finite-ideal-excision`; `derived-complete-continuity`; `fpqc-hyperdescent`; `p-adic-continuity`; `cohomology-deformation`; `approximation-tower`; `perfectoid-flat-discreteness`; `perfect-base-key-formula`; `perfection-covers`; `complete-implies-henselian`; DerivedDeRhamCohomology:DD.1; SchemeAndStackFoundations:SF.2/gabber-affine-proper-base-change; ArcTopologyAndDescent:AT.11/complete-etale-hyperdescent; EnhancedDerivedSheaves:E5:animation/frobenius-and-perfection; SchemeAndStackFoundations:SF.2; DerivedDeRhamCohomology:DD.1/derived-completion; DerivedDeRhamCohomology:DD.1/koszul-complex; DerivedDeRhamCohomology:DD.1/completion-exchanges.

**Check.** Neither A nor the supported hypercover terms are assumed complete in the primary assertion. Use the DD.1 geometric Koszul support interface and complete-module descent. Use dual Koszul objects for Witt geometric supports; their uniform [0,r+1] amplitude justifies the filtered-colimit/totalization exchange. No ordinary-power quotient or unproved weak-proregularity comparison enters this proof. Complete-module descent is an explicit supplier contract; all other named proof ingredients have existing owners.

## Worked boundary cases

Over F_p[t], the fppf α_p torsor x^p=t is nontrivial: the additive Frobenius sequence gives H¹(F_p[t],α_p)=F_p[t]/F_p[t]^p. Passing to an étale point presheaf would erase this torsor. Over a perfect F_p-algebra, Frobenius is surjective and the α_p example behaves differently; the Dieudonné formula still records the correct V−1 fibre, including its possible H¹ for other groups.

For A=Z/p², the derived quotient by p has π₀=F_p and π₁=F_p. The ordinary residue does not record π₁. The map Z/p²→F_p therefore cannot be used as an excision equivalence merely because the ordinary residues agree. By contrast Z→Z_p is flat and has identical derived reductions modulo p, so it supplies a valid principal-excision example.

For a nonzero ring R the map R→0 is flat, but is not ind-fppf. The map Z→Q also fails ind-fppf despite ordinary flatness: Z[1/2]→Q would have to factor through a faithfully flat finitely presented Z-algebra, forcing 2 to be a unit there. Thus the ind-fppf definition distinguishes both loss of faithfulness and failure of finite-presentation factorization.

For supports, I=(1) gives zero cohomology and satisfies the derived residue condition for every map; I=(0) gives full cohomology. Ideals (t) and (t²) give the same support complex, whereas their Koszul quotients are distinct objects. The zero-support and radical invariance tests apply before choosing a completion tower.

A G_m-gerbe has integer weights: an (n+1)-fold tensor of a weight-one bundle has weight n+1, even if n times the gerbe class vanishes. The ample-generation construction either works on a μ_n-gerbe lift, where weights are modulo n, or tensors with a chosen invertible weight −n bundle. Quasi-compactness gives finitely many rank values of a locally free bundle; it does not imply finitely many connected components. These two distinctions enter the twisted-sheaf construction directly.

## References and locations

Page numbers are printed preprint pages. Stable Stacks tags replace pages for the online reference. Statements and proof paths are expressed in this roadmap’s own words.

- **CS24**. Kęstutis Česnavičius and Peter Scholze, *Purity for flat cohomology*. arXiv:1912.10932v3, 26 April 2023; preprint pagination. [Source](https://arxiv.org/pdf/1912.10932v3). Locations used: §1.4 pp.8–9; §2.2 pp.18–21; §2.3.3 pp.24–25; §4.1 pp.36–39; §5 pp.46–81; §7.2 pp.90–91.
- **BG80**. Lucile Bégueri, *Dualité sur un corps local à corps résiduel algébriquement clos*. Mémoires de la SMF, nouvelle série 4 (1980). [Source](https://www.numdam.org/item/MSMF_1980_2_4__1_0.pdf). Locations used: §§2.1–2.2, pp.23–27.
- **DJ**. Aise Johan de Jong, *A result of Gabber*. author note, nine pages; undated PDF accessed 19 October 2026. [Source](https://www.math.columbia.edu/~dejong/papers/2-gabber.pdf). Locations used: Theorem 1.1 and §§2–3, pp.1–9.
- **L08**. Max Lieblich, *Twisted sheaves and the period-index problem*. arXiv:math/0511244v4, 25 May 2007; preprint pagination. [Source](https://arxiv.org/pdf/math/0511244v4). Locations used: §§3.1.1–3.1.2 pp.6–8; Lemmas 3.1.3.5–3.1.3.6 pp.10–11; §3.1.4 pp.11–14.
- **BC22**. Alexis Bouthier and Kęstutis Česnavičius, *Torsors on loop groups and the Hitchin fibration*. arXiv:1908.07480v4; preprint pagination. [Source](https://arxiv.org/pdf/1908.07480v4). Locations used: §2.1.1–2.1.8 pp.5–8; §2.1.12–2.1.15 pp.11–13; §2.3 pp.29–31.
- **Y18**. Amnon Yekutieli, *Flatness and completion revisited*. arXiv:1606.01832v3, 6 September 2017; numbering differs from published 2018 paper. [Source](https://arxiv.org/pdf/1606.01832v3). Locations used: Theorem 1.8 pp.5–6; §4 pp.12–14; Theorem 5.9 pp.16–17.
- **SP**. The Stacks Project Authors, *The Stacks Project*. online version accessed 19 October 2026. [Source](https://stacks.math.columbia.edu/tag/0954). Locations used: Tag 0954, Lemma 47.8.2, statement and proof; stable tag in place of page number; Tag 0952, Lemma 47.9.1, geometric localization complex; §47.10, local cohomology for Noetherian rings and comparison map.
- **C19**. Kęstutis Česnavičius, *Purity for the Brauer group*. arXiv:1711.06456v4, 1 December 2018; internal date 4 December 2018; preprint pagination. [Source](https://arxiv.org/abs/1711.06456v4). Locations used: §1.5 p.3; Lemma 3.1 p.6.
