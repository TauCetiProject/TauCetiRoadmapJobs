# Package report: AnalyticToricGeometryPartII

The package expands all 29 accepted targets into seven layers, with all 62 accepted API facts, all 39 accepted definition Checks, additional theorem and negative-control Checks, layer examples, worked examples, and explicit statement/route dependencies. No accepted target was dropped. Only the top-level `gaps` member of `design/plan.json` changed; its other members compare equal to the original JSON. Eight exact supplier gaps are mirrored verbatim in the README.

The separate `design/review.json` was absent and `reports/` initially contained no review file. The acceptance and non-blocking notes were available in `design/plan.json` under `review`, `reviewHistory`, `coverage` and `currentLibraryCheck`; these were read as mathematical claims and independently reconciled. In particular, the note suggesting a regular-fan restriction when operational Chow theory is absent was not used to discard the singular-fan theorem. Its general supplier gap is explicit instead.

## Headline results and statability

This list was fixed before writing `Suggested.lean`. “Not statable” means the actual toric object or map needs a substantial construction, rather than a few simple definitions on the pinned carriers. It does not mean that its proof is difficult. There are no stated substitute results and no declarations in the Lean namespace.

| Headline result | Status at the pins and precise missing input |
|---|---|
| Integral monomial sections, tensor base change and divisor-sheaf comparison, §0.3 | Not statable: arbitrary-ring finite-fan scheme, ray-divisor map and its Cartier modules. |
| Invariant representatives and field-independent class presentation, §§0.4, 0.6 | Not statable: those actual toric divisors and the map into native scheme class groups. |
| Unit generic fibre / full analytification comparison, §1.2 | Not statable: toric formal completion, generic-fibre construction and the comparison map. |
| Perfectoid toric charts and homogeneous divisor algebra, §§2.1, 2.4 | Not statable: completed perfected cone algebras, their plus rings, perfectoid structure and tilt. |
| Toric perfectoid tilting, §3.1, Scholze 8.5(i) | Not statable: the constructed perfectoid toric spaces and tilting functor. |
| Toric tilde-limit, §3.2, Scholze 8.5(ii) | Not statable: that space, its actual power tower and geometric projections. |
| Tilted toric topological limit and sharp projection, §§3.3–3.4, Scholze 8.5(iii) | Not statable: the named toric unit spaces and their comparison homeomorphism; an arbitrary homeomorphism is not this theorem. |
| Toric étale-topos limit, §3.5, Scholze 8.5(iv) | Not statable: adic étale sites of the actual toric spaces and their colimit site. |
| Open-restriction geometric morphism, §3.6, Scholze 8.5(v) | Not statable: those topoi, π and the induced geometric morphism. |
| Full affine-line comparison, §3.7, Scholze 1.5 | Not statable: full nonarchimedean analytification, its power tower and the geometric comparison. |
| Power-pullback cohomology automorphism, §4.1 | Not statable: actual adic étale cohomology and the toric power pullback. |
| Projection cohomology isomorphism, §4.2, Scholze 8.6 | Not statable: π's geometric morphism and its cohomology pullback with field naturality. |
| Cofinal section tubes, §5.1 | Not statable: integral toric line bundles and their adic section domains. |
| Homogeneous approximation and nonzero dense-field equation, §5.2 | Not statable: homogeneous perfectoid divisor algebra, sharp and its toric chart maps. |
| Dense-field hypersurface approximation, §5.3, Scholze 8.7 | Not statable: algebraic toric zero loci, their analytification and π. |
| Operational Chow / Minkowski-weight identification, §6.1 | Not statable: operational Chow groups and their evaluation on the constructed orbit closures. A balancing kernel alone would omit the headline. |
| Fan displacement product and field-independent degree, §6.2 | Not statable: this evaluation identification and the operational Chow product. |
| Positive refined degree and nonempty powered intersections, §6.3 | Not statable: localized Chern classes and refined support on toric zero loci. |
| Dense-field complete-intersection approximation, §6.4, Scholze 8.8 | Not statable: the preceding constructions and a closed model with the specified geometric support and dimension. |

The pinned `TauCeti.AdicSpace` does exist, unlike the old snapshot described in the design. This corrects the carrier audit, but does not supply any of the missing toric constructions. Likewise the native complex fan scheme, generic Weil divisors, `ZeroAtInftyContinuousMap`, `PreTilt` and the generic sheaf-cohomology carrier do not identify the roadmap's geometric objects. No coefficient approximation theorem, scalar inequality, free homeomorphism, integer-matrix kernel, boundary lemma or Check is passed off as a headline.

## Corrections and support boundaries

1. Replaced obsolete supplier locators: formal geometry, good-reduction loci and section bounds are AdicSpacesPartIII R2.2–R2.4, R2.8, R2.10; general analytification remains AdicSpacesPartII R1. ClassicalAdicEtaleCohomology uses §§1.1 and 8.2, not the design's H0/H5 labels. SchemeAndStackFoundations uses §§0.7, 0.18, 0.23a, 0.29, 2.15, 3.4 and 5.1–5.6; its §0.1 is not a Laurent-UFD export.
2. Preserved every general target and split the missing supplier contracts accurately. PerfectoidSpaces P2.1 states the polydisc homogeneous estimate, not the arbitrary rational-cone version with lineality needed here. SchemeAndStackFoundations states Chow groups and smooth intersection products but not operational Chow groups or the required finite-orbit Kronecker duality. Explicit gaps cover those extensions; none is silently claimed supplied.
3. Corrected a genuine overgeneralization in the generic finite-orbit contract: a split solvable acting group and finite geometric orbit count alone do not imply integral Kronecker duality over a non-algebraically-closed field. For Spec ℂ over ℝ, with trivial acting group, A⁰=A₀=ℤ and degree evaluation is multiplication by 2. The supplier contract now requires split orbit strata (each a product of affine space and split torus). Every orbit of the fan toric variety is split, so the full arbitrary-field toric theorem is preserved. The README includes both the degree-2 counterexample and the degree-1 split point. FS94 Proposition 1.4 supplies the toric assertion; the stronger split-orbit general theorem is expressly a supplier requirement, not attributed to a proof read elsewhere.
4. Corrected the projection Check: finite-stage polynomial pullbacks over K and the classical tilted sharp equation are different expressions. Over residue characteristic 2 in mixed characteristic, [1:1:0] satisfies the tilted linear equation, whereas its sharp image has coordinate sum 2. The old Check's description by a tower of tilted polynomial sums would falsely include that point. Evaluation at arbitrary adic points is stated as a valuation identity, not an equality of elements of different residue fields.
5. Added the explicit non-stable open U={|t−ϖ|≤|ϖ|²}: t=ϖ belongs, but its pth-power image has distance |ϖ| from ϖ and does not. This tests the changing finite-level opens in §3.6.
6. Scoped the ℓ=p top-degree failure Check to mixed characteristic. In characteristic p, H²(ℙ¹,ℤ/p) is not the characteristic-zero top-cohomology calculation; the negative control must not use it. Also specified p=2 in the ε=1/2∈ℤ[1/p] approximation Check.
7. Preserved the accepted corrections to the source: degree-one weights have bound −aᵢ, integral transition units are functions on overlaps rather than constant units, the torus exponent is rank n, and displacement lies in N/Nγ. Denominator clearing produces a section of O(pᴺD), not a global regular function on a proper variety. FS94's reference to “Lemma 3.3” in its proof is read as Lemma 3.4. No source text was copied into the package.
8. Preserved the nonzero-equation safeguard: the coarse sharp estimate may allow g=0. Refining c at the multiplicative Gauss point excludes it, and coefficient perturbation retains a specified nonzero coefficient. Preserved the closed k₀-model / geometric-reduction distinction over an imperfect dense field. The algebraic xᵖ−t descent counterexample does not claim that 𝔽ₚ(t) is dense in a perfectoid field.
9. Made two functional/module boundaries explicit: bounded linear maps from the monomial span extend only to complete targets (the infinite-support series with coefficients ϖⁿ is a counterexample to extension into the span itself); the numerical rank d+1 Check assumes A≠0, while the actual free-module identification A^(d+1) still holds over the zero ring. Multiplicity comparisons use integers r≥1. For p-local D, denominator clearing includes its coefficients as well as the finitely many weights: at p=2, D=(1/4)D₋ and weight 0 require two squarings to reach the integer divisor D₋; one squaring leaves (1/2)D₋.
10. Removed all prospective Lean API names from README claims and all prototype controls from Suggested.lean. The APIs and Checks remain mathematical prose. The module docstring names every unavailable headline and its missing construction; its empty namespace is intentional.

