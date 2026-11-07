# Repair report: AdicSpacesPartV

## F01 (P2) — applied

Compound resolution request → separate generically reduced extension and countable reduced-invariant gaps, matching README contracts and plan entries. Both appear in §5.3 and Layer 5 Dependencies. Supplier Checks distinguish the reduced disjoint union from the quasi-compact embedded-nilpotent example. Evidence: ResolutionOfSingularitiesCharacteristicZero §§7.5–7.6 restrict to reduced schemes; TEMKIN12 line 99 and lines 1570–1574 supply the two mathematical inputs.

## F02 (P2) — applied

New global-dimension definition → import of AdicEtaleGeometry A2.6 and local/global comparison target. Updated Scope, Conventions, §0.2, its proof route, API, Checks and Dependencies. Computations include the product (dimension 1), empty space (⊥), and rank-two field-spectrum exclusion. Ownership: TauCetiRoadmap/AdicEtaleGeometry/README.md, A2.6, lines 7403–7454. Local dimension remains owned here.

## F03 (P3) — applied

Global formal-localization gap on §§4.1 and 4.3 → affinoid formal-model inputs alone; the global gap remains in §4.6. Replaced loose resolution and quotient contract references in §§5.3 and 6.4 with exact slugs; synchronized Layer 5 Dependencies. BH22 lines 243–252 construct the individual affinoid model; lines 339–344 require global realization only for the formal characterization.

## F04 (P3) — applied

Circular Needs edges → §4.2 explicitly consumes §4.3, which no longer consumes §4.2. Moved both transcendence-dependent API bullets from §4.4 to §4.6, preserving their hypotheses. The supply chain is §4.1 → §4.3 → §4.2 → §4.4 → §4.6. Evidence: BH22 line 235; POINEAU13 line 705 and lines 893–898.

## F05 (P3) — applied

Unsupported definition attribution → explicit local convention, with BH22 line 332 identified as a use. Moved CONRAD99 lines 653–655 to §1.4; corrected §1.8 to lines 801–805 with its algebraically closed qualification, §5.4 to HK2 line 2708, and the Layer 0 section name. Extended both manifest records and all three reference page lists; retained every source entry.

## F06 (P3) — applied

Different headline lists → Summary includes infinite-residue Gauss closure and both coordinate and group forms of subfield detection. The Lean docstring explicitly lists resolution connectedness and the G(C) form as unstatable, naming the missing carriers. No stand-in theorem or extra declaration was added. HK2 lines 2708–2713 and 2730–2734 identify the resolution and Gauss-closure applications.

## F07 (P3) — applied

Unbounded disc-radius Check → 0 < abs(c) < 1, with the positive and negative witnesses computed in §6.2. For c = p over ℚ_p, abs(c) = 1/p and abs(T) = 1 throughout the disc about 1; at radius 1, T = 0 belongs to the disc. Other polydisc-radius conventions were searched and retained their stated bounds.

## Required checks and mechanical consistency

- Elaborated packages/AdicSpacesPartV/Suggested.lean with the prescribed `lake env lean` invocation from the pinned content checkout: exit 0. Its complete diagnostics were the three expected warnings that declarations use `sorry`, at lines 49, 66 and 98. No object file was missing; no module build was needed.
- Appended `#check @name` for each of the four declarations to one scratch copy and elaborated it once successfully: exit 0, the same three warnings, and all four elaborated types. An initial scratch-generation attempt used the wrong working directory and produced no file; correcting its input path resolved that preliminary invocation. No package statement needed a binder repair.
- Compared every elaborated type against README §§3.4, 6.1 and 6.5, as recorded below. Only the module docstring changed in Suggested.lean; all four signatures and names are unchanged.
- JSON and both TOML files parse. All four gap sentences match the README verbatim. Comparing the parsed plan against its original verifies that only its top-level gaps changed; the textual diff also contains only that list.
- All four Lean declaration names occur in the README. There are no new Lean declarations, no sorry'd data and no forbidden commands. Imports remain one `import Mathlib` and the used native polydisc module. Every definition retains its API and at least three prose Checks; §0.2 has six, and the other thirteen API-bearing subsections have between three and six.
- Parsed every Layer 4 Needs line and ran a depth-first cycle check: no internal cycle. The final diff passes `git diff --check`.
- Citation resolution against indexed main 8888d45 and the 363 indexed open heads finds no unresolved cross-roadmap citations or roadmap Lean names. That tool does not check pinned library names; the pin checks below do.
- No separate gate failures were supplied in the brief. The seven findings above are all addressed. No source request is outstanding; SCHNEIDER11 and ANDRE74 retain their settled uncertified status.

| Declaration | Elaborated assumptions and conclusion compared with README | Outcome |
| --- | --- | --- |
| IsUnitGaussPoint | Nontrivially normed ultrametric nonarchimedean field K, n, actual native polydisc point; every comparison equals the corresponding unit Gauss-norm comparison | All binders explicit; completeness is unnecessary for this predicate |
| gaussPoint_mem_closure_rationalPoints | Additionally complete K and infinite native residue quotient; every n and base spectrum point; existence of the specified Gauss point in the rational evaluation closure | Infinite residue and completeness retained; no loss of the base point or dimension binder |
| analytic_constantRank | Complete characteristic-zero nontrivially normed F; m,n,k and both inequalities; native analytic manifolds; analytic germ and neighbourhood rank hypothesis; centred analytic coordinates and inverses with MapsTo and the stated coordinate formula | All field, rank and manifold hypotheses retained; no global separation hypothesis introduced |
| analytic_germ_eq_zero_of_subfield | Both complete characteristic-zero nontrivially normed fields, NormedAlgebra E C, m, actual C-analytic scalar germ, eventual vanishing on E^m; eventual vanishing on C^m | Both completeness assumptions and the actual embedding retained |

The required dependency command exited 0 with exactly:

```text
moved: AdicSpacesPartV moved in the merge order from #10 to #11, right after its last supplier AdicEtaleGeometry; checked as moved (the worker moves it there when it submits)
depcheck: 51 roadmaps, 585 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The movement is the checker's treatment of the explicit dimension supplier, despite the review's prediction of no movement. No merge-order file was edited.

## Sources, pins and ownership

All mathematical decisions and edits were made directly. Read the main-branch README shapes of RigidAnalyticGeometry, StableReduction and SchemeAndStackFoundations. Reopened the cited legal cached sources, including the full proof contexts used for the changes. No source text was copied into the package. All nine manifest keys remain, with the same access statuses and hashes. The two settled paywalled entries were not requested again.

The checked pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Both checkout HEADs equal the revisions in the content manifest. The content snapshot matches the citation index's main revision 8888d45; the local branch label was not used as a substitute for that indexed snapshot.

| Interface checked | Exact location and conclusion |
| --- | --- |
| Native dimension | Mathlib/Topology/KrullDimension.lean:37 defines topologicalKrullDim in WithBot ℕ∞; Mathlib/RingTheory/KrullDimension/Basic.lean:26 defines ringKrullDim, and line 38 characterizes its bottom value by the zero ring. Neither definition identifies topological and coordinate-ring dimensions automatically. |
| Open-cover dimension | TauCeti/Topology/KrullDimension.lean:53, topologicalKrullDim_eq_iSup_of_isOpenEmbedding, takes open embeddings covering every point. The new route supplies exactly such an affinoid cover. |
| Global adic dimension owner | TauCetiRoadmap/AdicEtaleGeometry/README.md, A2.6, lines 7403–7454: topological dimension, the open-cover input, pure-dimension convention and classical local-ring criterion. These apply over Spa(K,K°); its rank-two K⁺ example is outside the new affinoid comparison. |
| Rigid algebra and comparisons | TauCetiRoadmap/RigidAnalyticGeometry/README.md §§1.1–1.3, 2.1–2.3, Layers 3–4, §§6.2, 7.3–7.4, 8.1–8.3 were resolved at main. Layers 3–4 begins at line 398; there are no individually numbered §§3.1–4.2. |
| Adic geometry inputs | TauCetiRoadmap/AdicSpacesPartII/README.md R0.6–R0.17 and R1.1–R1.9 were resolved at main: relative analytification is R1.2, completed classical local comparisons R1.5, properness R1.6, and the identity principle R1.9. |
| Formal and coherent inputs | TauCetiRoadmap/AdicSpacesPartIII/README.md R2.2–R2.5 and R3.1–R3.3, R3.6: formal models, specialization, Raynaud localization and coherent/proper mapping contracts. The prescribed global formal-affine realization with canonical-reduction compatibility remains an explicit supplier gap. |
| Scheme algebra | TauCetiRoadmap/SchemeAndStackFoundations/README.md §§0.3, 0.21, 4.11: relative Proj, excellent local algebra and modifications. TauCetiRoadmap/StableReduction/README.md Layer 4, lines 468–472: Rees blow-ups, their universal property and flat base change. |
| Resolution owner | ResolutionOfSingularitiesCharacteristicZero open head, §§7.1, 7.5–7.8: reduced marked resolution and regular-morphism functoriality. Read §§7.5–7.6 directly; neither states the generically reduced extension nor a countable invariant universe for the reduced functor. Both requests are now separately recorded. |
| Quotient owner | TauCetiRoadmap/ReductiveGroups/README.md Layer 3, lines 234–241: represented fppf quotients under hypotheses. It does not state smoothness of the represented torsor map. The existing quotient gap remains single and unchanged. |
| Native polydisc and evaluation | TauCeti/AlgebraicGeometry/AdicSpace/Spa/Polydisc/Basic.lean:72, 147, 156, 182: closedPolydisc, classicalPoint, classicalPoint_vle, classicalPoint_injective_of_isField. The carrier is a subset of the actual valuation spectrum; it is not a rigid-space category. |
| Gauss comparison | TauCeti/RingTheory/MvPowerSeries/TateAlgebra/Basic.lean:241, IsRestricted.gaussNorm_mul, retains positive polyradii and multiplicative coefficient norm. TauCeti/RingTheory/Huber/Restricted/GaussNorm.lean:80 and 87 supply restrictedMvPowerSeriesGaussEquiv and preservation of the underlying series. |
| Analytic native carriers | Mathlib/Geometry/Manifold/IsManifold/Basic.lean:777 extends chart compatibility, without T2 or second-countability fields. Mathlib/Geometry/Manifold/Submersion.lean:171 and Immersion.lean:190 give the chart predicates used by §6.4. |
| Inversion | Mathlib/Analysis/Calculus/FDeriv/Analytic.lean:141, AnalyticAt.hasStrictFDerivAt; Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:117, HasStrictFDerivAt.toOpenPartialHomeomorph; Mathlib/Analysis/Analytic/Inverse.lean:656, OpenPartialHomeomorph.hasFPowerSeriesAt_symm. These supply local inversion, not constant rank. |
| Missing rigid headlines | TauCeti/AlgebraicGeometry/AdicSpace/PreAdicSpace/Adic.lean:243 has AdicSpace, but object searches at both pins find no rigid finite-type/smooth morphism and rational-point-atlas carriers needed for the omitted geometric headlines. No free predicate or ad hoc replacement was introduced. |

Ownership searches used the roadmaps tool over main and open heads, with narrower follow-ups where its broad result was truncated, and object searches across board packages and pinned libraries. In particular, searched dimension, normalization, components, Shilov/canonical reduction, rigid blow-ups and resolution, Gauss closure, analytic constant rank and rational-point charts. Open work was checked, including the supplied sibling index; no claim of having checked unavailable unindexed heads is made.

The comparison in §0.2 is this roadmap's extension from the supplied global dimension to its own local dimension. The generic adic dimension remains imported. TropicalAndBerkovichArithmetic §4.5 uses Shilov lifts for relative tropical multiplicity rather than owning this local/global rigid comparison. ReductiveGroupsPartII RG2.0.2 owns group-specific charts and Haar Jacobians; AbelianSchemesAndArithmeticModuliPartII B2.10 owns the real finite-Cᵏ extension, and LieGroupoidsPoisson G0.1 owns real smooth constant rank. Their exact sections were read at the indexed heads; none supplies the nonarchimedean analytic theorem here. AdmissiblePairsAndPadicHodgeStructures explicitly consumes this package's Gauss closure, weakly Shilov and resolution geometry. DiamondsAndVStacks D6.4–D6.5 and D6.9 were also reopened: its affinoid algebraic-resolution analytification remains a downstream application. No later roadmap was introduced as a supplier.

## Adversarial mathematics pass

The following are computed mathematical instances, not a claim that elaboration proves the admitted theorems. Repeated formulations of the same fact in an API, Check or worked example share its row; distinct facts have separate rows. The changed targets and all their dependent Checks are included. Here D is the unit disc, η its unit Gauss point, and π satisfies 0 < abs(π) < 1. Empty dimensions use WithBot ℕ∞, never truncated natural subtraction. Each equivalence is tested on satisfying and failing inputs.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| Standing valued-field hypothesis | ℚ₂, ℚ₃, 𝔽₂((t)); trivially valued field | abs(2)=1/2, abs(3)=1/3, 0<abs(t)<1; trivial norm has no π | Nontrivial norm retained | None |
| Analytic versus completed residue fields | T=0; Gauss point | k(0)=H(0)=K; H(η) is completed fraction field, H(η)̃=K̃(T) | Residue fields distinguished | None |
| Secondary residue convention | η; rational point | trdeg K̃(T)=1; trdeg K̃=0 | Not the analytic residue field | None |
| Global dimension convention | Spa K; empty; disjoint union D^n | 0=0; ⊥=sup ∅; ∞=sup n | Imported topological dimension agrees with comparison | F02 |
| Nonempty connected/irreducible convention | empty; Spa K | preconnected(empty)=true, connected=false; both predicates true on point | Empty exclusions retained | None |
| Reduced Zariski structure | K[ε]/ε² | radical(0)=(ε); reduction K; dimensions 0=0 | Nilpotents affect structure, not dimension | None |
| Normality is not geometric normality | purely inseparable finite field L/K | L integrally closed; L⊗K L has ε≠0 with ε^p=0 | No geometric hypothesis smuggled in | None |
| Rational-domain denominator | f=0,g=0; f=π,g=T at η | 0≤0 but g=0 excludes domain; abs(π)≤1 and g≠0 at η | Zero denominator excluded | None |
| Spectrum/specialization direction | inclusion K→K⟨T⟩ | both sp_K∘Spa(φ) and Spec(φ̃)∘sp_A map to (0) | Sources and targets agree | None |
| Gauss normalization | π+T at η and at 0 | max(abs(π),1)=1; evaluation abs(π) | Inverse/rescaled convention excluded | None |
| Tangent direction and constant-rank coordinates | T² at a; (x,y)↦(x,0) | derivative u↦2au; rank 1 normal form (x,0) | Source-to-target direction pinned | None |
| Inversion contract | T+T²; T^p; zero-dimensional model | derivative 1 and inverse T−T²+2T³; derivative 0 at 0; unique 0→0 is invertible | Inverse-series signs and dimension zero agree | None |
| Classical-point supplier | T²−p, p=2,3; T=t transcendental | residue degree 2, abs(T)=p^(−1/2); infinite residue degree for transcendental t | Finite degree, not rationality or rank alone | None |
| Classical density supplier | η in D; empty; Spa L | η nonclassical but each open meets Max A; counts 0 and 1 | Empty/density conventions compatible | None |
| Formal localization gap | disc; dual numbers | Spec K̃[T] and Spec(K°/π)[T] have same points; dual-number spectra each have 1 point | Homeomorphism does not require ring isomorphism | None |
| Formal localization beyond quasi-compactness | countable disjoint union of discs | chosen component has one formal affine chart; whole union needs infinitely many | Global gap remains in §4.6 | F03 |
| Reduced resolution supplier | regular point; cusp | 0 steps, identity; exponent 3→1 after 1 origin blow-up | Existing reduced theorem suffices | None |
| Generically reduced resolution gap | A=K⟨x,y⟩/(y²,xy) | A[1/x] has y=0; origin dim=1, cotangent dim=2; blow-up charts K⟨x⟩ and empty | Nonreduced support is exactly {0}; extension needed | F01 |
| Countable invariant gap | disjoint union y²=x^(2n+1), n=0,1,2 | blow-up counts 0,1,2; exponents 1, 3→1, 5→3→1 | No global finite bound; all components reduced | F01 |
| Excluding generically nonreduced birational claim | Spec K[ε]/ε² | only nonempty open is itself; a regular source has ε=0 | Cannot be isomorphic on a dense open | None |
| Smooth quotient contract | S₃/C₂; GL₂/B | finite quotient has 3 points, fibres 2; dimensions 4→1 with fibre dimension 3 | Smoothness compatible with nonabelian groups | None |
| §0.1 coherent zero locus | D, I=(T); dual point, I=(ε) | V(T)={0}, η excluded; V(ε)=whole point | Coherent support definition distinguishes models | None |
| §0.1 radical/reduced correspondence | I=(T²), J=(T) | V(I)=V(J)={0}; radical(I)=J | Multiplicity forgotten only in reduced subspace | None |
| §0.1 finite-union law | I=(X), J=(Y) in bidisc | V(IJ)=V(XY)=two axes=V(I)∪V(J) | Product, not intersection of loci | None |
| §0.1 arbitrary-intersection law | I=(T), J=(T−1); empty family | I+J=(1), intersection empty; empty sum 0 gives whole space | Both boundary directions agree | None |
| §0.1 inverse-image law | T↦T², I=(T) | pulled-back ideal (T²); both underlying preimages {0} | Nilpotent pullback retained | None |
| §0.1 closedness and Zariski topology | V(1), V(0); closed subdisc | empty and whole; subdisc has interior but is proper, so cannot be coherent Zariski closed | Coarser topology distinguished | None |
| §0.1 classical trace | A=K×K; quotient by one factor | maximal spectra have 2 and 1 points; analytic traces have 2 and 1 | Closed-subspace comparison agrees | None |
| §0.1 reduction invariance | dual point | V(0)=V(ε)=one underlying point; reduction unchanged as a set | Nonreduced ambient allowed | None |
| §0.2 local minimum | D^n, n=0,1,2 | every affinoid neighbourhood minimum is 0,1,2 respectively | Tangent-dimension surrogate excluded by cusp below | F02/F05 |
| §0.2 classical local-ring comparison | isolated point; cusp origin | local dimensions 0,1; local-ring Krull dimensions 0,1 | Equality with ring dimension | F02/F05 |
| §0.2 local bound and attainment | isolated point inside Spa(K×K⟨T⟩) | local minimum 0≤global affinoid dimension 1; component neighbourhood has dimension 0 | Minimum attained, global value not substituted | F02 |
| §0.2 upper semicontinuity | disjoint point and disc | local values 0 and 1; locus below 1 is the isolated open component | Correct direction | None |
| §0.2 immersion inequality | point↪D; open subdisc↪D | 0≤1; 1=1 for open immersion | Closed case need not be strict for all immersions | F02 proof wording |
| §0.2 reduction invariance | K⟨T,ε⟩/ε² | reduction K⟨T⟩; local dimensions 1=1 | Nilpotents do not change chains | None |
| §0.2 global/local/affinoid comparison | Spa(K×K⟨T⟩) | topological dimension 1=max(0,1)=sup local dimensions=ring dimension | Imported ownership and comparison agree | F02 |
| §0.2 empty comparison | zero coordinate ring | topological dimension ⊥=sup ∅=ringKrullDim 0 | No dimension assigned to a nonexistent point | F02 |
| §0.2 pure-domain step of proof | A=K, K⟨T⟩, K⟨X,Y⟩ | classical local-ring dimensions uniformly 0,1,2; supplied pure dimensions 0,1,2 | Finite minimal-prime cover gives maximum | F02 |
| §0.2 smooth rank comparison | D²; Spa K | rank Ω=2 and 0; local dimension=2 and 0 | Rank zero retained | None |
| §0.2 negative controls | cusp; rank-two K⁺ field spectrum | cusp dim 1 versus tangent 2; field spectrum topological dim 1 versus ring K dim 0 | Second object excluded from Spa(K,K°) finite-type hypothesis | F02 |
| §0.3 nowhere-density equivalences | V(T) in D; whole axis in XY=0 | first: no interior, ideal in no minimal prime, 0<1; second: interior exists, ideal in a minimal prime, 1=1 at generic axis neighbourhood | Both directions discriminate | None |
| §0.3 degenerate equivalences | empty X; nonempty Z=X; point in two-point X | all five conditions true on empty; false for Z=X; 0=0 on open point, hence not nowhere dense | Strict comparison and nonempty opens necessary | None |
| §0.4 proper-image support | identity; empty map; P¹×D→D | supports X, empty, D respectively; same three images | No surjectivity hypothesis on general f | None |
| §0.4 image of closed subset | closed point↪P¹ followed by P¹→Spa K | image one point; pushforward nonzero with whole point support | Restriction to closed source works | None |
| §0.5 regular affinoid restriction | identity; unit annulus inclusion; evaluation at 0 | identity has field fibres; annulus is regular restriction; evaluation kernel (T) makes it nonflat | Flatness alone not substituted | None |
| §0.5 smooth-map regularity | K→K⟨T⟩ at inseparable classical point T^p=a | residue K(a^(1/p)); base-changed algebra remains a power-series/Tate disc | Smoothness does not force separable classical residues | None |
| §0.5 scalar extension | K→K′ in characteristic 0; finite separable K′ | geometric field fibres reduced; completed disc local map K[[T]]→K′[[T]] | Ground-field direction and parameter agree | None |
| §0.5 characteristic-p exclusion | K→L=K(a^(1/p)) | L⊗K L=L[ε]/ε^p; ε≠0, ε^p=0 | Flat map fails geometric regularity | None |
| §1.1 normalization definition | cusp; crossing; double point | A^ν=K⟨t⟩; K⟨X⟩×K⟨Y⟩; K | Reduced total fraction ring essential | None |
| §1.1 normal source and finite surjectivity | cusp; crossing | B=A+At, finite rank ≤2, fibres 1; crossing origin fibre 2 | Finite and surjective, not necessarily an isomorphism | None |
| §1.1 restriction to opens | punctured cusp | t=Y/X; normalization becomes identity there | Restriction agrees | None |
| §1.1 stalk/product formula | crossing origin | normalization of local ring is product of the two branch stalks; fibre cardinality 2 | Product retained rather than one branch | None |
| §1.1 normal-locus isomorphism | normal disc; dual point | identity on disc; dual point map K[ε]/ε²→K kills ε | Normal locus of reduction distinguished from ambient normal locus | None |
| §1.1 dominant normal factorization | normalization disc→cusp; constant map to node | first factorization unique; node has two lifts for constant map | Dominance condition excludes ambiguous lift | None |
| §1.1 analytification comparison | nodal cubic x=t²−1, y=t(t²−1) | node lifts to t=1 and −1 on both algebraic and analytic normalization | Same marked morphism | None |
| §1.1 degenerate normalization | normal field; empty | K^ν=K; empty normalizes to empty | No nonempty assumption on construction | None |
| §1.2 characterization | cusp with exceptional origin | finite normal source, punctured isomorphism; exceptional source and target have dimension 0<1 | Positive direction meets every hypothesis | None |
| §1.2 target nowhere-density condition | one axis→crossing | missing axis has dimension 1 on an open component | Fails criterion despite normal finite source | None |
| §1.2 source nowhere-density condition | D⊔point→D with extra point over 0 | exceptional preimage contains an open point, dimensions 0=0 | Extra vertical component excluded | None |
| §1.2 cokernel support | cusp A⊂A+At | t mod A≠0; X·t,Y·t∈A, so support is {0} | Non-normal locus identified | None |
| §1.3 connected/idempotent criterion | D; Spa(K×K); empty | idempotents {0,1}; 4 idempotents; zero ring 0=1 but space empty | Nonempty criterion needed | None |
| §1.3 component construction and native comparison | D; two points | 1 open connected component; 2 singleton components | Native topological components agree | None |
| §1.3 clopens/unions/local finiteness | countable disjoint union of discs | any union clopen; quasi-compact open meets finitely many components | No global finiteness asserted | None |
| §1.3 morphism image | connected D→two-point space | image lies in exactly one point | Cannot straddle two clopens | None |
| §1.3 classical-topology negative control | D(ℚ_p)=ℤ_p | abs(T)<1 gives pℤ_p; abs(T)=1 gives ℤ_p×; both nonempty and open in classical topology | Does not disconnect the full adic disc | None |
| §1.4 coherent components via normalization | crossing; disjoint discs | normalization has 2 connected components, images 2 axes; disjoint discs give 2 components | Distinct from connectedness of crossing | None |
| §1.4 cover and local finiteness | crossing origin; countable union | origin lies on 2 components; quasi-compact subsets meet finite number | Cover includes intersection points | None |
| §1.4 irreducibility criterion | cusp; empty | normalization disc connected, hence 1 component; empty has 0 components | Nonempty irreducibility enforced | None |
| §1.4 containment/maximality | closed point on crossing; axes | point contained in axes; each maximal axis image is a component | Arbitrary irreducible subset is not itself necessarily a component | None |
| §1.4 reduced normal open | double thickened line | reduced line has normal complement/open; ambient retains ε≠0 | Qualification by reduction necessary | None |
| §1.4 irredundant cover | two axes; axes plus origin | two-axis cover irredundant; adding origin is redundant | Condition distinguishes component cover | None |
| §1.4 restriction versus local branches | integral nodal cubic near node | 1 global component; 2 small-neighbourhood branches, t=±1 above node | Stalk branches not global components | None |
| §1.4 irreducible dimensions | cusp and normalization; point | dimensions 1=1 at every point; point 0=0 | CONRAD99 locator now attached to actual claim | F05 |
| §1.4 normal connected implication | D; two disjoint normal discs | first connected and irreducible; second normal but has 2 components | Connectedness used | None |
| §1.5 irreducibility equivalences | D; crossing; empty | proper coherent subsets of D finite, no interior; crossing=two proper axes; empty excluded | Binary-union and interior directions agree | None |
| §1.6 full-dimensional subset criterion | point in D²; Y=X; Spa L | 0<2 for point; d=d for X; only nonempty closed subset of Spa L has dimension 0 | Full local dimension forces equality only in irreducible ambient | None |
| §1.6 connected smooth ambient consequence | one component in disjoint pair of discs | local dimensions 1=1; chosen component equals Y | Connected component conclusion, not all of disconnected ambient | None |
| §1.7 bounded Riemann extension | idempotent; 1/T on punctured D | idempotent norms ≤1; abs(1/π^n)=abs(π)^(−n)→∞ | Unbounded example excluded | None |
| §1.7 normality control | cusp function t=Y/X | bounded norm ≤1 but t∉K⟨t²,t³⟩; t∈normalization | Normality cannot be omitted | None |
| §1.8 connected complements | punctured D; nodal cubic minus node; crossing minus origin | component counts 1,1,2 | Last ambient not irreducible | F05 locator only |
| §1.8 original-field route | connected normal X, idempotent e on complement | e²−e=0 there and after extension; e=0 or 1 on connected X | No geometric-connectedness argument needed | F05 qualification |
| §2.1 singular-locus definition and classical trace | cusp; crossing | local dimensions 1, tangent dimensions 2; singular sets both {0} | Completion detects regularity | None |
| §2.1 Zariski closedness and restriction | cusp; punctured cusp | ideal has radical (X,Y); restriction ideal becomes unit, singular set empty | Gluing and radical convention agree | None |
| §2.1 reduced nowhere-density requirement | reduced cusp; dual point | {0} dimension 0<1; dual point singular set whole, 0=0 | Reduced hypothesis necessary for density | None |
| §2.1 smooth pullback | cusp×D→cusp | singular support {0}×D, dimension 1<2 | Inverse-image law, not arbitrary-map law | None |
| §2.1 algebraic/analytic singular comparison | algebraic cusp origin | analytic and algebraic completions K[[X,Y]]/(Y²−X³); both nonregular | Same support | None |
| §2.2 perfect-field smooth/regular equivalence | nodal curve away from node; Spa K | tangent/completion dimensions 1=1; 0=0 | Positive perfect-field cases | None |
| §2.2 completed local ring formula | rational point on D²; finite separable point on D | K[[X,Y]]; k(x)[[U]] | Residue extension included | None |
| §2.2 imperfect-field exclusion | L=K(a^(1/p)); L⟨T⟩ | L regular of dim 0 but dim Ω_L/K=1; extension disc regular but not smooth over K | Perfectness not dropped | None |
| §2.3 tangent definition | D^n at 0, n=0,1,2 | m/m²=K^n; dual dimensions 0,1,2 | Native zero-dimensional case | None |
| §2.3 derivative and chain rule | T² then T³ | derivatives 2a, 3a²; composite T⁶ derivative 6a⁵=(3a⁴)(2a) | Correct scalar extension and direction | None |
| §2.3 cotangent comparison | rational D point; purely inseparable field | both dimensions 1 for D; intrinsic tangent 0 versus relative Ω dimension 1 for inseparable field | Comparison restricted to separable residues | None |
| §2.3 tangent dimension regularity | cusp; dual point; Spa K | tangent/local dimensions 2/1, 1/0, 0/0 | Equality exactly in regular examples | None |
| §2.3 immersion injectivity | origin↪D; axis↪D² | 0→K injective; u↦(u,0) injective | Source-to-target inclusion | None |
| §2.3 extension/analytification | K-rational origin of A¹ and finite L/K | K⊗K L=L; algebraic and analytic tangent both K before extension | Comparisons agree | None |
| §2.4 singular stratification | cusp; plane∪line meeting at origin | dimensions 1→0→⊥ and 2→0→⊥; smooth strata partition each space | Reduced successive loci terminate | None |
| §2.4 zero/empty boundaries | reduced zero-dimensional X; empty | 1 stratum then empty; 0 strata | No natural-number subtraction at bottom | None |
| §2.5 minor rank locus | T² in char≠2; constant; identity D² | rank≥1 locus D−{0}; maximal ranks 0 and 2 | Correct Zariski-open direction | None |
| §2.5 empty and oversized minors | r=0; r>both matrix sizes | empty determinant=1, whole locus; no nonzero r-minor, empty locus | Total/index boundary cases agree | None |
| §2.5 maximal-rank density | connected smooth D, T²; char 2 square | maximal rank 1 off 0; char 2 maximal rank 0 everywhere | Differential rank is not map injectivity | None |
| §3.1 finite-extension equivalence | identity Spa K; finite Galois L/K | one class; degree d gives d automorphism representatives of one class | Representatives and classes separated | None |
| §3.1 transitivity and field direction | K→L→M; same classical point | maps Spa M→Spa L→Spa K; image support unchanged | Common-field embeddings are amalgamated over residue field | None |
| §3.1 arbitrary functor qualification | generated common-extension relation | a representative equals its pullback class; reflexive/symmetric/transitive closure imposed | No transitivity silently assumed for arbitrary functors | None |
| §3.1 finite-point exclusion | completed algebraic closure over ℚ_p | infinite field degree; not finite-extension data | Geometric point not substituted | None |
| §3.2 classes/classical bijection | D; Spa L | classes are maximal ideals; Spa L has 1 class and 1 classical point | Injectivity/surjectivity witnesses provided by k(x) | None |
| §3.2 diamond interpretation Checks | G_a and G_m Grassmannians | G_a has only rigid class 0; G_m has one for each t^n, n∈ℤ | Geometric and rigid classes distinguished | None |
| §3.3 rational topology | ball abs(T−a)≤abs(π)^k | rational trace is that exact clopen ultrametric ball | Weak inequality is still open on rational points | None |
| §3.3 complete/Baire assertion | D(ℚ_p); zero variables | ℤ_p complete; singleton complete | Subspace completeness does not imply ambient closedness in general | None |
| §3.3 closedness controls | ℚ_p; infinite residue field | at η, abs(T^p−T)=1 but <1 on ℤ_p; infinite residue closure contains η outside rational set | Claimed distinction preserved | None |
| §3.3 separating algebraic point | T=√p, p=2,3 | abs(T²−p)=0; on a∈ℤ_p its value is at least abs(p)>abs(p)² | Displayed rational neighbourhood excludes all ℚ_p points | None |
| IsUnitGaussPoint | f=π+T,g=1; evaluation at 0 | Gauss comparison 1≤1=true; evaluation abs(π)≤1 also true, but reverse comparison 1≤abs(π)=false | All pairs in both directions fix valuation class | None |
| IsUnitGaussPoint zero/constant checks | f=0,g=1; f=1,g=0; zero variables | 0≤1=true, 1≤0=false; only coefficient norms in dimension 0 | Zero valuation and inverse convention excluded | None |
| §3.4 Gauss closure theorem | infinite residue, g=T(T−1) | choose reduction a≠0,1; abs(g(a))=1=Gauss norm and numerator norms ≤1 | Every rational neighbourhood meets rational points | F06 headline list |
| §3.4 residue-field boundary | 𝔽₂ and 𝔽₃ residue | Gauss norm of T^q−T=1; every rational integral a gives abs(a^q−a)<1 | Infinite-residue hypothesis necessary for n≥1 | None |
| §3.4 zero-dimensional closure | n=0 | rational point=Gauss point; closure is singleton | No false positive-dimension requirement | None |
| §4.1 specialization definition | η; T=a; A=K | reduction primes (0), (T−ā), (0) respectively | Strict <1 convention correct | None |
| §4.1 continuity | D(Ṫ) in Spec K̃[T] | inverse image abs(T)=1=abs(T)≥1, rational open | Direction of continuity verified | None |
| §4.1 surjectivity | disc and its model | generic prime lifted by η; closed primes by finite-residue classical points | Affinoid model suffices; no global localization needed | F03 |
| §4.1 noninjectivity | rational points 0 and π | distinct points; both specialize to (T) | Singleton fibres not general | None |
| §4.1 naturality | T↦T² | sp of evaluation a maps to (S−ā²); reduction substitution gives same prime | Contravariance matches square | None |
| §4.1 ring/ideal convention | K⟨T⟩ | A°=coefficients norm≤1; A°°=series norm<1; quotient K̃[T] | Not coefficientwise strict without uniform bound | None |
| §4.2 Shilov definition | D; annulus XY=c; Spa L; zero algebra | Shilov cardinalities 1,2,1,0 | Finite nonempty set only for nonzero algebra | F04 dependencies |
| §4.2 minimal-prime bijection | annulus reduction K̃[X,Y]/XY | two minimal primes (X),(Y); boundary values (abs(c),1),(1,abs(c)) | Both generic components lifted once | None |
| §4.2 singleton-fibre criterion | η; rational origin | generic reduction fibre {η}; origin reduction fibre includes 0,π | Both directions tested | None |
| §4.2 spectral maximum | p+T², p=2,3; zero algebra | spectral/Gauss maximum 1; zero algebra supremum 0 on empty boundary | Empty maximum handled separately | None |
| §4.2 finite domain maps | K⟨S⟩→K⟨T⟩, S↦T² | η_T maps to η_S; generic residue inclusion K̃(S)→K̃(T) | Finite map preserves Shilov point | None |
| §4.3 four equivalent conditions | η of D; classical origin | η: generic, fibre singleton, completed generic localization K_η°, Banach boundary; origin fails generic/singleton/boundary conditions | No dependence on §4.2 needed to state equivalence | F04 |
| §4.3 completion before reduction | A=K[ε]/ε² | all Kε power bounded; π^n A° contains Kε for every n; separated completion kills ε and yields K° | Completing reduction instead leaves π=0 | None |
| §4.4 weakly Shilov definition | rational-radius subdisc centred at a | its Gauss point has rank 1 and residue transcendence 1 | Existential affinoid neighbourhood explicit | None |
| §4.4 rank and density | nonempty rational subdisc; Spa L; empty | one local Gauss point; one field point; no points in empty | Density does not imply global Shilov boundary | None |
| §4.4 classification controls | classical, type 2, type 3, type 4, type 5 | residue degrees 0,1,0,0; type 5 rank 2 | Only type 2 in positive-dimensional disc | None |
| §4.5 transcendence bound | η_D²; irrational-radius point of D; classical point | 2≤2; 0≤1; 0≤1 (or 0≤0 on Spa L) | Only residue contribution used | None |
| §4.5 normalized polynomial relation | algebraically independent residues | scale nonzero relation by maximal nonzero coefficient: one coefficient reduces to a nonzero unit | Denominator nonzero; reduction contradiction valid | None |
| §4.6 weakly Shilov equivalence | type 2; type 3; isolated point in point⊔D | 1=1 true; 0=1 false; 0=0 true though global dimension 1 | Local, not global dimension | F02/F04 |
| §4.6 invariance on open neighbourhoods | smaller rational neighbourhood of type-2 x | same H(x)̃ and local dimension 1; equality remains 1=1 on both spaces | Both directions follow without circular density proof | F04 |
| §4.6 strict Laurent-domain consequence | η; a rational-radius Gauss point | whole unit disc or its closed subdisc has boundary singleton {x} | Poineau strictness hypotheses respected | None |
| §4.6 formal characterization | disc model; selected disc in countable union | specialization generic (0) in each chosen special fibre component | Only this global realization invokes formal gap | F03 |
| §4.7 nowhere-dense avoidance | finite closed points in D | secondary transcendence 0<1; type-2 point has degree 1 and is outside | Strict dimension-drop contradiction computed | None |
| §4.7 regular-locus consequence | reduced cusp; double point | cusp Shilov point away from singular origin; double point itself weakly Shilov but singular | Reduced hypothesis retained | None |
| §4.7 unions and density | all classical points in D; union of proper Hodge loci | no type-2 point in first union; no weakly Shilov point in any proper locus | Avoidance remains true for arbitrary unions | None |
| Layer 4 annulus witness | XY=c with 0<abs(c)<1 | boundary (1,abs(c)) specializes to (Y); opposite boundary to (X); both trdeg 1 | Prime and coordinate directions agree | None |
| §5.1 rigid blow-up definition | origin ideal (X,Y) in D² | X-chart Y=XU; exceptional X=0 gives affine U-chart of P¹ | Relative affinoid analytification required | None |
| §5.1 invertible ideal/universality | blow-up chart (X,Y)O=(X) | X generator, Cartier ideal rank 1; any map with invertible pulled-back ideal selects unique factorization | Operation determined by universal property | None |
| §5.1 properness/isomorphism away from centre | D² origin; Cartier centre in D | exceptional fibre P¹; complement unchanged; Cartier blow-up is identity | Not every nonempty centre changes the space | None |
| §5.1 unit/zero ideals | I=O_X; I=0, X nonempty | Rees Proj gives X and empty respectively | Empty centre differs from empty total space | None |
| §5.1 flat base change | restriction D²−{0} | centre ideal becomes unit; fibre product blow-up and blow-up of restriction both identity | Flat restriction law verified | None |
| §5.1 algebraic analytification | A² origin | algebraic and analytic charts both Y=XU and X=YV | Same two transition charts | None |
| §5.1 reduced exceptional divisor | cusp origin blow-up | resolved disc, exceptional ideal (t²), support {0}; nonzerodivisor t² | Cartier support nowhere dense, multiplicity allowed | None |
| §5.2 marked sequence definition | length 0; unit centre; Cartier centre | composite identity in all three, but marked lengths 0,1,1; contraction removes only unit stage | Composite alone loses markings | None |
| §5.2 supported/strong/proper assertions | origin blow-up; restriction off origin | centre regular point, composite proper; restricted centre empty | Support and regularity kept separate | None |
| §5.2 pullback and coherence | translation (x,y)↦(x+1,y) | preimage of centre (1,0) is (0,0); two translations add as their composite | Marked source/target directions agree | None |
| §5.2 hypersequence local finiteness | cusp disjoint union, n=0,1,2,... | local lengths n; quasi-compact open meets finitely many components, hence max length finite | Countability alone would not imply stabilization | F01 contract split |
| §5.2 terminal gluing | disjoint union of local resolved discs | each final chart disc; overlap identities compose to identity | Limit is local finite terminal object, not an arbitrary inverse limit | None |
| §5.3 resolution generality | cusp; smooth disc; embedded nilpotents | lengths 1,0,1 for displayed towers; final source regular, unchanged on regular complement | Both reduced and generically reduced cases covered | F01 |
| §5.3 empty/smooth boundaries | empty; Spa K | all centres empty; final map identity | No artificial nonempty tower | None |
| §5.3 smooth/field functoriality | smooth product with D; finite separable K′/K | cusp centre pulls back to smooth product centre; exponent 3→1 before and after extension | Uses regularity, not bare flatness | None |
| §5.3 non-quasi-compact indexing | reduced cusp family | local lengths 0,1,2,...; one countable invariant index, no global finite bound | Exact countability gap now named | F01/F03 |
| §5.4 proper surjection/dense isomorphism | cusp; crossing | cusp source one disc, punctured isomorphism; crossing source two discs, both axes covered | Dense proper image gives surjectivity | None |
| §5.4 connectedness for irreducible source | cusp; integral node; crossing | final connected-component counts 1,1,2 | Crossing counterexample excludes dropping irreducibility | F06 headline identification |
| §5.4 resolution of reduction | dual point; fibre product with nilpotents | reduction has one underlying point; Spa K→dual point surjective, ε maps to 0 | Cover is not a birational isomorphism of nonreduced structure | None |
| §6.1 analytic constant rank | (x,y)↦(x,x²); projection; constant | ψ(u,v)=(u,v−u²) gives (x,0); projection rank 1; constant centred to 0 | Correct first-k normal form | None |
| §6.1 neighbourhood-rank hypothesis | x² at 0 and at a≠0 in char 0 | ranks 0 at 0 and 1 nearby; constant rank 1 near a≠0 | Rank at one point insufficient | None |
| §6.1 characteristic-zero restriction | T^p over 𝔽_p((π)) | derivative 0 everywhere but π^n↦π^(np)≠0 | Rank-zero local constancy would be false | None |
| §6.1 dimension/index boundaries | m=n=k=0; k=0; k=min(m,n) | empty coordinates; all output 0; projection/inclusion on available first coordinates | No out-of-range coordinate due to k≤m,n | None |
| §6.1 no global separation | chart in a doubled-origin manifold | on either branch, identity derivative has rank 1 and identity local chart | Local result uses no T2 axiom | None |
| §6.2 rational polydisc basis | G_m at 1, c=p, p=2,3 | abs(T−1)≤1/p<1 implies abs(T)=1; coordinate (T−1)/p has unit-disc radius | Correct neighbourhood in G_m | F07 |
| §6.2 radius exclusion | c=1; c=0 | radius 1 contains T=0; radius 0 is singleton, not a neighbourhood in dimension 1 | Both strict bounds necessary | F07 |
| §6.2 inverse neighbourhood statement | T+T² at 0 | inverse T−T²+2T³ maps a sufficiently small disc isomorphically | Image need not be a round ambient disc | None |
| §6.2 rationality and singularity controls | Spa F; finite L/F point; cusp origin | dimension-0 rational chart Spa F; residue L≠F precludes F-pointed disc; cusp tangent 2>local dim 1 | Exact hypotheses distinguish failures | None |
| §6.3 manifold construction and topology | D(ℚ_p); Spa F; empty | ℤ_p chart dim 1; singleton dim 0; empty atlas | Supplied topology agrees with rational subspace topology | None |
| §6.3 analytic maps and derivative comparison | square map on disc | derivative 2a in chart equals Zariski derivative 2a | Functorial differential matched | None |
| §6.3 group/algebraic compatibility | G_m | F-points F×, multiplication uv and inverse 1/u analytic; algebraic and analytic point sets equal | Point bijection carries atlas, not just topology | None |
| §6.3 finite scalar restriction | F′=ℚ_p(√p) | [F′:ℚ_p]=2; one-dimensional F′ disc has ℚ_p dimension 2; ℚ_p slice dimension 1 | Base field of dimension explicit | None |
| §6.3 infinite scalar restriction | F′=ℂ_p over ℚ_p | dimension over ℂ_p=1; ℚ_p vector dimension infinite | No finite scalar-restricted manifold dimension asserted | None |
| §6.4 submersion/open projection | D²→D; square at 0 | (u,v)↦u surjective of rank 1; square derivative 0 not surjective | Smoothness excludes second case | None |
| §6.4 quotient orbit | GL₂ acting on [1:0] | local coordinate c/a; derivative at identity δc, rank 1 | Right-translation/orbit convention correct | F03 exact gap |
| §6.4 nonabelian and cyclic dimension-zero quotient | S₃/C₂; C₂/{1} | quotient sizes 3 and 2; tangent 0→0 surjective in both | No commutativity assumption used | None |
| §6.4 nonsurjectivity on rational points | G_m/μ₂ over ℚ_p, y=p, p=2,3 | square quotient has no lift of y since v_p(p)=1 is odd; lift √p exists over ℚ_p(√p); orbit g↦pg² has derivative 2p=4,6 at 1, both nonzero | Smoothness does not require a rational lift | None |
| §6.5 scalar germ detection | E=ℚ_p, C=ℂ_p; m=0; m=1 | zero restriction forces α!c_α=0; α!≠0; m=0 is f(0)=0 on both sides | Complete-field coefficient route | F06 group form listed |
| §6.5 vanishing-neighbourhood control | f(z)=z(z−a), a∉E | f(0)=0; f(π^n)≠0 for all n with π^n≠0 | One E-point does not imply zero germ | None |
| §6.5 group form | G_a; G_m around 1; finite smooth group | coordinates z; T−1; zero-dimensional chart singleton | Open subgroup supplies an E-ball in every dimension | F06 |
| Worked cusp | t↦(t²,t³) | local dim 1, tangent 2, B=A+At, singular {0}, strict transform x=u²,y=u³ | All occurrences agree with Layers 0–5 | None |
| Worked node, including ℚ₂ | y²=x²(x+1) | small-radius square root gives ±x√(1+x); normalization t=±1 over node | One global component, two local branches | None |
| Worked secondary-residue comparison | unit Gauss; irrational radius; isolated point | (trdeg,local dim)=(1,1),(0,1),(0,0) | Weakly Shilov uses local dimension in every occurrence | F02 consistency |

No hypothesis was removed merely because these examples did not use it.

## Maintainer consequences

ResolutionOfSingularitiesCharacteristicZero §§7.5–7.6 now has two separately tracked requests, not an asserted change to that supplier: the generically reduced extension and countable invariant labels for its reduced functor. AdicSpacesPartIII's formal-localization gap and ReductiveGroups' smooth-quotient gap are unchanged. The worker's dependency check proposes placing this package immediately after AdicEtaleGeometry.

No Lean name or section number changed, and no consumer needs a name migration. Local dimension remains the same function; every existing dimension-dependent Check in §§0.3, 1.4–1.6, 2.2–2.5 and 4.4–4.7 and the worked examples has been recomputed against the imported global convention. The title question settled outside this package in the previous review was not reopened. No commit, push, pull-request edit or change outside the authorized package files and scratch work was made.
