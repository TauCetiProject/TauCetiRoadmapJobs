# Port report: ScholzeFunctorAndModpCohomologyOfTheLubinTateTower

Branch: `roadmap/scholze-functor-and-modp-cohomology-of-the-lubin-tate-tower`.
Head commit: `09d3e90621dee021f05a219ee02af2f5fe6d9212`.
Base: `9c6e95d`, with an empty initial `git status --short`.
Only the three requested files under `TauCetiRoadmap/ScholzeFunctorAndModpCohomologyOfTheLubinTateTower/` are committed. No push or GitHub write was made.

## Validation

```text
⚠ [8962/8962] Built TauCetiRoadmap.ScholzeFunctorAndModpCohomologyOfTheLubinTateTower.Suggested (1.8s)
warning: TauCetiRoadmap/ScholzeFunctorAndModpCohomologyOfTheLubinTateTower/Suggested.lean:70:8: declaration uses `sorry`
warning: TauCetiRoadmap/ScholzeFunctorAndModpCohomologyOfTheLubinTateTower/Suggested.lean:97:8: declaration uses `sorry`
warning: TauCetiRoadmap/ScholzeFunctorAndModpCohomologyOfTheLubinTateTower/Suggested.lean:116:8: declaration uses `sorry`
Build completed successfully (8962 jobs).
```

Warning count: 3, all `declaration uses sorry`; no other warnings or errors.

```text
gate ScholzeFunctorAndModpCohomologyOfTheLubinTateTower: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Dependency-direction output:

```text
depcheck: 204 roadmaps, 1387 edges, 0 problem(s)
```

There are no UPWARD, CYCLE or moved lines. The first gate invocation before the commit reported only `dirty=1` for the untracked target folder; every content counter was zero. The final invocation above is against the committed tree.

All four declarations were checked with `#check @name` in one scratch copy of the complete module, elaborated against Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`. An initial import-only scratch probe could not see module-private declarations, so the check was performed within the copied module. Every elaborated type agrees with its README statement:

- `AdmissibleCompactInvariants` retains its ring, scalar topology, group and group topology, and uses the native restricted invariants.
- `compactLie_cohomology_finite` retains primality; Hausdorff compact analytic Lie hypotheses; complete noetherian local coefficients; finite characteristic-p residue field; discrete scalar topology; smoothness; admissibility; positive annihilating exponent; and degree.
- `continuousCohomology_coind_iso` retains the topological-ring hypotheses, Hausdorff locally compact totally disconnected group, closed subgroup, jointly continuous coefficient action, continuous quotient section and right-inverse law.
- `moore_sl2_h2_vanishes` retains primality and `2 < p` on the actual SL₂(ℚ_p) carrier.

No binder or theorem signature changed. The module retains one real definition and three admitted headline theorems. The only Lean edit changes the missing-carrier description from the component construction to the component-action comparison, reflecting the supplier ownership repair.

## Draft pull request body

Build Scholze’s functor with complete noetherian local coefficients and its continuous-cohomology comparisons with the Lubin–Tate and Drinfeld towers. The roadmap develops almost finiteness, Frobenius rigidity, noncompact Shapiro, Ludwig’s Borel quotient and the quaternionic global argument to prove arithmetic finite length over ℚ_p, finite geometric multiplicities over general p-adic fields, residual Galois multiplicity bounds and Lubin–Tate smooth-vector finiteness.

AI assistance: Codex (GPT-6), including the port, source and supplier checks, and mathematical self-review.

## Supplier status and ownership

Roadmaps consumed that are still new-roadmap pull requests, by name:

AInfCohomology; AutomorphicGaloisRepresentations; ClassicalAdicEtaleCohomology; CompletedCohomologyAndLocalGlobalCompatibility; CompletedCohomologyPartII; DeformationAndDerivedPatchingAlgebra; DiamondEtaleCohomology; DiamondsAndVStacks; EndoscopicTransferAndUnitaryTraceComparison; GL2AutomorphicRepresentationsAndTransfer; HilbertModularVarietiesAndShimuraCurves; HodgeTateAndCanonicalSubgroups; IgusaVarietiesAndTorsionConcentration; KTheoryLowDegrees; LocalGaloisDeformationRings; NoncommutativeAndEquivariantIwasawa; PadicHodgeTheory; PadicLocalLanglandsForGL2Qp; PerfectoidShimuraVarieties; PotentialModularityAndCompatibleSystems; SmoothRepresentationsOfLocalGroups.

The earlier board designs ModpRepresentationsOfGL2OverLocalFields (MP.0–MP.1), LubinTateFormalModulesAndQuasiCanonicalLifts (LT.2), and ProetaleCohomologyOfPAdicCurvesAndTowers (§§7.1–7.2, 7.6–7.7) are also suppliers. They have no roadmap folder on main or among the indexed open roadmap heads. Their cited targets do exist in their board designs. The merge order places ProetaleCohomologyOfPAdicCurvesAndTowers at line 248, LubinTateFormalModulesAndQuasiCanonicalLifts at line 320, and this roadmap at line 353. No supplier notion moves down from a later roadmap.

The ownership sweep used `roadmaps list`, object-based `roadmaps grep` across the indexed 435 open heads and main, and object-based searches of board packages and designs. Existing-roadmap revisions were checked against main, including PerfectoidSpaces, AdicSpacesPartII, ClassFieldTheory and ReductiveGroupsPartII. The specified sibling heads were covered by the indexed search, including the new Part II roadmaps. There is no claim to have fetched additional package heads absent from the supplied board checkout.

Supplier replacements and duplication removals:

- ProetaleCohomologyOfPAdicCurvesAndTowers §7.1 now owns the finite- and infinite-level component theorem. Section 0.2 consumes it and retains only transport of the left/right action conventions and the scalar-height quotient. All finite-level hypotheses, formulas, API facts and computed Checks remain, expressed on the supplied object. Scope and ownership records this boundary.
- The former `proetale-finite-presentation` request is resolved to that supplier’s §§7.2, 7.6–7.7, whose §7.7 states exactly the arithmetic theorem needed in §§5.4 and 6.2. Its proof includes equivariant semistable models and nearby cycles. This is an actual contract replacement, not a second plan for the theorem.
- The existing Gross–Hopkins torsor/basic functor, compact duality, smooth categories, classification, blocks, full arithmetic comparison, Moore covering classification and native continuous induction remain imports under their named suppliers. SmoothRepresentationsOfLocalGroups §SR.0d.2 supplies the compact-open cohomology comparison; Scope and ownership now states explicitly that §2.1 extends it to the whole locally profinite group. No additional overlapping target was found for general-local-coefficient compact finiteness, noncompact split-quotient Shapiro, the strict-image/Frobenius refinements, Ludwig’s quotient, or the mod-p tower endpoints.
- No statement moved from Lean to README: the package’s definition and three headlines already satisfy the acceptance-test form. No missing statable headline was found. Degree-one perfection and elementary boundary computations remain README Checks rather than added padding.

## Verified edits and mathematical findings

1. Preserved the accepted locally admissible Galois-action repair in §1.6, including the direct-sum example and infinite-shift negative control. Made the Gal_F-action on the entire compact-dual category explicit in §1.2, as requested by the accepted review’s non-blocking note. DPS23 line 1337 states this action; the colimit argument uses SCH18 line 819 and line 871.
2. Replaced the component construction and arithmetic finite-presentation request by the earlier supplier targets described above. The component-action comparison and all the mathematical detail are retained.
3. Reworded §1.6’s degree-two character formula to say “free of rank one over A, with the indicated Gal_F×Dˣ-action”. The previous wording could suggest freeness over a group ring. For A=𝔽₅ and a scalar acting by 2, the A-dimension is one while the group-ring module need not be free.
4. Retained the arithmetic/geometric distinction in the supplier contract and §5.4. The new supplier design has an incorrect Check in `packages/ProetaleCohomologyOfPAdicCurvesAndTowers/design/README.md`, §7.7: it assigns arithmetic H⁰ dimension two for every K. At F=K=ℚ_p and n=0, Frobenius swaps the two geometric components; the invariant vectors are (a,a), of dimension one. This does not invalidate §7.7’s finite-presentation theorem. No supplier file was edited, and its incorrect Check is not imported.

The remaining README was reread as mathematical prose, including all Checks and worked examples. The two-height correction, separate Lubin–Tate descent request, unrestricted inducing characters in Ludwig’s vanishing, odd-prime range of Moore’s consequence, general-F versus ℚ_p finiteness distinction, lattice dual before tensoring, and coinvariants after continuous duality are retained.

## Citation and pin audit

The final resolver reports one cross-roadmap lead: `ProetaleCohomologyOfPAdicCurvesAndTowers §7.1: no roadmap ProetaleCohomologyOfPAdicCurvesAndTowers on main or in an open pull request`. This is resolved against the earlier board design: `packages/ProetaleCohomologyOfPAdicCurvesAndTowers/design/README.md` §7.1 exists at line 767 and supplies precisely the component theorem. Its §7.7 starts at line 840. The tool does not search board designs; the contract is an allowed earlier-design dependency, not a fabricated main/head citation. No Lean name is reported missing. Its printed note also says it did not inspect pinned Lake packages, so the pin checks below were done directly rather than inferred from that output.

The Mathlib supplier table was checked in the cited files at the manifest pin. Representative defining locations (relative to `.lake/packages/mathlib/`) are:

| Declaration | File and line | Actual contract retained |
|---|---|---|
| `continuousCohomology`, `TopRep.homogeneousCochains` | `Mathlib/RepresentationTheory/Homological/ContCohomology/Basic.lean`, lines 131, 113 | Homology of continuous homogeneous cochains |
| `TopRep`, `of`, `coind₁`, `res` | `Mathlib/RepresentationTheory/Continuous/TopRep.lean`, lines 31, 64, 243, 262 | Individually continuous linear operators; no joint action continuity built in |
| `ContRepresentation.trivial`, `toRepresentation`, `coindV`, `coind` | `Mathlib/RepresentationTheory/Continuous/Basic.lean`, lines 431, 72, 533, 550 | f(jh)=j f(h), compact-open topology, right translation |
| `Representation`, `Representation.invariants` | `Mathlib/RepresentationTheory/Basic.lean`, line 48; `Mathlib/RepresentationTheory/Invariants.lean`, line 73 | Native linear action and fixed submodule |
| `CategoryTheory.Abelian.Ext` | `Mathlib/Algebra/Homology/DerivedCategory/Ext/Basic.lean`, line 118 | Requires the appropriate abelian/derived category |
| `ContinuousMap`, `LocallyConstant` | `Mathlib/Topology/ContinuousMap/Defs.lean`, line 32; `Mathlib/Topology/LocallyConstant/Basic.lean`, line 212 | Continuous / locally constant maps |
| `Field.absoluteGaloisGroup` | `Mathlib/FieldTheory/AbsoluteGaloisGroup.lean`, line 42 | Automorphisms of the algebraic closure, with Krull topology |
| `Padic`, `PadicComplex` | `Mathlib/NumberTheory/Padics/PadicNumbers.lean`, line 531; `Mathlib/NumberTheory/Padics/Complex.lean`, line 137 | ℚ_p and completed algebraic closure |
| SL₂ topology and perfection | `Mathlib/Topology/Algebra/Group/Matrix.lean`, line 125; `Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean`, line 804 | Topological group; perfection needs a≠0 and a²≠1 |
| `PontryaginDual` | `Mathlib/Topology/Algebra/PontryaginDual.lean`, line 37 | Multiplicative circle-valued characters, not O-linear duals |
| `FiniteDimensional`, `Set.Finite` | `Mathlib/LinearAlgebra/FiniteDimensional/Defs.lean`, line 74; `Mathlib/Basic/Finite/Defs.lean`, line 185 | Two distinct finiteness predicates |
| `LieGroup`, `IsAdicComplete` | `Mathlib/Geometry/Manifold/Algebra/LieGroup.lean`, line 72; `Mathlib/RingTheory/AdicCompletion/Basic.lean`, line 56 | Analytic charts; completeness includes separatedness |

Tau Ceti locations (relative to `.lake/packages/TauCeti/`):