Nothing mathematical in the accepted toric target list was unsupported after these corrections and explicit supplier boundaries. Connectedness, geometric irreducibility, a cross-characteristic ringed-space map, ℤℓ comparison without a limit argument, and descent of geometric reduction to an imperfect field are not promised. No notion was moved from a later roadmap: the required general suppliers are on main or earlier in the merge order, and the later named roadmaps occur only as consumers.

## Duplication and ownership sweep

Read the main roadmaps AnalyticToricGeometry, PerfectoidSpaces and AdicSpacesPartII for shape, as well as the precise relevant sections of AdicSpacesPartIII, SchemeAndStackFoundations and AdicEtaleGeometry. The roadmap service's show headers distinguish main from open heads. Its main index is 66576b6. ShimuraCompactifications (new), ClassicalAdicEtaleCohomology (new) and WeilConjectures (new) were read at their open heads, respectively 63e3f03, dfcb6b7 and d90e186. Existing-roadmap progress/revision pull requests were not used as dependencies.

The object sweep used both roadmap-service grep passes over main and all 332 indexed open heads, and searches of the board's package READMEs/designs plus the pinned source trees. In particular, the named sibling open work, including SolidAnalyticRings, OverconvergentAutomorphicForms, CohomologyComparisonsPartII, ArithmeticKTheory and the other supplied names, was covered by the index search. Near matches on perfectoid toric charts in p-adic Hodge theory or on a particular fixed-fan Chow ring do not own these general toric constructions. No fully qualified declaration of another roadmap is assigned to this package.

| Object removed from local ownership / duplicate prototype | Exact owner consumed instead; retained local difference |
|---|---|
| Generic lattice, cone, fan, ray and primitive generators | AnalyticToricGeometry Layer 0; Tau Ceti `Geometry/Toric/Algebraic/{Cone/Basic,Fan/Basic,Ray/Primitive}.lean`. |
| Dual semigroup and Gordan finite generation | Tau Ceti `DualSemigroup/Basic.lean` and `DualSemigroup/Finiteness.lean`, with the native integral-lattice hypotheses. |
| Generic monoid algebra, exponent-change map and coefficient function carrier | Mathlib `Algebra/MonoidAlgebra/{Defs,MapDomain}.lean` and `Topology/ContinuousMap/ZeroAtInfty.lean`; local work is support bounds and toric identifications, not those carriers. |
| Arbitrary-ring affine toric charts, ordinary face maps and fan gluing | ShimuraCompactifications C0.6–C0.7, C0.16–C0.18; local work is divisor modules and their completion. |
| Generic Weil divisor carrier, principal orders, linear equivalence and divisor sheaf | Tau Ceti `AlgebraicGeometry/WeilDivisor/Scheme/{Basic,Principal,Sheaf}.lean`; local work maps rays into that carrier and proves the toric character formula. |
| Generic adic carrier and open restriction | Tau Ceti `AlgebraicGeometry/AdicSpace/PreAdicSpace/Adic.lean`; there is no TopCat-only replacement. |
| General analytification, formal completion, generic fibre and section bounds | AdicSpacesPartII R1; AdicSpacesPartIII R2.2–R2.4, R2.8, R2.10. |
| General completed cone perfectoidness, tilt and homogeneous induction | PerfectoidSpaces P1.30/P2.1 and the two registered cone extensions; local work identifies the actual divisor cone and monomial maps. |
| General tilting, tower limits, colimit sites and étale-topos continuity | PerfectoidSpaces P2, P3.18/P3.20 and P7.1–P7.15; AdicEtaleGeometry A1.6. |
| General derived cohomology and proper algebraic comparison | ClassicalAdicEtaleCohomology §§1.1, 8.2, with the explicit geometric-morphism/cup contract. |
| Relative Frobenius and universal-homeomorphism site invariance | SchemeAndStackFoundations §§0.29 and 0.23a, not an invented SF.2 target. |
| Generic Chow groups, Chern classes, refined Gysin operations and smooth products | SchemeAndStackFoundations §§5.1–5.6 with explicit operational/positivity extensions. |
| The fixed Fujino–Sato threefold, its fan/model and its special Chow presentation | WeilConjectures WC.6. It remains a Check of the general comparison, not a second fixture construction. |
| Prototype coefficient-only operations, finite balancing kernel and free topological projection | Deleted from the acceptance test: they are not the deep geometric endpoints. Their mathematical API/Checks remain in the README. |

The sweep found no duplicate of a whole accepted toric target requiring deletion. These are ownership removals of generic constructions or prototype stand-ins, not suppressed toric targets. All 29 are retained as follows:

| Target | Ownership conclusion |
|---|---|
| §0.1 Invariant toric divisors | Ray-to-native-divisor injection is local; generic divisor carrier imported. |
| §0.2 Divisor character weights | Toric support inequalities are local; native lattice/dual monoid imported. |
| §0.3 Monomial divisor sections | Arbitrary-ring toric section identification is local; monoid algebras and sheaves imported. |
| §0.4 Invariant divisor representatives | General fan toric invariant representative is local; Laurent/divisor-excision theory imported. |
| §0.5 Integral toric line bundles | Toric character frames are local; general completion and section domains imported. |
| §0.6 Toric divisor class relations | General fan character presentation is local; fixed-fan WC.6 presentation is distinct. |
| §1.1 Unit toric adic spaces | Toric unit-model specialization is local; generic adic carrier/gluing imported. |
| §1.2 Toric analytification comparison | Toric complete-fan consequence is local; general good-reduction comparison imported. |
| §1.3 Toric power morphisms | Common integral/formal toric map is local; generic monoid-algebra map imported. |
| §2.1 Perfectoid toric spaces | Fan specialization/gluing/projections are local; cone perfectoidness imported. |
| §2.2 Perfected divisor sections | Toric divisorial completion and convolution identifications are local; c₀ carrier imported. |
| §2.3 Graded divisor cones | Specific homogeneous ray cone is local; generic lattice/cone machinery imported. |
| §2.4 Graded divisor algebras | Toric section/cone identification is local; generic completed cone algebra imported. |
| §3.1 Toric tilting comparison | Toric comparison on specified charts is local; generic tilt imported. |
| §3.2 Toric perfectoid tilde-limits | Toric power-tower identification is local; general limit theorem imported. |
| §3.3 Toric inverse-limit homeomorphism | Unperfected tilted toric comparison is local; generic perfection/tilting imported. |
| §3.4 Toric tilting projections | Toric sharp projection with strata and field naturality is local; free projection is no substitute. |
| §3.5 Toric étale topos comparison | Specific toric fibred-topos limit is local; generic colimit-site theorem imported. |
| §3.6 Open toric topos restrictions | Toric arbitrary-open square is local; general site descent imported. |
| §3.7 Affine-line sharp comparison | Full line via the toric ℙ¹ comparison is local; a unit-disc statement is distinct. |
| §4.1 Power-map cohomology invariance | Toric power action is local; general smooth proper comparison imported. |
| §4.2 Toric torsion cohomology comparison | Toric projection pullback is local; generic cohomology/continuity imported. |
| §5.1 Toric section neighbourhoods | Cofinality for the integral toric equations is local; general section-domain carrier imported. |
| §5.2 Dense-field section approximation | Toric homogeneous specialization and denominator clearing are local; generic induction imported. |
| §5.3 Toric hypersurface approximation | General smooth proper toric approximation is local; fixed-fan example is only a Check. |
| §6.1 Toric intersection weights | All complete fans, including singular ones, are local; general operational/duality machinery imported. |
| §6.2 Toric fan displacement products | General fan displacement and field independence are local; Chow product carrier imported. |
| §6.3 Toric complete-intersection degrees | Toric powered-class application is local; refined support/positivity imported. |
| §6.4 Toric complete-intersection approximation | Dense-field geometric endpoint with closed model is local; general dimension/cut theory imported. |

## Pins, native-definition checks and sources

The manifest pins read from the build checkout are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, confirmed by each source tree's Git HEAD. The design's older Mathlib `082e2d3` and Tau Ceti `f790474` are not the acceptance-test pins.

| Pinned declaration and location | Read definition/hypotheses; boundary it does not supply |
|---|---|
| `AddMonoidAlgebra`, Mathlib `Algebra/MonoidAlgebra/Defs.lean:64` | The actual field is `coeff : M →₀ R`; the wrapper is not definitionally a bare Finsupp. It has no divisor-support bounds. |
| `MonoidAlgebra.mapDomainRingHom`, Mathlib `Algebra/MonoidAlgebra/MapDomain.lean:285` | Exponent change by a multiplicative monoid homomorphism, used after `Multiplicative`; no new local map definition is needed. |
| `ZeroAtInftyContinuousMap`, Mathlib `Topology/ContinuousMap/ZeroAtInfty.lean:45` | The field `zero_at_infty' : Tendsto toFun (cocompact α) (𝓝 0)` requires supplying the discrete topology to interpret it as c₀ on weights; it does not supply convolution. |
| `TauCeti.Toric.IsToricCone`, Tau Ceti `Geometry/Toric/Algebraic/Cone/Basic.lean:147` | Fields rational and salient; no-line condition is explicit. |
| `TauCeti.Toric.Fan`, Tau Ceti `Geometry/Toric/Algebraic/Fan/Basic.lean:83` | Contains the lattice, finite cone set, toric-cone predicate, face closure and intersection axiom; no nonemptiness field. |
| `TauCeti.Toric.primitiveGenerator`, Tau Ceti `Geometry/Toric/Algebraic/Ray/Primitive.lean:167` | Requires the integral lattice and toric cone; an arbitrary vector on the ray is not accepted. |
| `TauCeti.Toric.dualSemigroup`, Tau Ceti `Geometry/Toric/Algebraic/DualSemigroup/Basic.lean:53` | An `AddSubmonoid (N →+ ℤ)` obtained by comap of the real dual cone. |
| `TauCeti.Toric.IsToricCone.fg_dualSemigroup`, Tau Ceti `Geometry/Toric/Algebraic/DualSemigroup/Finiteness.lean:76` | Integral lattice and toric cone hypotheses; Gordan is imported, not reconstructed. |
| `TauCeti.Toric.Fan.algebraicRealization`, Tau Ceti `Geometry/Toric/Algebraic/Fan/Scheme.lean:136` | Complex coefficients; it is not the arbitrary-ring scheme needed for this endpoint. |
| `TauCeti.AlgebraicGeometry.SchemeWeilDivisor`, Tau Ceti `AlgebraicGeometry/WeilDivisor/Scheme/Basic.lean:46` | Native integer Finsupp on codimension-one points; it does not identify rays with those points. |
| `TauCeti.AlgebraicGeometry.WeilDivisor.OrderSystem.ofScheme`, Tau Ceti `AlgebraicGeometry/WeilDivisor/Scheme/Principal.lean:126` | Explicit integral and noetherian instances; no assertion for arbitrary K° models. |
| `TauCeti.AlgebraicGeometry.SchemeWeilDivisor.sheaf`, Tau Ceti `AlgebraicGeometry/WeilDivisor/Scheme/Sheaf.lean:250` | Standing binders at lines 75–82 require integrality, local noetherianity and every codimension-one stalk a DVR. |
| Native linear-equivalence sheaf isomorphism, same file line 642 | Reuse its real native divisor sheaves; no duplicated abstract transport theorem. |
| `TauCeti.PreAdicSpace.isAdic`, Tau Ceti `AlgebraicGeometry/AdicSpace/PreAdicSpace/Adic.lean:206` | Literal body `fun X ↦ isSheafy X ∧ isLocallyAffinoid X`; it does not assert properness, regularity or any toric identification. |
| `TauCeti.PreAdicSpace.isAdic_restrict` and `TauCeti.AdicSpace`, same file lines 231 and 243 | Open restriction and the full-subcategory carrier exist at the pin. |

