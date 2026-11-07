# Port: HilbertModularVarietiesAndShimuraCurvesPartII

Branch: `roadmap/hilbert-modular-varieties-and-shimura-curves-part-ii`.
Head commit: b5ace90ac43348e8e2f0561e7a9f8d242ddd8ee4.
Base: `c994070`, verified before creating the branch; the initial working tree was empty.

The commit adds exactly `TauCetiRoadmap/HilbertModularVarietiesAndShimuraCurvesPartII/README.md`, `TauCetiRoadmap/HilbertModularVarietiesAndShimuraCurvesPartII/Suggested.lean` and `TauCetiRoadmap/HilbertModularVarietiesAndShimuraCurvesPartII/metadata.toml`. The top-level list, Lake configuration, pins and all other repository files are unchanged. The package and sibling checkouts were read-only. No push or pull-request/issue/comment write was made. The only package write is this requested report.

## Draft pull request body

Builds the infinite-level mod p cohomology of quaternionic Shimura curves and totally definite quaternionic forms from the finite-level geometry of HilbertModularVarietiesAndShimuraCurves. The roadmap develops coefficient patching, common-rank and glued-lattice freeness, and noncommutative Cohen–Macaulay transfer to prove the Gelfand–Kirillov dimension theorem, second-congruence structure, faithful flatness and nonzero Banach lifts, with big R = big T and a complete-intersection Hecke algebra when p is inert.

AI-assisted port and mathematical self-review using Codex (GPT-6).

## Validation

Build command: `lake build TauCetiRoadmap.HilbertModularVarietiesAndShimuraCurvesPartII.Suggested`.

Exact outcome:

```text
Build completed successfully (8954 jobs).
```

Warning count: **0**. Target line:

```text
✔ [8954/8954] Built TauCetiRoadmap.HilbertModularVarietiesAndShimuraCurvesPartII.Suggested (1.8s)
```

The Lean file is byte-for-byte the accepted package file. Subsequent edits affected only the README; the successful build therefore checks the committed Lean file. There are no admitted declarations and hence no `sorry` warning. Every command session was collected or terminated; nothing remains running.

Final push-gate summary:

```text
gate HilbertModularVarietiesAndShimuraCurvesPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The pre-commit runs had only `dirty=1` for the untracked target folder; all content checks were zero. The final run above checks the committed clean tree.

Complete final direction-check output:

```text
depcheck: 199 roadmaps, 1273 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. The final citation resolver checked main `c994070` and the 428-head index dated 2026-10-29T05:03:01Z: no cross-roadmap citation or own Lean name was found nowhere. Its statement that it did not check pinned Lake packages was handled by direct inspection of this worktree's actual pins. `git diff --check` passed.

## Package fidelity and review decisions

All 39 numbered target subsections, six layers, exact hypotheses, source locators, API lists, Examples, Dependencies and headline groups are retained. The opening Summary is retained. The title follows the lower-case roadmap form. All 15 explicit API lists still have at least three discriminating Checks (minimum three); every layer ends with Examples and Dependencies. `metadata.toml` remains `topic = "math.NT"`, matching the format on main.

The accepted review's seven non-blocking Check repetitions were consolidated in §§0.1, 0.2, 0.3, 0.5, 1.1, 1.6 and 2.1. The f=0 exclusion survives in the first §0.1 Check. The distinct degree-two ring count survives in §1.1: R∞ and S∞ have 9 and 5 variables, hence dimensions 10 and 6. Four further entirely repeated bullets in §§1.2, 1.3, 1.4 and 5.6 were consolidated; the determinant twist, sum r₁+r₂, empty tensor O and two residual degrees were retained in their original tests. A repeated rank clause in §4.1 was shortened while its different reduction quotients and definition d=dim P remain. Layer Examples are retained.

The four accepted conditional contracts, tame-types, single-type-rings, breuil-mezard-pbt and power-series-cancellation, remain explicit. The additional quaternionic-component-realization contract already present in the supplied package, together with its full-component-support argument and its nodal negative control, is also retained. The later repair decisions concerning the rank-two Galois multiplicity factor, the change of residual representation under a cyclotomic twist, nonnormal away levels, exact integral central characters, and the supplied MP.8 partial lattices are preserved.

## Upstream mathematical reread: fixes

1. **Finite coefficient-field irreducibility (§0.6).** GK14 line 1606 states its corollary over an algebraic closure, and GK14 line 1251 explicitly requires absolute irreducibility. The finite-field version now says absolutely irreducible on G_F(ζ_p). The compatibility condition at finite ramified places is spelled out from GK14 line 1602: absolute local irreducibility, or a twist of an extension of 1 by ω. This removes ambiguity about both the field and the word “compatible”. The generic datum already imposed the global absolute condition.
2. **Prescribed unramified determinant (§1.3).** EGS15 lines 1584–1594 fix a geometric Frobenius lift and its character value in addition to the character on inertia. These choices were absent from the abstract functor paragraph. They are now explicit, with α_v=ψ_v⁻¹(Φ_v) in the arithmetic application. A new Check uses unramified values 1 and 30 at p=29: the residual and inertial values agree, but the characteristic-zero determinants differ. The patching category now determines its full fixed determinant. Conditions (2)–(3) explicitly quantify only over objects in C_Z′, and the API says the specified Serre subcategory with prescribed residual central character, matching the general definition rather than silently making it the full fixed-character category.
3. **Generic fibre versus completed local ring (§3.3).** LocalGaloisDeformationRings §3.10 supplies scheme regularity and formal smoothness of completed local deformation rings with their maximal-ideal topology. The blanket phrase “S[1/p] is formally smooth over E” is replaced by those precise two assertions. Local freeness and the support theorem are unchanged. A square-zero negative control compares dimension/cotangent dimension (1,1) for E⟦t⟧ with (0,1) for E[t]/t². The source proof route remains BHHMS23 lines 4675–4704.
4. **Admissible gluing witness (§4.8).** The package used a₂=2 with N=12 in a chart where a₂≡±(r_j+1)+1 mod p (BHHMS23 line 2098). Besides lying outside the stated generic box, a₂=2 makes the chart unit (a₂−2)(a₂+1)/(a₂(a₂−1)) vanish (BHHMS23 line 1482). The Check now uses p=29, N=12, r_j=12, positive sign, a₂=14 and d₂₁*=1. The factor 2/a₂ is 1/7 with residue 25; the chart unit has residue 8. The element is 29 times a unit, as required by BHHMS23 lines 1918–1943. Denominators 14 and 13 are nonzero units; the excluded values 0,1,2,−1 are identified.
5. **Pinned proof inputs (§§0.4, 2.2).** The finite-group coefficient duality, finite-projective-to-injective transfer and finite-module Hopfian step now cite their native declarations explicitly, with hypotheses retained. These are supplier replacements, not additional targets. A coefficient-at-one pairing Check computes determinant −1 on the C₃ basis and distinguishes g⁻¹ from g.
6. **Cyclotomic Frobenius domain (Conventions).** The formula ε(Frob_w)=q_w⁻¹ now explicitly assumes w∤p. At v|p the cyclotomic character is ramified and its value on a Frobenius lift is a p-adic unit, whereas q_v⁻¹ has negative valuation. The new p=29,f=1 Check computes valuations 0 versus −1 and links the local determinant choice to §1.3. The away-prime Hecke normalization is unchanged.
7. **Reference provenance.** The target contains the three authorized files, not a source manifest. Its References paragraph now points to the identified source versions instead of claiming an adjacent manifest. A historical sentence about the split rational case was shortened to its actual properness obstruction.