- `TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean` line 256 defines `IsSmoothDiscrete` by discreteness and open stabilisers; line 601 defines the full subcategory. These conditions do not include admissibility. No abelian instance for that full subcategory was found.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/TrivialFp.lean` line 73 defines `trivialFp` using the lifted discrete ZMod p carrier.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/Shapiro/AllDegrees.lean` lines 235, 244 and 448 provide the quoted quasi-isomorphism and Shapiro isomorphisms. They retain profiniteness and discrete coefficients.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologyComparison.lean` lines 134 and 232 provide the additive cocycle dictionaries; degree two retains local compactness.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/Finiteness.lean` line 155 retains the open normal subgroup, finite coefficient and positive-degree prime-test hypotheses.
- Reductive algebraic carriers now exist, for example `TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean` line 70 and line 139. The missing input for the reductive-cohomology headline is specifically the topological rational-point interface, not the algebraic reductive predicate. Searches found no such native general interface and no tower, almost-module system or Scholze-functor carrier making the geometric headlines statable.

Supplier sections were reopened at main or the indexed heads, not accepted from the old review’s numbering. This includes CompletedCohomologyAndLocalGlobalCompatibility §§0.6, 1.5–1.7, 3.7, 4.12; EndoscopicTransferAndUnitaryTraceComparison §§12.2–12.8, 12.11, 12.14, 12.19, 12.21; KTheoryLowDegrees §11.5; PadicLocalLanglandsForGL2Qp §§0.1, 0.3, 2.1–2.7, Layer 3, §§5.1–5.4, 6.7–6.8; HodgeTateAndCanonicalSubgroups §6.36; AInfCohomology §AI.3.1; PadicHodgeTheory §2.7; ClassicalAdicEtaleCohomology §§1.1, 1.3, 1.5, 8.2; EtaleCohomologyFoundations §§0.9, 0.11; and HilbertModularVarietiesAndShimuraCurves R18.3.29(c). The latter retains residual global absolute irreducibility and its dual/Frobenius conventions; it does not require local residual irreducibility.

Source checks used the certified numbered extracts identified by `sources.toml`, including SCH18 line 318, line 389, line 481, line 505, line 727, line 792, line 808, line 871, line 892 and line 1278; SCH13 line 516 and line 567; CDN23 line 923, line 1280, line 1452, line 1531, line 1565, line 1926, line 1954, line 1975 and line 2021; DPS23 line 1330, line 1387, line 1401, line 1748, line 1852 and line 1896; FUST22 line 358, line 434, line 478 and line 598; LUD17 line 862, line 922, line 1159, line 1230 and line 1303; GK14 line 1712; MOO68 line 2054. BW00 remains a locator-only reference, corroborated by FUST22 line 100 and CDN23 line 1555; its restricted publisher text was not read. No source text was copied into the roadmap. Web searches for related Mathlib and Zulip work did not establish a competing noncompact or geometric API; pin and ownership conclusions rest on the local primary sources.

## Remaining supplier contracts

The README continues to make these precise requests, with their hypotheses and source locators: `local-almost-finite-image` to AInfCohomology §AI.3.1; `temkin-good-germs` to AdicSpacesPartII R0.18; `arithmetic-stein-hochschild-serre` to ClassicalAdicEtaleCohomology §§1.3, 1.5; `height-zero-modular-uniformisation` to PerfectoidShimuraVarieties §§1.13–1.15; `potentially-barsotti-tate-lifts` to LocalGaloisDeformationRings §3.4; and `lubin-tate-arithmetic-descent` to EndoscopicTransferAndUnitaryTraceComparison §12.19. These accepted mathematical supply requirements are not silently treated as implemented declarations. Analytic-topology dimension is expressly supplied by HodgeTateAndCanonicalSubgroups §6.36; arithmetic finite presentation is now §7.7 of its earlier supplier design.

No port task remains unresolved. The supplier-design Check defect and locator-only BW00 access limitation are recorded above. No suspicious instructions in fetched text were followed. No credentials were accessed, no external message was sent, and no tooling, source package mathematics, manifest, merge order or outside-folder repository file was edited.

## Adversarial mathematics pass

These are explicit finite and degenerate instance computations, not proofs of the general targets. Rows distinguish each definition, API assertion and theorem; shared conventions are recomputed where used. Every result marked “retain” keeps the stated hypotheses. Imported theories are tested as interfaces rather than claimed as new targets.