The object searches inspected the pinned toric algebraic/complex analytic trees and the Mathlib/Tau Ceti perfectoid, adic and scheme trees. No actual toric formal generic fibre, perfected toric fan space, operational Chow group or its ray-evaluation map was found. Mathlib's field tilt/perfectoid auxiliary files and Tau Ceti's generic adic category do not fill those construction gaps.

All four cited works were fetched through the source service, their line-numbered extractions read at the claims, and their lifetime keys retained. There are no missing, waived or uncertified citations. Source texts were not copied into any deliverable. Relevant inspected ranges:

| Source | Verified locators and extraction lines |
|---|---|
| SCH12, published version | Theorem 1.5, p. 247, line 91; Theorem 1.13 and coordinate projection, pp. 249–250, lines 186–203; Lemma 1.16, p. 251, line 271; Proposition 5.20 and proof, p. 280, lines 1344–1355; Lemma 6.5/Remark 6.6 and proof, pp. 288–290, lines 1752–1837; Definition 7.14 through Corollary 7.19, pp. 302–303, lines 2317–2351; §8 divisor/adic/perfectoid construction and Theorem 8.5, pp. 304–305, lines 2381–2443; Proposition 8.6 and proof, lines 2446–2456; Proposition 8.7 and proof, lines 2458–2492; Corollary 8.8 and proof, lines 2496–2506. |
| FS94, arXiv v1 | Proposition 1.1, p. 4, lines 101–123; degree and operational duality, pp. 5–6, lines 144–200; Cartier wall sign, p. 7, lines 230–246; Proposition 3.1, p. 10, lines 373–386; Theorem 3.2, p. 11, lines 393–402; proof and quotient lattice, p. 13, lines 491–509. |
| FS25, author version 0.27 | Example 4.1, pp. 7–8, lines 299–324; rays, ten maximal cones and three primitive relations checked. |
| STACKS, Varieties | Tags 020I and 035X, chapter Lemmas 6.3 and 6.4, lines 223–243; reducedness over a perfect field and purely inseparable base change. |

## Adversarial mathematics pass

Each row records actual values, including negative controls. Rows for the main statements include every accepted Check of that object; separate API rows below test each promised law. Proof-route inputs were traced to local sections or named supplier contracts, not circularly to the end theorem. Empty fans, non-split orbit strata, q=0, ℓ=p and arbitrary coefficient nilpotents are distinguished from admitted inputs. S₃ and Q₈ are outside the lattice/torus carrier, rather than untested instances of a theorem about arbitrary groups.