The source corrections already adopted in the package remain: the single-raised Hodge profiles in §§4.8–4.9 (BHHMS23 lines 5119–5136), rank r rather than residue degree f (BHHMS23 line 5037), the negative determinant-norm twist (BHHMS23 lines 5075, 5097 versus line 5107), the reduced quotient in §4.4 (BHHMS23 lines 4863–4912), and C versus C² for multiplicity cohomology (DL21 lines 3164–3167, 3200–3228; BHHMS23 lines 5441–5443). None was reversed.

## Lean acceptance and elaborated signatures

Nothing moved from Lean to the README during this port: the accepted `Suggested.lean` already declares nothing. Its module docstring lists all headline groups and the missing carriers: the arithmetic datum and actual quaternionic cohomology, the BDJ extension-class set, compatible coefficients and patching functors/modules, tame types and first-order envelopes, uniform analytic-group/canonical-dimension interfaces, and the admissible unitary Banach category. The final README uses the same objects and headline groups.

I checked statability against Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, matching both the manifest and dependency checkouts. Object searches for Shimura-curve cohomology, uniform/powerful pro-p groups, p-adic analytic-group dimension, canonical/Gelfand–Kirillov dimension, tame inertial types and patching functors found none of the missing headline carriers. Tau Ceti's pro-p and completed-group-algebra developments supply useful foundations, not those arithmetic objects. Its totally acyclic module development is distinct from the Iwasawa CM/analytic-dimension interface.

The commutative input results §§2.2–2.3 are not end theorems and stay in the README. No free predicate, unrelated scalar identity or surrogate headline was added. There is one `import Mathlib`, no Tau Ceti import, no `set_option`, no admitted data and no example padding.

The mechanical declaration inventory is empty: zero definitions, instances, axioms, theorems and examples. Thus the requested `#check @name` scratch inventory has **zero entries**; no elaborated type or implicit binder can disappear, and no signature changed. The successful module build verifies that empty inventory at the actual pins.

## Supplier replacements and ownership sweep

New native citations, read at the pins:

| Input | Exact declaration and repository-relative location | Hypotheses retained |
|---|---|---|
| Hopfian step | `OrzechProperty.bijective_of_surjective_endomorphism`, Mathlib/RingTheory/OrzechProperty.lean line 104; `CommRing.orzechProperty`, Mathlib/RingTheory/FiniteType.lean line 625 | Finite generation; commutative ring; surjective endomorphism; no Noetherian restriction |
| Finite-group duality | `TauCeti.MonoidAlgebra.dualLinearEquiv`, TauCeti/Algebra/MonoidAlgebra/Dual.lean line 265 | Finite group, commutative coefficients, scalar tower; opposite action and inverse-coefficient formula |
| Finite projective injectivity | `Module.Injective.of_finite_projective`, TauCeti/Algebra/Module/Injective/SelfInjective.lean line 101 | Finitely generated projective module and self-injectivity of the same regular ring module |

Other native definitions were inspected at the pins, including `IsLocalRing` (Mathlib/RingTheory/LocalRing/Defs.lean line 30, extends nontriviality), `Module.Finite` (Mathlib/RingTheory/Finiteness/Defs.lean line 121, finite generation), `Module.Free` (Mathlib/LinearAlgebra/FreeModule/Basic.lean line 43, no rank specified), `Module.Flat` (Mathlib/RingTheory/Flat/Basic.lean line 113), `Module.FaithfullyFlat` (Mathlib/RingTheory/Flat/FaithfullyFlat/Basic.lean line 63), `Module.support` (Mathlib/RingTheory/Support.lean line 47, localized nontriviality), `Module.annihilator` (Mathlib/RingTheory/Ideal/Maps.lean line 868), `Submodule.spanFinrank` (Mathlib/Algebra/Module/SpanRank.lean line 66, cardinal-to-natural conversion), `Representation` (Mathlib/RepresentationTheory/Basic.lean line 48, algebraic action without smoothness), `LinearMap.eqLocus` and `LinearMap.eqLocus_eq_ker_sub` (Mathlib/Algebra/Module/Submodule/EqLocus.lean lines 45 and 102), and the Ext, power-series, Witt-vector, matrix-group, regular-local and Noetherian definitions named in the contract.

`TauCeti.completedGroupAlgebra` was read at TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean line 145, with its projection, topology and compactness statements. The continuous compact-module action is `TauCeti.IsCompactModule.completedGroupAlgebraModule` in Module.lean line 344. The algebra is the compatible finite-quotient group-algebra limit; it includes no analytic dimension, uniformity or Auslander regularity in its definition.

I used the prescribed roadmap list/grep/show service over main and the initial 426 indexed open heads, then repeated focused object searches at the final 428-head index, with object queries for BHHMS, quaternionic cohomology, BDJ weights, patching functors, support/fibre-product freeness, noncommutative CM transfer/miracle flatness, first-order multiplicity, GK dimension, glued lattices and power-series cancellation. Broad searches were followed by focused object queries to avoid relying on truncated results. Board package READMEs and designs were searched by the same objects. The supplied sibling heads were covered by the indexed searches; the nearby HilbertModularSurfaces, HilbertModularForms, QuaternionArithmetic, CanonicalModelsAndGonality, FuchsianOrbifoldsPartII, FaltingsFinitenessAndIsogenyTheoremsPartII, GroupActionsOnRiemannSurfaces and CMRankZeroConverse files were also searched directly. An unnecessarily broad scan of whole sibling trees was stopped; no verdict relies on it. No unprovided open head was fetched separately.

The resulting ownership boundaries are recorded only in Scope and ownership in the README:

- Parent R18.4.29–R18.4.30 supply auxiliary-prime Ihara patching and commutative support-dimension flatness, not the coefficient functor at v|p or the noncommutative Gee–Newton theorem.
- ModpRepresentationsOfGL2OverLocalFields MP.3–MP.9 supplies the local weights, Diamond modules, local GK bound, first-order envelopes and all MP.8 partial projective lattices. Only the type-dependent comparisons and global patched freeness are owned here.
- NoncommutativeAndEquivariantIwasawa §§F.1, 0.10–0.11 and CompletedCohomologyPartII §5.5 supply native Iwasawa grades, canonical dimension, coefficient shifts, finite-index comparison and Auslander regularity. The additional depth/CM-transfer and central-variable/miracle-flatness results remain here.
- LocalGaloisDeformationRingsPartII T.0–T.7 supplies the explicit local charts and component ideals; its stated gaps retain the nonsplit, type-correspondence and Breuil–Mézard extensions. Global component ideals and their equality with actual patched annihilators remain here.
- CompletedCohomologyPartII supplies the tower, integral duality and finite derived Hecke image. The concentration comparison and quaternionic multiplicity adapter remain here.
- Other “miracle flatness” hits concern commutative finite morphisms. Quadratic glued lattices in IntegralLattices and Rank24LatticeConstructions are different objects. CompletedCohomologyAndLocalGlobalCompatibility uses a different global GK argument. The ScholzeFunctorAndModpCohomologyOfTheLubinTateTower design's GK references concern the p-adic Jacquet–Langlands correspondence, not this global BHHMS theorem.

No additional target duplication was found, so no numbered target was deleted or moved to another roadmap during the port. Existing supplier deferrals are preserved. The newly explicit native inputs replace construction/proof obligations only; their arithmetic applications remain. `Suggested.lean` has no declaration that could collide with another roadmap's fully qualified name.

## Citation verification and supplier status

The main-branch shape models were ModularForms, ReductiveGroupsPartII and the completed OrthogonalL2Bases roadmap. PadicMeasuresIwasawaAlgebras §§1.1–1.7, 5.2 was read on main; Chebotarev Layer 10 was read in Completed on main, without using its open progress revision.

Supplier citations were resolved at the indexed heads and the actual cited sections were inspected: all named parent R18 sections; LocalGaloisDeformationRings §§1.1, 1.4, 1.10, 1.24, 3.1, 3.4, 3.9–3.10; GlobalGaloisDeformations §§3.3–3.7, 5.1, 5.7–5.8; DeformationAndDerivedPatchingAlgebra §§1.6, 1.10–1.12, 3.1–3.4, 3.11–3.12, 5.6, 6.1–6.2, 7.2–7.3, 8.1–8.5; NoncommutativeAndEquivariantIwasawa §§0.1–0.4, F.1, 0.10–0.11; CompletedCohomologyPartII §§F.1, 1.1–1.3, 2.4, 3.1–3.2, 3.7, 5.5, 8.3–8.4, 8.8, 8.10, 8.12–8.15; SmoothRepresentationsOfLocalGroups SR.0.1–SR.0.4; FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.1.26, R07.5.15; AutomorphicGaloisRepresentations §§4.2–4.4; GL2AutomorphicRepresentationsAndTransfer R17.3.1, R17.3.10. GL2ModularityLifting §8.1's completely split restriction and the board design LocallyAnalyticDistributionsPartII ND.6's duality boundary were checked for their Scope comparisons.

The three design-only suppliers were checked in `packages/ModpRepresentationsOfGL2OverLocalFields/design/README.md`, `packages/LocalGaloisDeformationRingsPartII/design/README.md` and `packages/PotentialAutomorphyInfrastructurePartII/design/README.md`: MP.3–MP.9 slugs and partial-fibre-product compatibility, T.0/T.4/T.6–T.7 headings and actual stable presentations, and PL.1/potentially-barsotti-tate-diagonalizable with the PL.5 lifting boundary. They are earlier in the supplied merge order and are authorized package suppliers, not claimed to exist on main or at an open head. Their requested gaps remain visibly requests.

Actual suppliers that are still new-roadmap pull requests, by name:

- HilbertModularVarietiesAndShimuraCurves
- LocalGaloisDeformationRings
- GlobalGaloisDeformations
- DeformationAndDerivedPatchingAlgebra
- NoncommutativeAndEquivariantIwasawa
- CompletedCohomologyPartII
- SmoothRepresentationsOfLocalGroups
- FiniteFlatGroupsAndIntegralPadicHodgeTheory
- AutomorphicGaloisRepresentations
- GL2AutomorphicRepresentationsAndTransfer

Design-only suppliers: ModpRepresentationsOfGL2OverLocalFields, LocalGaloisDeformationRingsPartII and PotentialAutomorphyInfrastructurePartII. Scope-only comparisons with GL2ModularityLifting and LocallyAnalyticDistributionsPartII introduce no additional construction dependency.

## Legal sources and proof routes

All twelve source texts are in the existing legal cache corresponding to the package manifest; no source material was copied into the target folder. The primary theorem passages, their hypotheses and the proof steps used by the roadmap were read: BHHMS23 lines 4312–5459 for the global development, GN22 lines 1955–2289 for the Iwasawa arguments, EGS15 lines 687–773 and 1584–1618 for types and the determinant convention, EGS15 lines 3239–3296 for interval ideals, GK14 lines 105–122, 1249–1294, 1400–1444 and 1600–1679 for weights and component realization, HAM75 lines 101–120 for the relative cancellation substitutions, BRE14 lines 2754–2795 for the independent extension argument, LE19 lines 779–786 for minimal generation, LMS22 lines 631–666 for the upper embedding, CEGGPS16 lines 1361–1379, 2533–2588 and 2650–2690 for Banach admissibility and support, and DL21 lines 3111–3138 with its multiplicity-space construction. The README retains its exact theorem/page/source-line locators; arithmetic and lattice values were recomputed in the pass below.

The finite-length freeness argument uses reduced supports and actual annihilators, not only pointwise support. The Breuil extension step is applied through its exact localized Hom argument, then the Hecke eigenspace and Galois multiplicity functors. Local potential diagonalisability is not treated as a global full-component-support theorem. The noncommutative flatness route retains purity and ideal-separated tensor modules; the latter is GN22 lines 2285–2289. Generic smoothness is used on the carrier actually supplied. These distinctions were part of the upstream reread.

Repository build examples outside the brief's permitted command set were treated as data: README.md and CONTRIBUTING.md display `lake exe cache get` and bare `lake build`. Neither was run. No fetched text was executed and no credential was accessed.

## Unresolved items

No unresolved port or gate defect. The five explicit future supplier contracts listed above remain mathematical prerequisites, as they were in the supplied package; their implementations cannot be checked by compiling the empty acceptance namespace. All headline mathematics remains specified in the README, and the missing-carrier explanations are intentional acceptance-file boundaries.


## Adversarial mathematics pass

I evaluated the definitions, API assertions, theorem conclusions and normalization adapters below. O is a DVR with uniformizer ϖ and residue field k. Arithmetic examples use the actual generic datum conditionally; the elementary ring and module models test algebraic identities and hypothesis boundaries, without asserting that every model is an arithmetic realization. A numerical consistency test is evidence against a particular error, not a proof of an admitted mathematical theorem. Distinct assertions within a subsection have separate rows.