| Statement | Instances tried | Values computed on both sides / negative model | Result and change |
|---|---|---|---|
| Rank and level convention | r=1,2; n=0,1 | v(det(ϖI_r))=1,2; det(0 matrix)=0 while 0∈1+M₂(O_F) | Retain r≥1 and full integral group at level zero |
| Scalar quotient | r=2, heights 0,1,2 | 0≡2 mod 2, 1≢0; quotient by shift 1 gives only one class | Retain two height classes |
| Right torsor / left D action | δ(2)=2 in 𝔽₅ | f(2)=3v; (2f)(1)=f(1/2)=2v | Retain inverse in equivariance |
| Frobenius normalization | unramified δ(ϖ)=2 mod 5 | geometric scalar 2⁻¹=3; arithmetic scalar 2; 2·3=1 | Retain inverse Artin factor |
| Trace and Tate twist | degree 1,2 divisors, p=2,3 | traces (1,0) mod 2 and (1,2) mod 3 | Retain k(−1) in untwisted H² |
| Lattice versus torsion dual | λ=O and scalar 2 in ℤ₅ | dual scalar 1/2; evaluation scalar 1; O⊗L/O=L/O; L/O⊗L/O=0 | Retain lattice dual |
| Torsion coefficient category | A=ℤ_p, V=A/p², A, 0 | p² kills first; no p-power kills 1∈A; zero has one element | Retain elementwise torsion; exclude untruncated A |
| General local ring | A=𝔽₂[ε]/ε²; zero ring | residue has 2 elements; ε²=0≠ε; zero ring has no proper maximal ideal | Retain nonzero local-ring convention |
| Prodiscrete / continuous dual | ∏ℕ𝔽₂ and ⊕ℕ𝔽₂ | coordinate functional has support size 1; continuous dual is direct sum, algebraic dual is larger | Retain topology in duals |
| Principal-series ordering | χ₁χ₂⁻¹=ε and =1 | inverse ratios ε⁻¹ and 1 remain excluded; central product is χ₁χ₂ε⁻¹ | Retain ordered induction convention |
| Universe and empty-cover convention | empty object, singleton cover | module sections 0; singleton Čech augmentation identity | Retain supplied cardinal cutoffs |
| Period torsor fibre | r=1, K=O_Fˣ | Fˣ/K=ℤ, with 0≠1; projective base has one point | Retain full heights |
| Period torsor diagonal equivariance | g=(12),h=(23) in S₃ | g⁻¹hg=(13), whereas h=(23) | Retain conjugation in simultaneous translation |
| Finite-level torsor base | K/K′=C₂ | two fibre points, compared with infinitely many G/K′ cosets | Retain finite-level base |
| Local image supplier | U=∅; small radius | restriction image 0; |p|<1; for U=V at disc boundary strictness fails | Retain strict-local contract |
| §0.1 closed-subgroup topos limit | G=H₀=1 | diagram one site; colimit H⁰=k=H⁰ | Retain qcqs/profinite hypotheses |
| §0.1 slice equivalence | G=C₂,H=1,X=point | contracted object has 2 points; slice recovers ordinary point site | Retain open subgroup |
| §0.1 invariant sheaf definition | trivial group and empty object | sections O_C/ϖ and 0 respectively | Retain invariants of quotient sheaf |
| §0.1 restriction API | constant section 1, identity and two inclusions | restrictions send 1↦1↦1; composites send 1↦1 | Retain naturality |
| §0.1 pullback and morphism detection | multiplication by 1 and 0 | pullbacks send 1 to 1 and 0, still distinct | Retain conservativity |
| §0.1 open-subgroup / torsor sheaf API | C₂-torsor, H=1 | two local values descend to one fibrewise value | Retain integral sheaf comparison |
| §0.1 tower equivalence | trivial tower G=J=1 | both sites X_ét; integral comparison 1↦1 | Retain finite étale and perfectoid-limit hypotheses |
| §0.1 Hochschild–Serre | K=1; C₂ sign action on 𝔽₃ | E₂^{0,j}=Hʲ; higher columns 0; sign fixed space solves 2v=v, so v=0 | Retain coefficient linearisation |
| §0.2 supplied components | F=ℚ₃,r=1,m=1; F=ℚ₂,m=1,2 | geometric counts 2; 1,2; over F̆ at first instance count 1 | Import §7.1, retain geometric base change |
| §0.2 action transport | r=1,δ(2)=2 mod 5 | D scalar 2, Weil scalar 3; inverses would give 3,2 | Retain comparison target |
| §0.2 level API | units 1,3 mod 4 reduced mod 2 | both map to 1; heights unchanged | Retain reduction |
| §0.2 height API | diag(ϖ,1),ϖI₂ | shifts 1,2, agreeing with determinant valuations | Retain determinant direction |
| §0.2 Weil commutation API | Art(w)=ϖ, d unit u | label products uϖ⁻¹=ϖ⁻¹u | Retain commuting actions |
| §0.2 label extensionality | heights 0,1; units 1,3 in ℤ₂ˣ | heights distinguish first pair; mod 4 distinguishes units | Retain all finite reductions, not just residue |
| §0.2 scalar-function comparison | heights 0,1 mod 2 | two independent constant values; shift-1 quotient gives one | Retain corrected two-coset coinduction |
| §0.3 admissibility definition | H=1,V=k,0,⊕ℕk | invariant dimensions 1,0,∞ | Retain finite generation predicate |
| §0.3 isomorphism API | scalar automorphism 2 over 𝔽₅ | fixed subspace dimension 1 before/after; inverse 3 | Retain preserve and reflect |
| §0.3 Serre API | trivial 0→k→k²→k→0 | fixed dimensions 1,2,1, all finite | Retain complete local / analytic hypotheses |
| §0.3 open restriction API | finite H=C_p, subgroup 1 | k invariants dimension 1 under both; unbounded trivial sum dimension ∞ under both | Retain open restriction |
| §0.3 coefficient compatibility | k=𝔽_p; O/p² | fixed dimensions 1 and O-length 2; cardinalities p and p² | Retain bounded coefficient identification |
| §0.3 dual finite generation | H=1,V=k and ⊕ℕk | dual k generated by 1; product ∏ℕk not finite-dimensional | Retain bounded compact dual criterion |
| §0.3 compact cohomology headline | C_p trivial k, analytic dimension 0 | dim Hⁱ=1 for all i≥0, finite but not eventually zero | Retain no torsion-free hypothesis |
| §0.3 positive-dimensional compact group | H=ℤ_p,V=𝔽₂ | dimensions (H⁰,H¹,H²)=(1,1,0) | Retain p=2 |
| §0.3 regular coefficients | V=C⁰(H,k), then countable sum | H⁰=k,Hⁱ>0=0; sum has H⁰=⊕ℕk | Retain admissibility hypothesis |
| §0.3 bounded exponent necessity | H=1,V=ℚ_p/ℤ_p | |V[pʲ]|=pʲ; |H⁰|=∞ | Retain positive bounded annihilator |
| §1.1 associated sheaf | r=1,π=k,0 | stalks k,0; equivariant functions δ⁻¹(t)v have f(1)=v | Retain evaluation construction |
| §1.1 functor/restriction API | u(v)=2v, then v(v)=3v over 𝔽₅ | composite scalar 6=1; sections and stalks both identity | Retain identity/composition |
| §1.1 exactness and detection | 0→k→k²→k→0 | stalk kernel/image dimensions 1=1; zero morphism has value 0 everywhere | Retain stalkwise tests |
| §1.1 tensor/base change API | k²⊗k³; 𝔽₂⊂𝔽₄ | stalk dimensions 6=2·3; base-changed trivial stalk dimension 1 over 𝔽₄ | Retain sheaf-level statement |
| §1.1 constant coefficients | A=ℤ_p/p² versus ℤ_p | first has constant stalk of size p²; second is outside torsion category | Retain coefficient restriction |
| §1.1 finite pushforward API | C₂-cover | stalk k² has dimension 2; invariant replacement dimension 1 | Retain regular quotient coefficient |
| §1.1 central-action API | r=1,z=2,δ(2)=2 | coefficient and D scalars both 2; lift change scalar 3 | Retain central character |
| §1.1 nonsmooth negative control | all functions K→k, infinite K | locally constant functions form proper subspace; delta at non-open singleton is excluded | Retain smoothness |
| §1.2 Sⁱ definition / smoothness | rank 1, π=k and 0 | cohomology (k,0,0,…) and (0,0,…); stabiliser of every vector open | Retain δ-functor |
| §1.2 Sⁱ δ-functor API | rank 1,0→k→k²→k→0 | degree-zero dimensions 1,2,1; all connecting maps 0 | Retain cohomological variance |
| §1.2 colimit API | filtered finite trivial sums kᵐ | colimit S⁰=⊕ℕk=S⁰(colimit); higher groups 0 in rank 1 | Retain filtered colimits |
| §1.2 Šⁱ definition / variance | M=k², u=2, v=3 mod 5 | two duals restore u=2, composition 1; dimension remains 2 | Retain covariant dual functor |
| §1.2 Šⁱ limits and Galois action | products dual to finite trivial sums | Š⁰=∏ℕk; inverse-limit projections are coordinate projections; Galois scalar 1 | Explicitly add action on whole category |
| §1.2 scalar extension and cup product | trivial rank-two k coefficient | dimensions (1,0,1); unit cup-product 1·1=1 | Retain finite coefficient extension, no arbitrary higher-tensor claim |
| §1.2 base-field change | ℙ¹_C⊂ℙ¹_C′,π=k | dimensions (1,0,1) on both sides; trace generator 1↦1 | Retain admissible comparison |
| §1.3 strictness definition | proper V,U=V; closed disc U=V | proper extension condition holds; disc boundary extension fails | Retain valuative rather than proper-subset meaning |
| §1.3 strict-image theorem | empty U; radius |p| disc inside radius 1 | image 0 in empty case; |p|<1 in nested case; reversed radii give no inclusion | Retain hypotheses |
| §1.4 system definition and rigidity | standard rank 1,k=1,2 | p₁q₁(x)=πx; ker(p₁)=πO/π²=im(q₁); lengths 1,2 | Retain exact-in-middle and Frobenius laws |
| §1.4 Frobenius API | p=2, standard rank 1 | γ(M₂)=(2)=2γ(M₁); constant O/π family gives (1)≠(2) | Retain exclude constant wrong system |
| §1.4 compatible identifications API | zero system; rank-two free system | rank 0, empty vector; rank 2 gives γ(M_k)=(k,k), reductions coordinatewise | Retain all transitions |
| §1.4 rank invariance API | swap basis on rank 2 | rational fibre dimension 2 before and after; swap squared is identity | Retain rank determined by fibre |
| §1.4 majorisation API | O/π² with submodule πO/π² | total length 2=1+1; zero vector has sum 0 | Retain almost elementary-divisor interpretation |
| §1.4 smaller-exponent API | k=3→2→1,rank 1 | exponents 3→2→1; Frobenius exponents 3p→2p→p | Retain one rank |
| §1.4 algebraic closure | finite-field Frobenius local system | over 𝔽₃ a Frobenius scalar 2 has no fixed nonzero scalar since a=2a implies a=0 | Retain algebraic closure for trivialisation |
| §1.5 admissibility and bounds | r=1,2,π=k | degree ranges [0,0],[0,2]; rank-two dimensions 1,0,1,0 in degrees 0–3 | Retain full-rank statement |
| §1.5 almost comparison | rank 1,π=𝔽_p | left O_C/p; right O_C/p; map sends 1↦1 | Retain canonical scalar map |
| §1.5 square-zero coefficients | A=𝔽₂[ε]/ε²,π=A,r=2 | dim S²=2, ε·1=ε≠0; residue-only model dim 1 | Retain general A |
| §1.5 compact-injective refinement | r=1 and regular coefficient | positive degrees 0, bound r−1=0 | Retain injectivity requirement for sharper bound |
| §1.5 bounded versus unbounded | A=𝔽_p[[T]],π=𝔽_p((T))/𝔽_p[[T]] | |π[Tʲ]|=pʲ; full S⁰ infinite although pπ=0 | Retain bounded 𝔪-truncation |
| §1.6 Weil/Galois extension | π=k[t,t⁻¹]/(tᵐ−1),m=1,2,3 | Frobenius orders divide 1,2,3; finite orbits | Retain admissible extension |
| §1.6 locally admissible extension | direct sum m=1,2,3,… | vector in summands 2,3 has orbit dividing 6; invariant space infinite-dimensional | Retain larger locally admissible domain |
| §1.6 negative extension control | π=k[t,t⁻¹] | orbit of 1={tⁿ:n∈ℤ}, infinite; no profinite discrete extension | Retain non-locally-admissible exclusion |
| §1.6 degree-zero formula | r=1,δ(2)=2; generic principal series | S⁰=δ, scalars (D,Weil)=(2,3); generic SL₂-fixed space 0 | Retain evaluation/action dictionary |
| §1.6 central-character theorem | r=2,z=2,δ(2)=2 mod 5 | det(zI)=Nrd(z)=4; δ(z²)=4 on both centres | Retain common central character |
| §1.6 twist/inverse | δ and δ⁻¹, value 2 mod 5 | twist factors (3,2), inverse (2,3); products (1,1) | Retain reciprocal factors |
| §1.6 nonsmooth A-valued character | δ(u)=u on ℤ₅ˣ,π=ℤ/5 | kernel on units {1} not open; reduction has δ(2)=2 and open kernel 1+5ℤ₅ | Retain continuous 𝔪-adic twists |
| §1.6 degree-one/two characters | r=2,δ=1,A=𝔽₂,𝔽₅ | S¹=0; S² A-rank 1; divisor-2 trace 0,2 respectively | Clarify rank over A, retain actions |
| §2.1 smooth Ext comparison | H=1,V=k²; H=ℤ_p,V=k | Ext⁰=H⁰ dimensions 2; degree-one dimensions 1; degree-two dimensions 0 | Retain actual smooth category |
| §2.1 induced carrier / evaluation API | J=H; J=1,H=C₂ | evaluation identifies induced V with V in first case; dimensions 2,1 in second | Retain coinduction, no termwise isomorphism |
| §2.1 coefficient-map API | u=2,v=3 mod 5 | postcomposition scalars 2,3, product 1 on every function | Retain functoriality |
| §2.1 Shapiro headline and homotopy API | H=C₂,J=1,V=𝔽₂ | H⁰ dimensions 1=1; Hⁱ>0 dimensions 0=0; cochain degree-zero dimensions 2≠1 | Retain cohomology isomorphism |
| §2.1 nonabelian test | H=S₃,J=1,V=k | induced dimension 6; invariant constants dimension 1=dim V | Retain right-coset convention |
| §2.1 profinite compatibility API | finite H=C₂,J=1 | restriction/evaluation sends constant 1 to 1 in both constructions | Retain supplied Shapiro specialization |
| §2.1 continuous determinant section | t=ϖ,2 | det diag(t,1)=t; det(tI₂)=t², unequal at ϖ | Retain genuine continuous section |
| §2.1 untwisting formula | character value 2 mod 5 | T² scalar 2·3=1; omitting value action loses inverse | Retain action in formula |
| §2.1 reductive finiteness | H=Fˣ,V=k trivial | compact units contribute finite-dimensional terms; valuation ℤ gives H⁰=k,H¹=k,H²=0 | Retain no compactness restriction on reductive H |
| §2.1 block vanishing | π=1; supersingular π | H⁰(SL₂,1)=k≠0; supersingular Hⁱ=0 by block theorem | Retain exceptional representation exclusions |
| §2.1 fixed-character restriction | π=δ∘det and small central subgroup | SL₂ acts by 1, fixed dimension 1; central product fixes same one-dimensional module | Retain central-character hypothesis |
| §2.2 continuous extension dictionary | zero cocycle; section change b | product cocycle 0; new cocycle b(g)+b(h)−b(gh); associator difference 0 | Retain global continuous section route |
| §2.2 Baer sum / kernel API | zero class plus c, pushout to 0 | 0+c=c; pushed-out cocycle 0 | Retain natural extension operations |
| §2.2 Moore headline | p=3,5 | μ orders 2,4; equations 2a=3a=0 or 4a=5a=0 force a=0 | Retain odd-prime vanishing |
| §2.2 ramified/equal-characteristic controls | ℚ₃ unramified quadratic; ℚ₃(ζ₃); 𝔽₃((t)) | μ orders 8,6,2; Hom dimensions 0,1,0 | Retain ℚ_p-specific conclusion |
| §2.2 p=2 control | μ(ℚ₂)=C₂ | Hom(C₂,𝔽₂) has 2 elements, dimension 1 | Retain p>2 |
| §2.2 H¹ and perfection | a=2∈ℚ₂,ℚ₃ | a²−1=3≠0 in both fields; H¹=0; H⁰=k | Retain characteristic-zero field input |
| §2.2 different coefficient prime | odd p, μ quotient by squares | quotient order 2; Hom to 𝔽₂ dimension 1 versus Hom to 𝔽_p dimension 0 | Retain coefficient-specific conclusion |
| §2.3 topology / exhaustion | rank 1; S with 0,1,2 points | H⁰=C⁰(Fˣ,π); product cohomology 0,Hʲ,Hʲ⊕Hʲ | Retain profinite continuity |
| §2.3 Cartan–Leray and high-degree vanishing | r=1 and π=0 | abutment π in degree 0 only; zero coefficients give all E₂=0 | Retain no arbitrary complex stand-in |
| §2.3 edge and naturality | rank 1,character δ | invariant sections f(t)=δ(t)⁻¹v; evaluation v, D scalar 2, Weil scalar 3 at chosen unit | Retain §1.6 convention |
| §2.3 differential signs | d⁰v(g)=gv−v | d¹d⁰=ghv−gv−ghv+v+gv−v=0 | Retain alternating signs |
| §2.4 Hom coefficient comparison | π=0,k,k² | Hom terms 0,Hʲ,Hʲ⊕Hʲ, matching tensor dimensions 0,1,2 | Retain actual finite-quotient source |
| §2.4 dual variance API | δ(g)=2 mod 5 | δ∨(g)=3; Hom from dual restores scalar 2 | Retain covariance |
| §2.4 finite quotient/topology API | ∏ℕk→k coordinate projection | one coordinate suffices; refining a finite quotient keeps the same value | Retain continuous Hom |
| §2.4 five-term exact sequence | rank 1 or π=0 | positive terms all 0; zero maps have kernel=image=0 | Retain named middle comparison, not unconditional identification |
| §2.5 component induction comparison | determinant section diag(t,1) | determinant t and evaluation at 1 unchanged; scalar tI₂ gives t² | Retain SL₂ subgroup |
| §2.5 exact sequence / generic isomorphism | supersingular; trivial character, odd p | outer H¹,H² zero in supersingular case; trivial S¹ and multiplicity both 0 for odd p | Retain exceptions and finite errors |
| §2.5 small-prime control | π=1,p=2,k=𝔽₄ | dim over 𝔽₂ of H²=2, over k=1; zero multiplicity is not forced | Retain no p=2 inference |
| §3.1 perfectoid Borel quotient | b=diag(p,1); b′=diag(p,p⁻¹) | shifts 1 and 0; b′∉B(ℤ_p); q(xb)=q(x) | Retain separate B′ quotient |
| §3.1 universal quotient API | two maps equal after q | every orbit has lift x, so output f(qx)=g(qx) at every orbit | Retain equality detection |
| §3.1 intermediate quotient API | height 0 and height 1 | M_B retains height 0; final quotient identifies points differing by b of shift 1 | Retain no integer height on final quotient |
| §3.1 fibre / quasicompactness | [1:0],[0:1]∈ℙ¹(ℚ_p) | two distinct values of a locally constant function; one-point model has only one | Retain actual profinite fibre |
| §3.1 local system and section API | χ=1,nontrivial χ; zero coefficient | stalk dimensions 1,1,0; invariant-vector model can give 0 for nontrivial χ | Retain torsor evaluation |
| §3.1 pushforward / induction API | χ=1 | induced functions on B∖G; evaluation at 1 sends constant 1↦1 | Retain unnormalised induction |
| §3.1 higher pushforward theorem | completed fibre pointwise profinite projective line | higher cohomology 0; degree-zero sections C⁰(ℙ¹(ℚ_p),k) | Retain arbitrary abelian sheaf statement |
| §3.1 integral tensor API | χ=1 on a fibre | C⁰(S,k)⊗O_C/p→C⁰(S,O_C/p) on finite S of size 2 gives two copies | Retain fibrewise comparison |
| §3.2 principal-series vanishing | χ₁=χ₂=1,p=2,3 | S²(Ind 1)=0; S²(1)=k(−1), dimension 1 | Retain equal characters and every p |
| §3.2 Steinberg vanishing | 0→1→Ind 1→St→0 | S²(St)=0; S¹(St) surjects onto k(−1), hence nonzero | Retain long-exact route |
| §3.2 extension / filtration theorem | extension of two principal series; one character | S²=0 for first; character contributes one Galois-character factor | Retain finite character filtration |
| §4.1 residual globalisation | reducible nonsplit local r̄; k=𝔽₉ | local dimension 2 reducible; global image contains perfect SL₂(𝔽₉), hence irreducible | Retain distinction between local/global irreducibility |
| §4.1 quaternion parity | 2 and 3 real places | sums 2·1/2=0 and 3·1/2=1/2 in ℚ/ℤ | Retain even degree |
| §4.1 residue-degree hypotheses | k=𝔽₉ | degree 2, cardinality 9≥4; auxiliary degree-3 argument separately has cardinality 27 | Retain separate bounds |
| §4.2 exchanged algebras | exchange at 𝔭 and ∞₀ | changes 1/2+1/2=1=0; definite split at 𝔭 becomes division | Retain two different algebras |
| §4.2 auxiliary place existence | p=3,k=𝔽₂₇,primitive ξ | |kˣ|=26,ord ξ²=13,so ξ²∉𝔽₃ˣ of order 2 | Retain degree≥3 |
| §4.2 Hecke normalization | determinant d and norm q | S_v=q⁻¹d gives qS_v=d in X²−T_vX+qS_v | Retain normalized scalar Hecke operator |
| §4.2 λ-typical coefficient | λ=O | Hom_O(λ,O)=O and O⊗L/O=L/O≠0; two torsion factors give 0 | Retain corrected dual |
| §4.2 fixed-central-character injectivity | central scalar 2 mod 5 | central action 2; dual action 3; quotient Iwasawa algebra enforces scalar 3 | Retain prescribed category |
| §4.2 residual fibre / occurrence | supersingular block; generic reducible block | support sizes 1 and 2; 𝔪_A acts by 0 on M | Retain finite-length fibre, not whole S |
| §4.2 characteristic-zero point | supercuspidal local component | WD dimension 2 irreducible; a hypothetical invariant line has dimension 1 and cannot match it | Retain coefficient-prime compatibility |
| §4.3 ideal-torsion injection | I=0,T | S[I]=S,0 and target torsion Ĥ¹,0 | Retain endpoints |
| §4.3 generator construction | zero versus unit operator | kernels S and 0; Q=0 and S, multiplication embeddings have the advertised kernels | Retain noetherian finite generators |
| §4.3 cokernel and generic refinement | generic pair; χ⊕χε | generic exceptional space 0; exceptional case permits a norm-one-trivial character | Retain no unconditional isomorphism |
| §4.4 generic Galois criterion | K=ℚ_p,fixed central character ζ | χ₁=1 forces χ₂=ζε; χ₂=1 forces χ₁=ζε: at most 2 ordered candidates | Retain finite support |
| §4.4 swapping/twisting API | ratio a; simultaneous η | swapped ratio a⁻¹; twisted ratio a; excluded set invariant | Retain genericity API |
| §4.4 central-character API | inducing χ₂⊗χ₁ε⁻¹ | central z gives χ₂(z)χ₁(z)ε(z)⁻¹ | Retain character normalization |
| §4.4 non-Galois field API | finite character field Eχ⊂K | χ(Gal_K)=1; quotient Gal(K/ℚ_p) need not exist | Retain subgroup formulation |
| §4.4 twist-invariant API | η(g)=2 mod 5 on Gal_K | formerly fixed vector now multiplied by 3 in Galois factor, hence nonfixed | Retain twisted invariant hypothesis |
| §4.4 character-count theorem | norm quotient C_m,m=p and m=2 prime to p | roots X^p−1 give 1 distinct root; X²−1 gives 2 for odd p | Retain prime-to-p count |
| §5.1 finite-image definition | empty support; one value k; one value ⊕ℕk | (support,dimension)=(0,0),(1,1),(1,∞) | Retain both conditions |
| §5.1 invariance API | replace k by k via scalar 2 mod 5 | support size unchanged 1; dimension unchanged 1 | Retain representative independence |
| §5.1 injection/exact-sum API | 0→k→k²→k→0 at one index | supports all ≤1; middle dimension 2=1+1 | Retain closure |
| §5.1 cosocle Hom criterion | nonsplit extension π₂ by π₁ | unique irreducible quotient π₂; Hom dimension 1 over End(π₂), elsewhere 0 | Retain ℚ_p and finite endomorphism fields |
| §5.1 compact/Weil cohomology API | H=1,ℤ_p,one trivial value k | dimensions (1,0,…) and (1,1,0,…); support unchanged or empty | Retain finite-dimensional values |
| §5.1 finite-length Hom API | W=k⊕k | Hom(W,k)=k²; one-point support | Retain restriction to irreducible arguments |
| §5.1 non-admissible control | supplied irreducible over unramified cubic F | cosocle length 1; End contains 𝔽̄_p and has infinite k-dimension | Retain no general-F Hom criterion |
| §5.2 arithmetic ascent | n=0,K=ℚ_p,geometric H⁰=k² | swap invariants {(a,a)} dimension 1; H¹ of Gal_K enters as error | Retain arithmetic descent |
| §5.2 compact-tower ascent | zero coefficient; n=0 component module | zero kernels/images in first; two unit cosets in second | Retain finite errors, no torsion-free level-zero assumption |
| §5.2 scalar-tower comparison | shift by pI₂ on height ℤ | two ℤ-orbits, each coinduced; H¹(ℤ,coind_1 W)=0 | Retain two-coset acyclicity |
| §5.2 finite-image reductions | one exceptional π and one outside support | finite error dimensions at first; error value 0 at second | Retain H¹ of kernel after invariants |
| §5.2 general-F geometric sequence | π=0 and identity level | all Hom terms 0; pullback at identity is identity | Retain unquotiented geometric scope |
| §5.3 finite support theorem | p=3,central quotient | prime-to-p central character group 𝔽₃ˣ order 2 | Retain finite central-character reduction |
| §5.3 twist support | p=5,n=0,K=ℚ₅(ζ₅),δ reduction on units | δ(Nrd(2))=δ(4)=4≠1 although δ is trivial on norm group | Retain both norm and level conditions |
| §5.3 positive-level twists | n≥1,δ prime-to-p valued | δ on pro-p Nrd(Ǧ_n) has image of p-power and prime-to-p order, so order 1 | Retain automatic positive-level condition |
| §5.4 arithmetic finite length | zero coefficients; exponent 1 and 2 | zero dual length 0; coefficient filtration has 1 and 2 residue pieces | Retain bounded dévissage |
| §5.4 μ_p extension | p=5,K=ℚ₅,Γ=C₄ | 4⁻¹=4 mod 5; averaging idempotent squares to itself; positive Γ-cohomology 0 | Retain direct-summand proof |
| §5.4 geometric corollary | π=0,1 | dimensions 0 and finite; no uniform central-character quotient imposed on arbitrary admissible π | Retain full admissible statement |
| §5.4 arithmetic/geometric components | residue degrees f=1,2,ramified quadratic f=1 | invariant dimensions 1,2,1 from swap/identity/swap on k² | Retain; flag supplier Check |
| §6.1 general-F multiplicity theorem | π=δ∘det,W=kᵐ | SL₂-fixed π⊗W dimension m; π=0 gives 0 | Retain all finite F and all p |
| §6.1 direct sums / characteristic-2 control | m copies of character; p=2 | Hom dimensions add m times; outer H² dimension 1 instead of 0 | Retain finiteness without odd-prime vanishing |
| §6.2 geometric multiplicity definition | ρ̄=0,k,k² | outputs 0,Π(k),Π(k)⊕Π(k) | Retain continuous dual topology |
| §6.2 covariance API | scalar maps 2 then 3 mod 5 | precomposition twice reverses, dual restores; composite scalar 1 | Retain covariant functor |
| §6.2 right-exact API | 0→ke₁→unipotent k²→k→0 | Hom(-,k) dimensions 1→1 with restriction 0; dual gives surjection onto Π(k), no left exactness | Retain right exactness only |
| §6.2 coinvariant formula | H=C_p,N(e₂)=e₁,N(e₁)=0 | invariants ke₁; coinvariants k[e₂]; natural invariant-to-coinvariant map 0 | Retain coinvariants, not invariants |
| §6.2 character formula | χ(g)=2 mod 5 | χ⁻¹(g)=3; 2·3=1 in invariant tensor | Retain inverse character |
| §6.2 level-map API | m≥n≥j,identity level | Π_m→Π_n→Π_j,composite same dual pullback; identity scalar 1 | Retain contravariant level direction |
| §6.2 functional equality API | coordinate functionals on k² | values on e₁,e₂ are (1,0) and (0,1), hence unequal; zero functional has (0,0) | Retain full evaluation detection |
| §6.2 finite presentation / coefficient API | finite extension k⊂k′,trivial finite quotient H=1 | tensor dimension 1 over k′; coinvariants unchanged; zero object finitely presented | Retain supplier §7.7 |
| §6.3 finite length and vanishing | absolutely irreducible d=3; d=0 | Π=0 in both; possible constituent dimensions 1 or 2 cannot accommodate irreducible 3 | Retain absolute irreducibility |
| §6.3 supersingular support | absolutely irreducible d=2 | every constituent has its one supersingular label; possible length 0 remains allowed | Retain no nonzero assertion |
| §6.3 reducible control | ρ̄=χ₁⊕χ₂ | Π is direct sum of character multiplicities, can have quotients from either summand | Retain no irreducible-support conclusion for reducible ρ̄ |
| §6.3 compact cohomology of Z | Z=0; Z=M,reducible block | dimensions 0,0 for Z=0; image filtration factors χ₁ and χ₂ for Z=M | Retain both kernel/image contributions |
| §6.4 smooth-vector finiteness | n=0 and zero coefficient | two geometric open-disc components; zero smooth space dimension 0 | Retain no whole-disc H¹ finiteness claim |
| §6.4 no finite-dimensional submodule | root subgroup ℚ_p→finite group of order N | x=Ny gives image(x)=image(y)^N=1; roots kill SL₂,leaving a character after scalar extension | Retain actual group argument |
| §6.4 infinite-level smooth part | odd p,character δ | S¹(δ⁻¹)=0 and H²(SL₂,k)=0,so Hom(δ,H¹)=0 | Retain vanishing of smooth subspace after finiteness |
| §6.4 small-prime control | p=2 | right outer group has 2 elements,dimension 1; vanishing not forced | Retain p>2 |
| §6.4 equivalence / functoriality | identity level and zero representation | pullbacks and smooth restrictions identity; both finite-length and smooth-dimension tests return 0 on zero | Retain supplied independent length criterion |
| Worked examples | rank-one δ; two heights; unipotent C_p; λ=O | scalars 3,2,3; height residues 0,1; invariant→coinvariant map 0; tensor L/O≠0 | All agree with their layer formulas |


Pull request: #1757 (roadmap/scholze-functor-and-modp-cohomology-of-the-lubin-tate-tower at 09d3e90)