| Statement | Instances tried | Computed values on the relevant sides | Result and change |
|---|---|---|---|
| Convention: nonempty finite fan / rank | Empty fan; rank-zero fan; rank-one zero cone | Realizations ∅; Spec A; Spec A[t,t⁻¹], respectively. Rank-zero n=0 admits only the point, not a boundary ray. | Keep nonemptiness for geometric targets; torus is not a disc. |
| Convention: divisor and frame signs | ℙ¹, D=D₋; character t | div(t)=(1,−1); W(D)={0,1}; frames 1,t; ratio t⁻¹. Local-equation weights 0,−1 give the opposite sign. | Signs fixed by values. |
| Convention: coefficient rings | A=k[ε]/ε²; A=0 | ε≠0, ε²=0 survives in S_A(0)=A; over 0 all coefficients and sections are 0. | No reduced/nonzero-ring restriction. |
| Convention: p-localization | p=2; p=3 | 1/2∈ℤ[1/2], 1/3∉ℤ[1/2]; 1/3∈ℤ[1/3], 1/2∉ℤ[1/3]. | No replacement by ℚ. |
| Convention: thresholds and denominators | c=1/2; f=t²; |ϖ|=r∈(0,1) | |f|²≤r is |t|⁴≤r; exponent 2c on t² gives |t|²≤r^(2c) iff |t|≤rᶜ. ϖ≠0; no zero denominator. | Higher-rank formulation uses integer powers. |
| Convention: sharp and map direction | p=2 mixed characteristic; characteristic p | (1+1)♯=0 but 1♯+1♯=2; in characteristic p both sums=0. π maps tilted points forward; π* sends H(K) to H(K♭). | No additive sharp hypothesis. |
| Convention: torsion range | p=2, ℓ=3, m=1; p=3, ℓ=2, m=2; m=0 | Multipliers 2 mod 3 and 3 mod 4 are units (squares 1); ℤ/ℓ⁰=0 is the excluded zero coefficient case. | m≥1 explicit; both small primes admitted. |
| Convention: universes | Rank-zero and empty chart index; field of larger cardinality | Empty indexed family contributes no equations; set-sized enlarged field requires universe enlargement, not a bound on n or on the field. | Fixed universe plus next-universe sheaves; no finite-field cardinality assumption. |
| §0.1 invariant ray divisors | ℙ¹; zero-cone fan; doubled ray | Coefficients div(t)=(1,−1); empty ray group=0; coefficient of 2D₊=2 differs from 1. | Native divisor injection retains multiplicity. |
| §0.2 weight sets | ℙ¹ with d=0,1,2,−1; torus | W={0},{0,1},{0,1,2},∅ respectively; torus W=M=ℤ. Local D=−D₊ on A¹ has W={1,2,…}, so 0∉W. | Correct lower bound and nonmonoid status. |
| §0.3 section module / base change | ℙ¹ d=0,1,2,−1; dual numbers; zero ring | Ranks 1,2,3,0; nilpotent constant ε retained; zero ring module=0. Basis tensor B sends 1⊗(aχᵘ) to aχᵘ with B coefficients. | Arbitrary-ring theorem retains all coefficients. |
| §0.4 invariant representative | A¹ with x²; torus with t; ℙ¹ with t−a | Orders at 0 are 2 versus reduced-support 1; div_T(t)=0; div(t−a)=[a]−D₋, so class [a]=[D₋]. | Do not squarefree the section. |
| §0.5 integral frames | ℙ¹ d=1,2; D=0; scalar rescaling | Frame ratios t⁻¹,t⁻²; triple product t⁻¹·t·1=1; D=0 ratio=1; f↦ϖf multiplies values by r<1. | Integral units have value 1, not necessarily constant. |
| §0.6 class presentation | ℙ¹; torus; separate rays (1,0),(1,2) | Image={(u,−u)}, kernel of sum; ℤ→0 has kernel ℤ; two-ray matrix determinant 2, Smith factors 1,2, Pic=ℤ/2. | No incomplete-fan injectivity or torsion-freeness claim. |
| §1.1 unit model and plus ring | Disc; unit torus; ℙ¹; Gauss product | |t|≤1; |t|=1; two discs cover ℙ¹; norms of 1±ϖt and 1−ϖ²t² all 1. Norm of ϖ⁻¹=r⁻¹>1. | Completed unit localization, explicit plus ring. |
| §1.2 comparison | t=ϖ⁻¹; ℙ¹; nonprojective complete threefold | r⁻¹>1 excludes first point from unit disc; ℙ¹ chart union is whole space; each of the ten FS25 cone determinants has absolute value 1 and completeness gives the full model. Cyclic ample inequalities sum to 0>0, impossible. | Properness needs completeness, not projectivity. |
| §1.3 power map | q=0,1,2,3; a∈𝔽₄ with a²=a+1 | t↦1,t,t²,t³; q=0 maps 0↦1; φ₂φ₃(t)=t⁶=φ₆(t). Coefficient a maps to a, while absolute Frobenius maps it to a+1. | q≥1 for strata; coefficient-linear Frobenius. |
| §2.1 perfected toric charts | Positive ray; zero cone; rank zero; level n=1,2 | Monoids ℤ[1/p]≥0; ℤ[1/p]; {0}; projected exponent 1/p then 1/p², with p·(1/p²)=1/p. | No lost invertible character or reversed transition. |
| §2.2 perfected sections / convolution | D=D₋ on ℙ¹; complete D=0; two singleton weights | Weights include 1/pⁿ; degree-zero section module K; all-one family on infinitely many weights fails c₀. δ₀*δ₁=δ₁ has coefficient 1, whereas pointwise product=0. | Convolution and c₀ are essential. |
| §2.3 divisor cone | ℙ¹ D=D₋; complete D=0; incomplete positive ray | 0≤u≤j; Q₀={0}×ℤ[1/p] including (0,−1); incomplete degree-zero weights contain 1. | Completeness is exactly the scalar-degree-zero input. |
| §2.4 graded completion | ℙ¹ D=D₋; D=0; outer c₀ | (u,j)↦(u,j−u); monomials (0,1),(0,−1) multiply to (0,0); coefficient-one family in infinite degrees has infinitely many coefficients≥1 and is excluded. | Entire algebra for D=0 is Laurent, not K. |
| §3.1 toric tilt | Disc; unit torus; characteristic-p rank-zero point | Exponent monoids remain ℤ[1/p]≥0, ℤ[1/p], {0}; plus coefficients tilt to K♭°. In characteristic p point comparison is identity. | Preserves charts, units and coefficient tilt. |
| §3.2 tilde-limit | Monomials at stages 0,1,2; rank zero | Exponents 1,1/p,1/p²; next stage pulls p/p² back to 1/p. Finite-support union contains every such monomial and is dense, unlike the forbidden all-one infinite family. Rank-zero tower is constant. | Both topology and density required. |
| §3.3 topological limit | Classical x; x=0,1,∞ | aₙ=(x^(1/pⁿ))♯ satisfies aₙ₊₁ᵖ=aₙ; 0,1,∞ give constant respective sequences. | Correct projection/root direction. |
| §3.4 projection / field naturality | Projective rescaling; p=2 line; equal characteristic | (λx)♯=λ♯x♯; coordinate sum at [1:1:0] is 0 over K♭, 2 over mixed K; equal-characteristic sum=0 on both sides. Field map i obeys i(x♯)=(i♭x)♯. | Corrected polynomial-tower conflation; no ring map. |
| §3.5 étale-topos limit | Algebraically closed point; inseparable t^(1/p); ℙⁿ | Finite étale point objects are Kʳ and (K♭)ʳ for r=0,1,2; purely inseparable t-root adds no finite étale objects; ℙⁿ is the Theorem 1.13 case. | Fibred-topos/colimit-site limit, not categorywise limit. |
| §3.6 open restrictions | U=∅,whole; U near ϖ; complement of ∞ | Preimages ∅,whole; |ϖ−ϖ|=0≤r² but |ϖᵖ−ϖ|=r>r²; φₚ⁻¹(∞)={∞}. | New decisive non-stability Check. |
| §3.7 full affine line | ϖ⁻¹; 0; 1; ∞ | Norm r⁻¹>1 stays admitted; zero and one towers retained; infinity tower excluded. | Full line, not disc. |
| §4.1 power cohomology | ℙ¹; p=2,ℓ=3; mixed-characteristic ℓ=p | H⁰=Λ,H¹=0,H²(Λ(1))=Λ; action 1,0,p. 1↦2 mod3≠1; 1↦0 modp is not a unit action. Rank-zero positive H=0. | ℓ=p counterexample explicitly mixed characteristic. |
| §4.2 projection cohomology | ℙ¹ with Λ=ℤ/3,p=2; cup unit; automorphism | Top transition 1↦2↦1; direct limit Λ, not Λ/(p−1). Unit cup h=h; fixed toric hyperplane class under field automorphism remains h. | Naturality and actual π* retained. |
| §5.1 section tube cofinality | t; t²; rescaling; empty family; higher-rank point | N₁(t) contains 0, excludes1; N₂c(t²)=Nc(t). N_c(ϖt)=N_c−1(t). Empty intersection=whole. If |f(x)|≠0, continuity makes some |ϖ|ᵃ<|f(x)|ᵇ, excluding x from that tube. | Constructible compactness, no real-valued-point assumption. |
| §5.2 approximation and denominator clearing | p=2,f=ϖ²χᵘ; monomial; g₀=a+b t^(1/p) | At c=0, zero g has error r²≤r^1/2; at c′>2 its permitted error is r^(5/2)<r². Exact monomial error=0. g₀ᵖ=aᵖ+bᵖt∈O(pD₋). |b′−b|<|b| gives |b′|=|b|>0. | Nonzero safeguard and powered line bundle. |
| §5.3 hypersurface approximation | Line on ℙ²; doubled equation; nonprojective fan; rank zero | Classes 1 and 2 become pᴺ and 2pᴺ in torsion-free Pic, never0; nonzero section zero sets are nonempty proper. Rank-zero nonzero scalar has empty zero set, excluded. | No projectivity/algebraic-closure hypothesis added. |
| §6.1 balancing and wall sign | ℙ¹; ℙ¹×ℙ¹; Spec ℂ/ℝ | [1,−1](a,b)=a−b; two rows send (1,0,1,0) to(0,0), (1,0,0,0) to(1,0). m₋−m₊=1=c·1. Degree evaluation Spec ℂ is ×2; split Spec k is ×1. | Wall sign fixed; split-orbit supplier hypothesis added. |
| §6.2 displacement product / degree | ℙ¹×ℙ¹; index-two rays; quotient by a ray; n=0 | O(a,b)O(c,d)=ad+bc; (2,0)(1,1)=2; (1,0)²=0. det((1,0),(1,2))=2. Displacement quotient dimension 1 rather than zero image of Nγ. Empty product degree1. | Integer multiplicities and quotient ambient retained. |
| §6.3 positive refined degree | Two fibres; two lines on ℙ²; repeated line; c=0 | δ=2 for two disjoint fibres; δ=1 for two line classes even when sections coincide; powered value p^(N₁+N₂). Empty common support would have Chow class0 of degree0, contradicting positive δ. For n=c=0, δ=1. | Excess does not imply proper intersection or connectedness. |
| §6.4 complete-intersection endpoint | c=0; one hypersurface; repeated vs distinct lines; xᵖ−t | Dimension n; n−1; identical lines have codim1 not2, distinct meeting lines codim2. xᵖ−t has field degree p before extension, then (x−t^(1/p))ᵖ has length p while reduction has length1. | Closed k₀-model retained; no false reduction descent. |
| Worked examples / common signs | ℙ¹ graded multiplication; product rulings; nonprojective fixture | (0,1)+(1,1)=(1,2); δ₀*δ₁ coefficient1. Ruling squares0 and cross product1 give ad+bc. Primitive relations each have equal vector sides (0,0,−1), (−1,0,0), (0,−1,0). | Examples agree with every layer using the same objects. |