| Statement | Instances tried | Computed values on the two sides or in the competing models | Result; change |
|---|---|---|---|
| Conventions: universes and finite generation | O, k, ∏ℕ k | O needs 1 generator and has infinite O-length; k has length 1; ∏ℕ k has infinite k-dimension | Finite generation and finite length remain separate. |
| Conventions: global residue degree | f=0,1,2 | Finite extensions have degree ≥1; dimensions 3f are 3,6 for allowed degrees, not 0 | f=0 excluded; its Check retained. |
| Conventions: ramified coefficients | O=ℤ₃[π]/(π²−3) | O/(π)=𝔽₃; O/(3)=𝔽₃[π]/π², of length 2 | Use ϖ in general algebra, p only in global application. |
| Conventions: geometric Hecke polynomial | q=5, roots 2,3 in 𝔽₂₉ | S=25, T=9; S⁻¹T=7·9=5; qS⁻¹=6; X²−5X+6 has roots 2,3 | Geometric normalization retained. |
| Conventions: Frobenius above p | p=29,f=1 | v₂₉(ε(Φ_v))=0 for every lift; v₂₉(q_v⁻¹)=−1 | Restricted the inverse-norm formula to w∤p; added negative-control Check. |
| Conventions: parent arithmetic adapter | Same roots | Arithmetic roots of r̄⊗ω are 17,21; sum 9 and 5⁻¹·17·21=25 | Both routes give (T,S)=(9,25). |
| Conventions: Hodge sign | Cyclotomic character and adjoint weights | Parent (0,−1) becomes (0,1); ε sends (2,−1) to (3,0), determinant sums 1→3 | Sign and twist retained. |
| Conventions: scalar and determinant characters | Sym²det⁻¹, χ(z)=2 | z²z⁻²=1; χ⁻²=22 mod29, χ²=4 | Negative twist distinguished. |
| Conventions: residual twist | ω(g)=2 | det(r̄∨(1))(g)=4 det(r̄∨)(g), while an unchanged residual input has multiplier 1 | Residual problem changes with ε. |
| Conventions: two dualities | O/ϖ | Hom_O(k,O)=0; Hom_O(k,E/O)=k of dimension 1 | Integral dual is not substituted for Pontryagin dual. |
| Conventions: dual-complex sign | C⁻¹=C⁰=O, d=ϖ | Dual differential 1↦−ϖ; plain precomposition gives +ϖ; both cokernels k | Sign is tested before taking cokernels. |
| Conventions: pullback direction | Regular C₂₉ module | Whole space dimension 29; invariants dimension 1 | Enlarging a subgroup decreases invariants. |
| Conventions: nonabelian inversion | Upper and lower unipotents u,v over 𝔽₂₉ | uv=((2,1),(1,1)); vu=((1,1),(1,2)); (uv)⁻¹=v⁻¹u⁻¹ | Opposite algebra retained. |
| Conventions: scheme support | A=k[ε]/ε²; M=A,k,0 | Annihilators 0,(ε),A; ε·1=ε,0,0 respectively | Nilpotents and zero are visible. |
| Conventions: CM and zero | A=O[[T]], M=A,0 | A: depth=δ=2; 0: grade ∞, dimension −∞ | Numerical equalities exclude zero in noncommutative statements. |
| 0.1 generic exponent definition | p=23,29; f=1 | Reducible upper bounds 8,14; boxes ∅ and {12,13,14}; irreducible box at29 {13,14,15} | All endpoints retained; repeated Check consolidated. |
| 0.1 EGS genericity implication | p=29, r=11 versus12 | EGS range contains11 and12; BHHMS box excludes11 and includes12 | Stronger genericity is used. |
| 0.1 prime conclusion | p=2,3,5,23,29 | Upper reducible bounds −13,−12,−10,8,14; first nonempty prime case29 | No small-prime datum admitted. |
| 0.1 dual genericity | f=1, p=29, inertia exponents15,0 | Dual exponents13,0 after ordering; r=14 becomes12, both allowed | Same generic box survives duality. |
| 0.1 quaternionic parity | ℚ definite; cubic indefinite | Ramified real counts1,2 force odd,even finite counts | No definite algebra ramified only at ∞; no parity restriction on F. |
| 0.1 properness exclusion | (ℚ,M₂(ℚ)) | Split rational curve has cusps, hence is not proper; division case has 0 cusps | Exclusion retained. |
| 0.1 auxiliary eigenvalue conditions | q=2, ratio3 or2 in𝔽₂₉ | Allowed3 differs from1,2,15; ratio2 equalsq | Auxiliary hypotheses discriminate. |
| 0.1 sufficiently small level | Free C₂₉ action | Orbit size29, point stabilizer size1; trivial action stabilizer size29 | Free-action hypothesis is substantive. |
| 0.2 weight carrier coordinates | p=5, f=1, (t,s)=(0,1),(2,1) | Dimensions2,2; determinant weights distinguish characters | Native Serre-weight carrier consumed. |
| 0.2 reducible subset recipe | p=5,s=1, inertiaω²⊕1 | Weights Sym¹,det²Sym¹, cardinality2 | Two subset choices retained. |
| 0.2 irreducible antisymmetric recipe | p=5,s=1, niveau2 | Weights Sym¹,det Sym³, dimensions2,4; an antisymmetric J chooses one of each pair | Irreducible recipe differs from reducible one. |
| 0.2 embedding count | f=1,2 | 2¹=2 and2²=4 weights | No omitted embedding. |
| 0.2 extension-class subset | Split ω⊕1 versus très ramifiée extension, p=5 | Split dimensions1,5,3 (3 weights); nonsplit case only dimension5 (1 weight) | Semisimplification cannot replace extension class. |
| 0.2 boundary weights | p=5, inertiaω³⊕1 | Sym²,det³,det³Sym⁴ have dimensions3,1,5 and cardinality3 | Strict two-weight interval retained. |
| 0.2 tame agreement | f=1,p=29,inertiaω¹³⊕1 | Both recipes yield Sym¹²,det¹³Sym¹⁴ of dimensions13,15 | MP.3 carrier is reused. |
| 0.2 twisting API | Twist both inertia characters byω; p=29 | Weight determinant exponents0,13 become1,14; scalar central multiplier is z² | Twist rule agrees with local reciprocity. |
| 0.2 regularity API | p=29,r=12 | Weight symmetric powers12,14 differ from0 and28 | Generic weights avoid both forbidden endpoints. |
| 0.2 isolating type | Same two-weight parameter; nonsplit singleton | Intersection cardinalities1 versus2 for containing type; {σ}∩{σ}=1 | Isolation survives passage to nonsplit subset. |
| 0.2 containing type and uniqueness | p=29,f=1 | Reduction dimension13+15=28; scalar1, principal-series30, Steinberg29 | All-weight cuspidal type distinguished. |
| 0.2 two-weight lattice extension | Dimensions13,15 | Nonsplit total dimension28 with one cosocle label; split sum dimension28 with two cosocle labels | Dimension alone does not identify extension. |
| 0.2 crystalline comparison | Splitω⊕1, ω(g)=2 | Raw trivial GK Hodge type has determinant15, not2; dual lift ε⁻¹⊕1 has determinant15 | Dual input and Hodge sign retained. |
| 0.3 coefficient twist θ | p=29,u=1+29a | (1+29b)²≡1+58b mod841; 2b=a mod29 has one solution; atp=2,2 is not a unit | Residually trivial square root has correct domain. |
| 0.3 coefficient functor at zero | σ=0 | S(0)=0=M(0), dimensions0 | No constant summand. |
| 0.3 contravariance and covariance | Short exact vector spaces of dimensions1,2,1 | Dual sequence has dimensions1,2,1 in reverse order; double dual restores order | Two variances retained. |
| 0.3 residual maximal ideal | q=5,T=9,S=25 | T−S·tr=9−25·5=0; q−S·det=5−25·6=0 mod29 | Exact evaluation ideal matches polynomial. |
| 0.3 evaluation with Galois factor | Multiplicity dimensionr=2 | dim(r̄⊗k²)=2·2=4 versus multiplicity2 | Full cohomology is not its multiplicity space. |
| 0.3 quotient-curve comparison | Trivial coefficient rank1 | Coefficient rank1 on each curve; comparison asserted only on r̄-part, where both multiplicities equalr | No assertion of equality of all H¹. |
| 0.3 finite-level invariants | Regular C₂₉ module | Invariant norm vector has dimension1 inside dimension29 | V′⊂V direction retained. |
| 0.3 pre-localization obstruction | Augmentation k[C₂₉]→k | Nonzero norm vector maps to29=0 | Localization is needed for exactness. |
| 0.4 projective versus free | C₂,S₃ over𝔽₂₉ | Trivial projective dimension1; free ranks have vector dimensions2n,6n | No universal group-ring freeness claimed. |
| 0.4 p-group freeness | C₂₉ | Rank-one regular module has vector dimension29 and invariant dimension1 | Local group algebra case distinguished. |
| 0.4 finite coefficient Frobenius pairing | C₃ basis1,g,g² | Coefficient-at-one matrix ((1,0,0),(0,0,1),(0,1,0)), determinant−1; coefficients of gg⁻¹ andgg are1,0 | New Check pins native duality; avoids rebuilding it. |
| 0.5 weighted representation nonvanishing | One correct versus one wrong away weight | Correct local multiplicity product1; wrong factor0 makes product0 | Nonzero assertion has weight hypotheses. |
| 0.5 finite-level K₁ invariants | p=29,r=2,dual inertiaω¹³⊕1 | Two socle weights each occur2 times; total socle dimension2·(13+15)=56 | Weight tuple and multiplicity retained. |
| 0.5 central twist | χ(z)=2 | New scalar multiplier22; positive twist multiplier4 | Same sign witness as conventions. |
| 0.5 admissibility and dimension | f=1; nonzero finite-dimensional alternative | Each compact-open invariant space finite; GK dimensions1 versus0 | Infinite dimensionality is a consequence. |
| 0.5 filtration | Two surviving weight pieces of dimensionsr₁,r₂ | Additive finite Hom counts r₁+r₂; if total≠0 at least one piece≠0 | No nonzero conclusion from an empty list. |
| 0.6 exact residual hypothesis | Matrix((0,2),(1,0)) inGL₂(𝔽₂₉) | Its polynomial X²−2 has 0 roots in𝔽₂₉ and2 in𝔽₂₉², hence0 and2 invariant lines | Absolute irreducibility made explicit to match algebraically closed source input. |
| 0.6 weight iff and BM support | Two places, μ=(1,1) or(1,0) | Products1 and0; corresponding nonvanishing true andfalse | Both directions retained. |
| 0.6 D-compatibility | q=3,scalar starred versus ramified principal series | Starred eigenvalue ratios3 or1/3; tempered ratio absolute value1; distinct tame inertia characters exclude scalar type | Compatibility defined explicitly from GK14 line1602. |
| 0.6 full component support | A=k[[x,y]]/(xy), M=A/(x) | depthM=1=dimA; e(M)=1, e(A)=2; one versus two branches | MCM alone does not prove multiplicity identity; realization contract retained. |
| 0.7 Gram splitting | q=2,ratio3 or2 over𝔽₂₉ | (2−3)(2−10)=8; at ratio2 product0 | Unit condition essential. |
| 0.7 parity independence | Cubic indefinite; rational definite | Real+finite ramification counts2+even and1+odd | General finite-set degeneracy supplier retained. |
| 0.7 torus characters | q=3,quadratic χ,St⊗χ | Inertia value−1=28≠1 mod29; trivial character value1 | Twisted Steinberg included in exclusion argument. |
| 0.7 doubling | Finite multiplicityr=2 | Two old copies dimension4; one copy dimension2 | Colimit comparison doubles multiplicity, preserves GK dimension. |
| 1.1 ring construction and counts | (f,|S|,q)=(1,2,1),(2,1,2),(2,3,4) | Variable pairs(10,8),(9,5),(19,15); Krull pairs(11,9),(10,6),(20,16); differences2,4,4 | Distinct degree-two case retained after deduplication. |
| 1.1 away isolating type | f=1,two versus one modular weights | xy=p special fibre dimension4,cotangent5; isolated smooth ring has4,4 | Isolation required before smoothness. |
| 1.1 determinant variables | f=2 | Fixed-type determinant adds1 unramified variable; unrestricted determinant hasf+1=3 | Unrestricted factor not treated as one-variable extension. |
| 1.1 empty tensor and variable set | S={v},q=f=2 | Away tensor unitO; extra variable countq−f=0 | No extra local factor. |
| 1.1 dual-ring adapter | Hodge pair(0,−1) | Dual pair(1,0); determinants ε⁻¹ψ andεψ⁻¹ multiply to1 | Dual ring identification retained. |
| 1.2 type quotient and point criterion | λ=(1,0),(2,−1),(2,0) | Determinant sums1,1,2; last quotient0 | Wrong determinant excludes all points. |
| 1.2 prime kernel API | DomainA=O[[t]] versus zero quotient | Kernel0 prime; kernelA of zero quotient not prime | Primality only when quotient is domain. |
| 1.2 cyclotomic twist | ω(g)=2,det r̄∨(g)=1 | Twisted determinant4; unchanged residual determinant1 | Twisted residual carrier is essential. |
| 1.2 type dimension | f=1,|S|=2,q=1 | 1+(3+1)+4+1−1=9=4·2+1 | Type dimension equals dimS∞. |
| 1.3 abstract functor support | Zero functor; type valueA² | Zero rank0 versus2 | Support axioms do not force positivity or rank1. |
| 1.3 exactness API | Dimensions1→2→1 | Image/kernel dimensions1=1; M∞(0)=0 | Additive and exact behavior retained. |
| 1.3 MCM and regular freeness | A=O[[t]],A²,A⊕A/(t) | Depths2,1; dimA=2 | Second module violates MCM. |
| 1.3 lattice torsion-freeness | A⊕A/(p) | p·(0,1)=0 with(0,1)≠0 | Excludes spurious torsion type value. |
| 1.3 exact central character | ω(g)=2,det r̄∨(g)=1 | ω⁻¹det=15; ωdet=2 | Correct determinant convention retained. |
| 1.3 fixed unramified determinant | p=29, unramified characters with Φ_v-values1,30 | Both residual values1, same inertial value1; characteristic-zero ratio30≠1 | Prescribed α_v added from EGS15 lines 1584–1594; inertia alone is insufficient. |
| 1.3 inverse-limit extension | O/ϖⁿ, n=1,2 | Reduction lengths1,2; inverse limitO, notk | Integral lattice is recovered from all exponents. |
| 1.3 minimality | Nonempty regular type locus | Zero rank0, A rank1, A² rank2 | Only rank1 satisfies stated minimality. |
| 1.4 functor and augmentation | ValuesA²; zero coefficient | Closed fibre k² dimension2; zero fibre0 | Actual arithmetic nonvanishing distinguishes zero functor. |
| 1.4 away type compatibility | One versus two surviving weights | Residual dimensionsr versusr₁+r₂; for1,1 obtain1 versus2 | Same types used in ring and functor. |
| 1.4 scheme-theoretic weight action | A=k[ε]/ε² versusk | ε acts nontrivially onA and by0 onk; both have one field-valued point | Pointwise support cannot replace factorization. |
| 1.4 central character of away lattice | Scalar30 atp=29 | Teichmüller of residue1 is1=ψ⁻¹(30) | Coefficient lies in exact-character category. |
| 1.4 naturality | Identity and two composable coefficient maps | Id sends each ofr=2 basis vectors to itself; composite matrix products agree | Functorial patching is one simultaneous construction. |
| 1.5 fibre identity | Modular/nonmodular weight,r=2 | Both Hom and patched fibres have dimensions2,0 respectively | Nonzero criterion in both directions retained. |
| 1.5 nonsmooth integral coefficient | V(α),diag(1+29ⁿ,1) | E₁₂ multiplier1+29ⁿ≠1; mod29 multiplier1 | Open kernel required only after reduction. |
| 1.5 p-torsion coefficient | σ=k | σ/pσ=k, not0; M∞(σ)/p=M∞(σ) | Reduction identity does not assume torsion-freeness. |
| 1.6 big module size | f=1,2 | dim(K₁/Z₁)=3,6; canonical fibre dimensions1,2 | Finiteness is over completed group algebra, notR∞ alone. |
| 1.6 coefficient Hom API | Modular σ,r=2 | dimHom_K(σ,π)=2=dimM∞(σ)/𝔪∞ | Functor and big module agree. |
| 1.6 central character on dual | Scalar central valuea=2 | π action2; dual action2⁻¹=15; product1 | Compact characterψ is dual toψ⁻¹. |
| 1.6 inert specialization, indefinite | r=2 | Multiplicity dual2; fullH¹ dual4=2·2 | C versusC² distinction preserved. |
| 1.6 inert specialization, definite | r=2 | No Galois factor: both multiplicities2 | Definite case has single copy. |
| 1.6 zero detection | M∞=0; π≠0 | Zero module has zero fibre; nonzeroπ has nonzero dual | Nonvanishing is used. |
| 2.1 NC CM definition | Λ=O[[T]], Λ,Λ/(T),Λ/ϖ | (j,depth,δ)=(0,2,2),(1,1,1),(1,1,1) | One nonzero Ext degree characterizes CM. |
| 2.1 Auslander–Buchsbaum | Same modules | pd+depth=0+2=2 and1+1=2 | Formula uses nonzero finite modules. |
| 2.1 highest nonzero Ext | Λ andΛ/(T) | Maximum Ext degrees0,1 equal respectivepd0,1 | Correct end of Ext range. |
| 2.1 extension grade | Λ⊕Λ/ϖ | j=0=min(0,1), Ext⁰ andExt¹ nonzero | Grade exactness does not imply CM for unequal grades. |
| 2.1 zero endpoints | 0→0→Λ→Λ→0 | jΛ=0=min(∞,0) | Infinite grade convention works. |
| 2.2 support-rank definition and transport | A=k[ε]/ε², (A/(ε))² | Annihilator(ε), rank2; swapping basis preserves both | Actual quotient ring retained. |
| 2.2 zero support and rank | Zero module overA; zero ring | Ann0=A; A/A=0; 0ʳ=0 forr=0,1,2 | Rank recovery excludes zero support. |
| 2.2 submodule/quotient criterion | A=𝔽₂[ε]/ε²,M=A,N=(ε),r=1 | Endpoint lengths1,1; quotient annihilator(ε)≅k; AnnM=0; generator count1 | ConclusionM=A, rank1. |
| 2.2 split negative control | M=k²,N=k | Generator count2; annihilator quotient0 rather thank | Two separate hypotheses detect failure. |
| 2.2 mixed-characteristic control | A=ℤ/4,N=2A | AnnN=2A; Ann(M/N)/AnnM=2A≅ℤ/2; lengths1+1=2 | Nonreduced and mixed-characteristic case valid. |
| 2.2 Hopfian proof input | Multiplication onk² by invertible diagonal(1,2),k=𝔽₂₉ | Rank2, kernel dimension0, image dimension2 | Replaced by pinned Orzech theorem; no Noetherian restriction. |
| 2.3 fibre product definition | Two identity maps k→k | Pullback diagonal dimension1, product dimension2 | Compatibility equation necessary. |
| 2.3 projections and universal property | Pair(a,a) in diagonal | Both projectionsa; unique preimage(a,a); at(a,b) witha≠b, zero compatible preimages | Source and target fixed. |
| 2.3 annihilator identity | Node branchesA/(x),A/(y)→k | PullbackA; Ann=0=(x)∩(y); each projection surjective | Intersection direction correct. |
| 2.3 freeness equivalence, positive | Same node | Annk=(x,y)=(x)+(y); pullback support-rank1 | Both implications hold in model. |
| 2.3 freeness equivalence, negative | A=k[[t]],twoA→k | Ann sum0≠(t); pullbackA⊕tA≅A², support-rank2 | Fails rank1 exactly with failed ideal condition. |
| 2.3 nonsurjective maps | Two zero maps k→k | Pullbackk² dimension2; identity pullback dimension1 | Surjectivity not discarded. |
| 2.4 killed central variable | A=O[[T,x]],M=A/(x) | Grades1,0 overA,A/(x); bothδ=2 | Dimension unchanged, grade shifts. |
| 2.4 regular central variable | M=A | Grades0,0; dimensions3,2 | Dimension drops by1. |
| 2.4 general grade inequality | M=A/(ϖ) | Integral grade1, residual grade0 | Inequality direction1≥0. |
| 2.4 finite-action dimension comparison | A=O[[T]],B=A[[y]],M=B/(y) | Bothδ=2; M=B instead hasδ_A not in finite-module domain, δ_B=3 | Finiteness over both rings retained. |
| 2.4 growth | Ω=k[[T]],n=1,2,3 | Lengths1,2,3; log₂2=1,log₃3=1; log base1 excluded | n≥2 prevents undefined logarithm. |
| 2.4 p=2 and ramification | O=ℤ₂,K=1; ramifiedO above | j_O(𝔽₂)=1,j_k(k)=0; O/(3) length2 not1 | General algebra not restricted to unramified odd case. |
| 2.5 depth comparison | A=O[[T]],B=A[[y]],M=B | Depths2<3 | Universal equality would fail. |
| 2.5 finite CM transfer | M=B/(y)=A | Depths2=2,dimensions2=2 | Finiteness hypotheses give equality. |
| 2.5 identity map | A=B=O,M=O | Depths1=1,dimensions1=1 | r=s=0 and identity included. |
| 2.6 miracle flatness iff, flat case | A=O[[T,x]],M=A/(T) | Grades1=1; M≅O[[x]],ϖ regular | Both sides true. |
| 2.6 miracle flatness iff, torsion case | M=A/(ϖ) | Grades1≠0; ϖ·1=0 with1≠0 | Both sides false. |
| 2.6 no central variables | K=1,r=0,M=O or k | Grade pairs0=0 and1≠0; coefficient flatness true,false | Empty variable list handled. |
| 3.1 finite-length patched CM | Modulek[[x,y]]/(x); zero coefficient | depth=dim support=1<ambient2; zero gives0 | MCM base is support. |
| 3.1 extension argument | Two equal-dimensional CM endpointsA/(x) | Split extension hasdepth1,dim1; a zero endpoint contributes grade∞ | No dimension jump in same-dimension extension. |
| 3.2 common rank for weights | Nodal type, r=1,2 | Branch ranks(1,1),(2,2); both agree | No multiplicity-one assumption. |
| 3.2 integral type freeness | O[[x,y]]/(xy−p) | Integral dimension2, reduced special-fibre branches dimension1 each; rank2 stays2 after reduction | Domain may have reducible special fibre. |
| 3.2 component ideals | Singleton,both,empty | Ideals(x),0,A; quotientsk[[y]],A,0 | Intersections encode unions. |
| 3.2 cyclic interval quotient | A=k[[x,y]]/(xy) | Ann(x)=(y); (x)≅A/(y); singleton puncture givesA/I | Endpoint orientation correct. |
| 3.2 common-cap sum | Product of two nodes | (x₁)+(x₂)=(x₁,x₂); noninterval alternative gives(x₁,x₂y₁), leavingx₂ nonzero atx₁=y₁=y₂=0 | Interval condition essential. |
| 3.2 flat transport | Adjoin formal variablet | Ann(x) remains(y); quotient by(x,y) instead sendsx to0 | Power-series base change, not arbitrary quotient. |
| 3.3 reduced support and local freeness | Two disjoint type components,r=2,n=(1,2) | Local ranks2,4; product support has0 nilpotents | Constant rank not asserted across disconnected support. |
| 3.3 regular versus completed-local formal smoothness | Generic local parameter t atE-rational point | Completed local ringE[[t]] has dimension1, cotangent dimension1; E[t]/t² has dimension0,cotangent1 | Scheme regularity and completed local deformation smoothness stated separately. |
| 3.3 exact central character | det²⁸ twist,scalar30,p=29 | Residual twist1; integral value30⁵⁶≡784 mod841≠1 | Residual agreement does not imply category membership. |
| 3.3 adjoint preserves character | z=30,Sym²det⁻¹ | z²=59 mod841; inverse59⁻¹=784; product1 | Downstream adjoint lattices stay in category. |
| 3.4 projective-lift freeness | r=2 | dimHom(Pσ,D₀²)=2; quotient by socle contributes0 | Generation count2 matches support-rank2. |
| 3.4 two embeddings | r=2 | Both dimensions2dimD₀; proper essential extension can have same socle but larger total dimension | Reverse embedding is needed independently. |
| 3.4 tame rational decomposition | Distinct tame types once each | Each component rankr=2, not2r; repeated type would double to4 | Multiplicity of rational type recorded. |
| 4.1 adjoint/preimage lattices | d=dimP, f=1,2 | rankR₂,j=3d; R′/pR dimensiond, R′/pR′ dimension3d | Denominators distinguish objects. |
| 4.1 preimage exact sequence | Same lattices | Kernel dimension2d plus quotientd gives3d | First-order extension size correct. |
| 4.1 partial products and endpoint | f=1,2;j=−1,0,1 | Ranksd,4d andd,4d,7d; endpoint(3f+1)d | MP.8 construction imported without restatement as owned work. |
| 4.1 raw pullback control | R₂/p=P⊕P₁⊕P₂ | Projection ontoP surjective; raw cosocle has≥3 labels versus intended1 | Map exists; wrong single-cosocle assertion excluded. |
| 4.1 image latticeT′ | R=O⁴→T=O³,R′=Oe₁+pOe₂+pOe₃+pOe₄ | T′=Oe₁+pOe₂+pOe₃; dimT′/pT=1,dimT′/pT′=3 | Correct image quotient. |
| 4.1 comparisonN and exact sequence | L=O,previousT′ | Basis(1,e₁),(0,pe₁),(0,pe₂),(0,pe₃); rank4; ker(N→L)=pT rank3 | ×p map has stated sourceT,targetN. |
| 4.1 induced surjectionL_j→N_j | Model pullback withR′ | Source rank5,target4,kernelO·(0,pe₄) rank1 | Projection onto image lattice is surjective. |
| 4.2 Loewy criterion | Q=σ; allowed same/other-socle quotients | [Q/socQ:σ]=0 excludes simpleQ; permitted lengths3,2 | All four hypotheses retained. |
| 4.3 minimal generation | r=2,terminalσ quotient | Fibre dimension2 gives≥2; induction gives≤2 | Minimum exactly2. |
| 4.4 existence and homothety | A=O³,L=Oe₁+pOe₂+pOe₃ | pA⊂L⊂A; pL lackspe₂, so pA⊄pL | Normalize lattice before formingW₁,W₂. |
| 4.4 reduction exact sequence | SameA,L | dimA/L=2,dimL/pL=3,dimL/pA=1; e₂↦pe₂,e₃↦pe₃; 2+1=3 | Multiplication byp and denominators correct. |
| 4.4 reduced tame quotient | W₂ killed byp | Hom_O(k,O)=0, Hom_O(k,k) contains identity of rank1 | Target is reducedτ′°, never integralτ′°. |
| 4.4 modular labels | Allowed labels0,1,2; kernel−2,−1,3 | Kernel contains0 modular labels; M∞(W₁)=0; residual free rank2 stays2 | Label argument matches exactness. |
| 4.4 Y_j comparison | Rankr=2 patched integral type | Reduction(S²)/p=(S/p)²; both reduced inputs have rank2 | Integral module not identified with torsion input. |
| 4.5 adjoint freeness | S²↠M,generic rank2 | Generic kernel0; p-power-torsion kernel insidep-torsion-freeS² is0 | Scheme support and generic calculation suffice. |
| 4.6 third radical | k[t]/t⁴→k[t]/t³ | Full dimensions4→3; both rad³ quotients dimension3 | Only truncation is an isomorphism. |
| 4.7 generation iff | f=1,r=2 | BaselineHom2; extra map gives≥3 and image length≤3, factors throughN | r is not replaced byf. |
| 4.8 support profiles | f=1,j=−1,0; f=2,j=1 | Profile counts1,2,3; endpoint ranksd,4d,7d; double-adjoint would give16d | Single-raised support preserved. |
| 4.8 negative norm twist | diag(2,1),p=29 | Ndet⁻¹=15; Ndet=2 | Negative sign in bijection retained. |
| 4.8 integral ideal membership | p=29,N=12,r_j=12,a₂=14,d₂₁*=1 | 2/a₂=1/7≡25 mod29; denominators14,13; chart unit180/182≡8; element29·(1/7+O(29³)) | Repaired out-of-box a₂=2, whose chart unit0 violates genericity; p remains the integer prime. |
| 4.8 fibre-product ideal step | Rankr=2 free type valueS² | Ann(S²/pS²)=Ann(S²)+(p); inverse-image ideal adds exactlyp | Gluing uses actual annihilators. |
| 4.9 first-order multiplicity | r=2 | Surjectionk²→k² has kernel dimension0; k[[t]]→k before fibre has kernel(t)≠0 | Fibre qualification essential. |
| 5.1 GK equality | f=1,2 | 2≥3−δ,δ≤1 giveδ=1;4≥6−δ,δ≤2 giveδ=2 | Both bounds agree. |
| 5.1 I₁ invariants | D₀² | (D₀²)^I₁=(D₀^I₁)²=D₁² | Multiplicity2 survives invariant comparison. |
| 5.2 second congruence structure | r=2 | Each irreducible occurs twice; K₁-invariantsD₀² | Multiplicity-one wording would be false. |
| 5.3 faithful flatness | f=1,2; E overO | Grade pairs2=2,4=4; E/ϖE=0 althoughE flat | Nonzero closed fibre required for faithfulness. |
| 5.4 Banach lift | CompactO versusk | Hom_O(O,E)=E,ballO,residuek; Hom_O(k,E)=0 | Flat specialization excludes torsion false lift. |
| 5.4 continuity of specialization | O[[x]]→O,x↦ϖ | Kernel not open since quotientO infinite; residual kernel(ϖ,x) open | No open-kernel hypothesis onx. |
| 5.5 arbitrary-level equality | RegularC₂₉ module | Invariant dimension1 inside29; nonzero invariant subspace persists | Enlarged levels give lower bound in correct direction. |
| 5.5 nonnormal away subgroup | V=⟨1+pE₁₂,K₃⟩ | Conjugate adds p²(E₂₂−E₁₁) modp³, absent fromV | Fixed-level action replaced by tower actionΠ. |
| 5.5 auxiliary doubling and upper bound | π⊕π,δπ=f=2 | max(2,2)=2; zero module dimension−∞ still≤2 | Equality needsπ≠0. |
| 5.6 completed Hecke definition | T=k×k,𝔪=0×k | Localizede₁=1,e₂=0,T𝔪=k; original has2 maximal ideals | Localization before inverse limit retained. |
| 5.6 trace/determinant map | q=5,T=9,S=25 | S⁻¹T=5,qS⁻¹=6; parent roots17,21 return5/17=2,5/21=3 | Geometric target values retained. |
| 5.6 derived reduction | ComplexO --p→ O | Integral cohomologyk in one degree; residual differential0 givesk in2 degrees | Qualified reduction, not naive commutation. |
| 5.6 inertness and tensor unit | |S_p|=1,2 | Away factor count0,1; empty tensorO | Inert tower not confused with multivariable tower. |
| 5.6 completed evaluation | r=2 | Ĉ multiplicity2; Ĥ¹ multiplicity4; Ĉ⊗rank2 gives4 | Basis isomorphism does not preserveG_F action. |
| 5.7 R=T and CI | R=O[[x,t]],regular sequence(x) | dimR=3,dimR/(x)=2; faithful quotient module has annihilator0 inR/(x) | Faithfulness kills intermediate kernels; codimension1 CI. |
| 5.7 full dual versus multiplicity dual | C free rank2 overO[[t]] | C² rank4; annihilator0 for both; (N⊗C)²=0 iffN⊗C=0 | Faithful flatness equivalent forC,C². |
| gap:tame-types | GL₂(𝔽₂₉) | Scalar,principal,cuspidal,Steinberg dimensions1,30,28,29 | Correspondence excludes Steinberg and has precise content. |
| gap:single-type-rings | f=1,2; isolated versus crossing | Smooth relative dimensions4,5; crossing atf=1 has residual dim4,cotangent5 | No generic smoothness inferred without isolation. |
| gap:breuil-mezard-pbt | Ramificatione=2,f=1,highest pairs(1,0),(0,0) | GK Hodge pairs(2,0),(1,0); treating second highest pair as Hodge pair(0,0) gives wrong type | Ramified indexing retained. |
| gap:power-series-cancellation | O[[t,x]],O[[x]]; k=𝔽₉ | Dimensions3,2; a²=−1 givesa³=−a and inverse Witt lift returns[a] | Shared variable and coefficient correction retained. |
| gap:quaternionic-component-realization | Two nodal branches versus one | Full ring multiplicity2; one-branchMCM module multiplicity1 | Existing additional realization contract remains explicit. |


Pull request: #1745 (roadmap/hilbert-modular-varieties-and-shimura-curves-part-ii at b5ace90)