Every named definition's individual API law is audited separately here. The laws have the hypotheses of their README subsection; numerical values are small exact instances, not a claim that these examples prove the theorem.

| API statement | Instances tried | Values on each side | Result and change |
|---|---|---|---|
| §0.1 API 1: Map a finitely supported integer ray coefficient function to the sum of the associated native point divisors. | ℙ¹ coefficients (2,−1) | Image has coefficients (2,−1); no support reduction to (1,−1). | The stated law has these values; carrier and hypotheses retained. |
| §0.1 API 2: The coefficient at D_i is a_i, and at a codimension-one point outside the ray boundary it is zero. | Ray and non-boundary points | At D₊ coefficient2; at an interior point coefficient0. | The stated law has these values; carrier and hypotheses retained. |
| §0.1 API 3: Two invariant divisors agree exactly when their ray coefficients agree. | Compare (2,−1) and (1,−1) | Divisors differ at D₊ by1; equal coefficient vectors (2,−1) yield equal sums. | The stated law has these values; carrier and hypotheses retained. |
| §0.1 API 4: For u∈M the character divisor has coefficient <u,v_i> at ray i. | Character t² | Pairings (+2,−2)=coefficients div(t²). | The stated law has these values; carrier and hypotheses retained. |
| §0.2 API 1: The subset of M cut out by all ray inequalities for D. | ℙ¹, d=2,−1; torus | W₂={0,1,2}; W₋₁=∅; W_torus=ℤ. | The stated law has these values; carrier and hypotheses retained. |
| §0.2 API 2: Membership is equivalent to <u,v_i>+a_i≥0 for every i. | d=1, u=0,1,2 | Ray-bound pairs (0,1),(1,0),(2,−1); membership true,true,false. | The stated law has these values; carrier and hypotheses retained. |
| §0.2 API 3: W(D+div χ^m)=W(D)−m. | D=D₋, m=1 | D+div(t)=D₊; W(D₊)={−1,0}={0,1}−1. | The stated law has these values; carrier and hypotheses retained. |
| §0.2 API 4: u∈W(D) and w∈W(E) imply u+w∈W(D+E). | D=E=D₋, u=1,w=1 | u+w=2∈W(2D₋)={0,1,2}. | The stated law has these values; carrier and hypotheses retained. |
| §0.3 API 1: The support-constrained A-submodule of A[M]. | ℙ¹,D=D₋ | Allowed polynomial a+bt, with outside coefficients0. | The stated law has these values; carrier and hypotheses retained. |
| §0.3 API 2: For u∈W(D), χ^u is a basis element. | u=1, coefficient3 over ℤ | Monomial has coefficient3 at1,0 at0 and2. | The stated law has these values; carrier and hypotheses retained. |
| §0.3 API 3: Two sections agree iff all character coefficients agree. | a+bt versus a+ct | Equality iff b=c; differing coefficient at1 detects failure. | The stated law has these values; carrier and hypotheses retained. |
| §0.3 API 4: Coefficient change acts on each monomial coefficient and satisfies identity and composition; it induces the tensor base-change isomorphism. | ℤ→ℤ/2→𝔽₄; section3t | Successive coefficient images t and t; direct image t; identity image3t. | The stated law has these values; carrier and hypotheses retained. |
| §0.3 API 5: Convolution multiplication sends S_A(D)×S_A(E) to S_A(D+E), associatively and with the unit in S_A(0). | (1+t)·t for D=E=D₋ | Convolution=t+t²∈S(2D₋); 1·f=f; (t·t)·1=t·(t·1)=t². | The stated law has these values; carrier and hypotheses retained. |
| §0.5 API 1: Build the character trivializations and their integral invertible sheaf for a Cartier divisor. | ℙ¹,D=D₋ | Local modules generated by 1 and t; multiplication by each frame has rank1. | The stated law has these values; carrier and hypotheses retained. |
| §0.5 API 2: On σ the generator has character weight m_σ satisfying the negative coefficient equations. | Positive and negative rays | Pairings m₊·1=0=−a₊; m₋·(−1)=−1=−a₋. | The stated law has these values; carrier and hypotheses retained. |
| §0.5 API 3: The overlap transition is χ^{m_σ−m_τ}; transition products telescope on triple overlaps. | Three frames 1,t,1 | Ratios t⁻¹,t,1 multiply to1. | The stated law has these values; carrier and hypotheses retained. |
| §0.5 API 4: The sheaf and character generators commute with arbitrary coefficient change. | ℤ→k, D=2D₋ | Frames 1,t² remain 1,t²; no coefficient disappears from exponent data. | The stated law has these values; carrier and hypotheses retained. |
| §0.5 API 5: Integral change of frame preserves section valuation because the transition and its inverse are bounded by one. | Unit u=t on |t|=1 | |u|≤1 and |u⁻¹|≤1 imply |u|=1; |uf|=|f|. Nonunit ϖ gives r|f|. | The stated law has these values; carrier and hypotheses retained. |
| §1.1 API 1: The glued adic space A_{Σ,K}, with its structure and plus sheaves. | ℙ¹ model | Two disc charts, with overlaps |t|=1; glued space whole ℙ¹ᵃⁿ. | The stated law has these values; carrier and hypotheses retained. |
| §1.1 API 2: Each σ has its named open affinoid embedding, and these images cover A_{Σ,K}. | Positive and negative cone charts | Images |t|≤1 and |t⁻¹|≤1; union=whole, intersection=|t|=1. | The stated law has these values; carrier and hypotheses retained. |
| §1.1 API 3: The face embedding agrees with the rational unit localization of the monoid chart. | Face zero⊂positive ray | Completed localization adds t⁻¹ with |t|≤1,|t⁻¹|≤1, hence |t|=1. | The stated law has these values; carrier and hypotheses retained. |
| §1.1 API 4: Complete valued-field extension gives the corresponding base change of A_{Σ,K}, preserving the chart cover and integral models. | Complete extension K→L; rank one | Base-changed disc algebra L⟨t⟩; character t↦t; face remains |t|=1. | The stated law has these values; carrier and hypotheses retained. |
| §1.3 API 1: The coefficient-linear endomorphism φ_q on a toric chart, glued to the toric model. | q=2, coefficient a | a+bt↦a+bt², with coefficient a fixed. | The stated law has these values; carrier and hypotheses retained. |
| §1.3 API 2: φ_q*χ^u=χ^{qu} and φ_q*a=a. | q=3, monomial t² | Pullback t²↦t⁶; scalar a↦a. | The stated law has these values; carrier and hypotheses retained. |
| §1.3 API 3: φ_1=id and φ_q∘φ_r=φ_{qr}. | q=1 and q=2,r=3 | t↦t under identity; both composites give t⁶. | The stated law has these values; carrier and hypotheses retained. |
| §1.3 API 4: φ_q*D=qD for invariant Cartier D; section weights multiply by q. | D=D₋ on ℙ¹,q=2 | φ₂*D₋=2D₋; weight1↦2 within W(2D₋). | The stated law has these values; carrier and hypotheses retained. |
| §2.1 API 1: Glue the perfected chart spectra to T_{Σ,K}. | Positive ray and rank zero | Glued one-chart disc; point algebra K when monoid={0}. | The stated law has these values; carrier and hypotheses retained. |
| §2.1 API 2: Its cone charts are the named perfected monoid spectra, with unit face overlaps. | Zero face of positive ray | Perfected overlap has t^(±1/pⁿ), valuation |t|=1. | The stated law has these values; carrier and hypotheses retained. |
| §2.1 API 3: pr_n on a chart pulls χ^u back to χ^{u/p^n}; φ∘pr_{n+1}=pr_n. | n=0,1,2 | Pullback exponent1,1/p,1/p²; p·(1/p²)=1/p. | The stated law has these values; carrier and hypotheses retained. |
| §2.1 API 4: Perfectoid valued-field extension and fan-compatible maps commute with the chart construction and projections. | Field extension and q=2 character map | t^(1/p) goes to the same t^(1/p) over L; exponent map gives t^(2/p) in both orders. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 1: The Banach coefficient module c₀(W^p(D),K), with its chartwise divisorial-sheaf interpretation. | ℙ¹,D=D₋ | Admissible weights 0,1/p,1; all-one infinite family has infinitely many coefficients≥1 and fails c₀. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 2: Equality is coefficientwise and the norm is the supremum of coefficient norms. | 2χ⁰+ϖχ¹ | Coefficient sup=max(|2|,r); equality with 2χ⁰ requires ϖ=0, which is false. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 3: The finite-support span is dense and bounded K-linear maps to complete normed K-modules extend uniquely. | Series with coefficientsϖⁿ at distinct weights | Tail after N has norm at most r^(N+1)→0; the infinite-support limit is absent from the incomplete span, so identity into that span cannot extend. Complete target required. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 4: Convolution gives a bounded product Ŝ(D)×Ŝ(E)→Ŝ(D+E). | χ⁰ and χ¹ in Ŝ(D₋) | Productχ¹ belongs to Ŝ(2D₋), norm1≤1·1. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 5: A common p-power denominator for character weights and divisor coefficients makes the powered section algebraic in O(pⁿD). | a+b t^(1/p),D=D₋ | pth power aᵖ+bᵖt in O(pD₋); homogeneous degree p, with integral character weights 0,1. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 6: For u∈W^p(D) and c∈K, cχ^u has coefficient c at u and zero at every other weight. | cχᵘ with u=1/p | Coefficient at1/p=c, at0=0. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 7: For f∈Ŝ(D), g∈Ŝ(E) and z∈W^p(D+E), (f*g)_z=Σ_{u+w=z} f_u g_w, with the sum over pairs in W^p(D)×W^p(E). The family is summable: above any positive norm threshold only finitely many pairs contribute. | δ₀*δ₁, output weight1 | One contributing pair (0,1), sum=1; output weight0 sum=0. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 8: (cχ^u)*(dχ^w)=(cd)χ^{u+w} in Ŝ(D+E), with the ray inequalities giving admissibility of u+w. | (2χ⁰)*(3χ¹) over residue characteristic5 | Output6χ¹; coefficient6≠0; monomial weight0+1=1. | The stated law has these values; carrier and hypotheses retained. |
| §2.2 API 9: The convolution Gauss norm satisfies ‖f*g‖≤‖f‖‖g‖. | χ⁰ and ϖχ¹ | Norm product r equals RHS1·r; zero input gives0≤0 without dividing by its norm. | The stated law has these values; carrier and hypotheses retained. |
| §2.3 API 1: The homogeneous ray-inequality cone C_D and its perfected lattice monoid Q_D. | ℙ¹,D=D₋ | Inequalities u≥0,j−u≥0 define same cone as nonnegative (u,j−u). | The stated law has these values; carrier and hypotheses retained. |
| §2.3 API 2: The grading sends (u,j) to j and its fibre is the weight set of jD. | Degree j=0,1,2,−1 | Fibres {0},[0,1],[0,2],∅ in ℤ[1/p]. | The stated law has these values; carrier and hypotheses retained. |
| §2.3 API 3: Q_D is closed under addition and division by p. | (0,1),(1,1) in Q_D | Sum(1,2)∈Q_D; division gives(0,1/p),(1/p,1/p)∈Q_D. | The stated law has these values; carrier and hypotheses retained. |
| §2.3 API 4: For D′=D+div χ^m, (u,j)↦(u−jm,j) identifies Q_D with Q_D′ and preserves degrees. | D=D₋, D′=D₊,m=1 | (u,j)↦(u−j,j); 0≤u≤j becomes −j≤u−j≤0; grading staysj. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 1: The P2 completed cone algebra indexed by Q_D, identified with the completed graded section sum. | D=D₋ on ℙ¹ | Monomialχᵘ in degreej maps to χ^(u,j); allowed pair(1,2)↦(1,1) in positive quadrant. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 2: Degree-j elements have coefficients only at Q_D weights of grading j. | Support at (0,1),(1,1) versus (0,2) | First two terms homogeneous degree1; mixing (0,1),(0,2) is not homogeneous. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 3: The degree-j piece is isometrically Ŝ(jD), and products add degrees. | Degree1 times degree2 | Output degree3; weight1+1=2 lies in [0,3]. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 4: The tilt has the same perfected monomial cone over K♭, with sharp preserving a homogeneous degree. | Single monomial (1,2) | Tilt keeps degree2 and sharp returns same monomial; multiplicative sharp gives degree addition. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 5: For complete Σ the degree-zero piece is exactly K. | Complete D=0 versus positive ray | Complete degree0 weight only0; incomplete degree0 has weights0,1,2,… . | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 6: For z=(u,j)∈Q_D and c∈K, cχ^z is the singleton coefficient family of degree j. | cχ^(1,2) | Coefficient at(1,2)=c and at(0,2)=0; degree2. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 7: The named convolution operation has coefficient (f*g)_z=Σ_{x+y=z} f_x g_y, defined by extension of finite-support monoid-algebra multiplication; its norm is at most ‖f‖‖g‖. | δ_(0,1)*δ_(0,−1) | Output δ_(0,0), norm1≤1. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 8: (cχ^{(u,j)})*(dχ^{(v,k)})=(cd)χ^{(u+v,j+k)}. This specifies both character multiplication and addition of homogeneous degrees. | (2χ^(0,1))*(3χ^(1,2)) | Output6χ^(1,3); degree1+2=3. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 9: At z∈Q_D the convolution coefficient is Σ_{x+y=z} f_x g_y; this sum converges by the c₀ condition. | Convolution at (1,2) of two degree1 sums | (a+b t)*(c+d t) coefficient at weight1=ad+bc; finite pair sum, not ac or bd. | The stated law has these values; carrier and hypotheses retained. |
| §2.4 API 10: ‖f*g‖≤‖f‖‖g‖ for the named convolution and coefficient Gauss norm. | χ^(0,1) times ϖχ^(0,−1) | Norm r=1·r; zero factor gives norm0. | The stated law has these values; carrier and hypotheses retained. |
| §3.4 API 1: The level-zero continuous projection from the tilted unit toric space. | Rank-zero tower | Level-zero projection sends its unique compatible point to itself. | The stated law has these values; carrier and hypotheses retained. |
| §3.4 API 2: On P^n classical points it is given by homogeneous coordinate sharp. | Classical ℙ¹ points0,1,∞ | Images0,1,∞; coordinate t↦t♯. | The stated law has these values; carrier and hypotheses retained. |
| §3.4 API 3: π∘φ_p=φ_p∘π on underlying spaces. | Classical coordinatex | (xᵖ)♯=(x♯)ᵖ by multiplicativity, equal both compositions. | The stated law has these values; carrier and hypotheses retained. |
| §3.4 API 4: The inverse image of each toric stratum is the corresponding tilted stratum. | Zero, infinity and dense torus | Preimages0,∞,nonzero finite coordinates respectively; no boundary exchanged. | The stated law has these values; carrier and hypotheses retained. |
| §3.4 API 5: For every open U the set V=π⁻¹(U) is open and carries the restricted topological map. | U=∅,whole, disc tube | Preimages∅,whole, matching |t|≤r tube; each is open. | The stated law has these values; carrier and hypotheses retained. |
| §3.4 API 6: For a continuous isometric embedding K→L of perfectoid fields, with induced K♭→L♭, the base-change maps A_{Σ,L♭}→A_{Σ,K♭} and A_{Σ,L}→A_{Σ,K} intertwine π_L and π_K, and π_L⁻¹(U_L) is the preimage of π_K⁻¹(U) for every open U⊂A_{Σ,K}. In particular a continuous automorphism σ of a completed algebraic closure C of K, with its tilt σ♭, commutes with π_C. | Isometric field embeddingi and projective scalingλ | i(x♯)=(i♭x)♯; (λx)♯=λ♯x♯; both naturality-square coordinate values agree. | The stated law has these values; carrier and hypotheses retained. |
| §6.1 API 1: The Z-submodule of integer cone weights annihilated by the finite character balancing matrix. | ℙ¹ balancing row[1,−1] | Kernel={(a,a)}⊂ℤ²; integer subgroup closed under + and −. | The stated law has these values; carrier and hypotheses retained. |
| §6.1 API 2: A weight belongs exactly when every character balancing sum vanishes. | Product-fan vector(1,0,1,0) versus(1,0,0,0) | Row outputs(0,0) versus(1,0), membership true versusfalse; both directions of kernel condition. | The stated law has these values; carrier and hypotheses retained. |
| §6.1 API 3: Two intersection weights agree exactly when their values on all indexed cones agree. | Product-fan weights(1,0,1,0),(0,1,0,1) | Unequal at first ray1≠0; equal four coordinates give equal functions. | The stated law has these values; carrier and hypotheses retained. |

The c₀ convolution convergence argument treats a zero factor separately. For nonzero factors of norms F,G, a product coefficient ≥η forces the two input norms ≥η/G and ≥η/F, hence only finitely many pairs. No division by zero enters. The rational threshold has positive denominator b; all negative weights live in additive groups, and n−c is used only with 0≤c≤n, so there is no natural-number subtraction junk value. The ray charts of rank n−1 occur only when a ray exists, which implies n≥1. No total polynomial degree or out-of-range array index appears in any target.

## Elaboration, binder audit, citation resolution and dependency direction

Ran `lake env lean` on the absolute form of `packages/AnalyticToricGeometryPartII/Suggested.lean` from the content checkout, using the manifest pins above. Final exit status: **0**. Exact number of `sorry` warnings: **0**. Other Lean messages: **none** (the output file is empty). There is one import, `import Mathlib`, and no Tau Ceti imports because no Tau Ceti declaration is used by a statement. No module build was needed and no Lean process was left running.

Mechanically enumerated every local theorem, definition, abbreviation, structure, instance and opaque declaration for the required `#check @name` binder audit: the enumeration is empty. Therefore the scratch audit generates zero `#check` lines, and there is no retained declaration whose implicit binders can drop a README hypothesis. No hypothesis or generality changed through Lean elaboration. This does not represent any geometric target as proved or statable.

The README identifier audit finds zero own backticked declaration claims and zero missing ones; there is no API padding. Source/metadata TOML parse successfully. Citation resolution was rerun with the actual pinned Lake-package directory, yielding:

| Resolution category | Output |
|---|---|
| Cross-roadmap citations found nowhere | None. |
| Lean names found nowhere | None. |

The typography repair replaces all 112 TeX-style subscript and exponent groups in `packages/AnalyticToricGeometryPartII/README.md` with Unicode or explicitly grouped plain notation. The worker's scanners now report **tex=0** and **latex=0**. All mathematical statements, hypotheses, signs, computed values, locators, code spans and section headings are preserved. The adversarial-pass table therefore remains applicable. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are byte-for-byte unchanged by this repair; the recorded elaboration and binder audit remain applicable.

The dependency check was run with the required name, order and movable mode on the completed README. Its complete output is:

```text
depcheck: 29 roadmaps, 260 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Later consumers are not prerequisites. The order file, library pins, content checkout and top-level roadmap list were not edited. All deliverable references use repository-relative paths; sources remain solely in the source-service cache.
