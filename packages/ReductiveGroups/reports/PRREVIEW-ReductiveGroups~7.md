# Review of ReductiveGroups (pull request #1332 at 9292379)

**Verdict:** needs changes

## R01 (P1) — The spectral companion still takes its analytic comparison from a consumer

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:133`: “a target of the lower FCO dictionary”.

**Claim:** This supplier attribution contradicts local ownership in §§3A.5 and 11.0 and closes a dependency cycle.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:242` consumes ReductiveGroups Layers 0–9; line 2444 sends ReductiveGroups Layer 11 back to its §4.3. Thus each roadmap supplies the other.

**Repair:** Point the companion to local §§3A.5 and 11.0 and remove the reverse supplier attribution. The local SL₂ chart at diag(1,−1) gives derivative coefficients −2,2,1 and determinant −4. It needs no result from the consumer. The passing README dependency scan does not examine this companion attribution.

## R02 (P2) — Forty-one data constructions still contain admissions

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63`: “noncomputable def centerHomeomorph”; `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:45`: “noncomputable def canonicalSCInput”.

**Claim:** The acceptance-file rules apply to all nine scoped Lean files, including admissions in structure laws. Homeomorphisms, bases, Lie structures, actions and model constructors cannot be admitted data.

**Witness:** Constructors containing admissions: IntegralRational 3, SignedADE 11, FoldingADE 12, CoverLift 5, SpectralWeyl 9, ChevalleyModel 1; total 41. Suggested, OrbitGeometry and BruhatCoordinate contribute zero.

**Repair:** Delete these constructors and declarations depending on them from the acceptance files. Retain the heavy constructions in the README and name the missing carriers in module docstrings; keep only simple real-bodied definitions required by headlines. Do not relocate admissions. The centering control is (1,3)↦(2,(−1,1)), inverse addition; n=0 has one configuration and cannot acquire an extra ℂ factor.

## R03 (P2) — The Chevalley record admits a torus as the prescribed semisimple model

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23`: “structure SCRealizationInput”; its root constraints at lines 37–39 are only eigenvalue and weight-generation equations.

**Claim:** These operands do not determine a representation of the specified normalized root/coroot frame. The sole conjugation theorem is also true for the wrong model.

**Witness:** In A₁ take the standard ℚ² representation, lattice ℤ², genuine diagonal H, weights ±1, and both root operators zero. All fields hold; root maps are identities; the closure has dimension 1, not 3.

**Repair:** Delete this surrogate and its dependent acceptance declarations. Keep §9B's full-frame construction and the missing-carrier explanation in Suggested. A future interface must identify the operators with the normalized prescribed datum: [E,F]=H rejects the witness because 0≠diag(1,−1), whereas E₁₂,E₂₁ satisfy it. The README's zero-operator negative Check does not constrain this record.

## R04 (P2) — The RootSystems gap still has no package-plan entry

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:357`: “What RootSystems must provide (gap:root-automorphism-based-factorization)”; the contract is consumed at line 2548.

**Claim:** The README wording is repaired, but a gap is declared only when the matching slug, supplier, section and need are in the package plan too. No readable `design/plan.json` entry exists.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:296` supplies chamber transitivity, not Weyl/based factorization. An existing-roadmap revision cannot replace that main contract, and the brief declares no package gap.

**Repair:** Register this exact slug in the plan's `gaps`, supplier RootSystems, its section, and a precise single need. Preserve the README contract; do not re-plan generic factorization here. The stated multiplication works: A₁ has 2=2·1 automorphisms; A₂ has 12=6·2 and δs₁δ⁻¹=s₂. This is registration, not a demand that a properly declared gap already be implemented.

## R05 (P2) — The affineness target is narrowed to the complex consumer

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1544`: “For a smooth connected affine reductive complex algebraic group A”.

**Claim:** The new source proves the needed affine quotient theorem with arbitrary affine ambient group over an algebraically closed characteristic-zero field. Ambient reductivity and the choice ℂ unnecessarily narrow the library theorem to its downstream application.

**Witness:** Arzhantsev Proposition 2.2, p. 2, arzhantsev lines 37–54, applies to A=Gₐ×Gₘ and H=Gₘ: A/H=Gₐ and O(A)^H=k[x]. The ambient group is not reductive.

**Repair:** State and construct the source's general affine-group/reductive-subgroup quotient over an algebraically closed characteristic-zero field, with its actual torsor and invariant-ring comparisons; obtain the complex reductive case by specialization. Retain any further field-descent extension explicitly. On the witness, right translation fixes x and changes t, hence k[x,t,t⁻¹]^H=k[x], quotient dimension 1. Keep SL₂/B=ℙ¹ as the negative control for reductivity of H, not of A.

## R06 (P3) — All eight companion import headers violate the acceptance form

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`: “import TauCetiRoadmap.ReductiveGroups.SignedADETargets”; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:1` imports a Mathlib submodule.

**Claim:** Each scoped file requires a single root Mathlib import followed only by used pinned TauCeti modules.

**Witness:** Seven companions lack the Mathlib root import. SpectralWeyl has it after other imports but also imports roadmap modules. CoverLift, Folding, IntegralRational and OrbitGeometry likewise use roadmap-import chains.

**Repair:** After removing R02/R03's inadmissible material, use conforming native imports in each surviving file. Re-elaborate Suggested. The scratch combination of native imports elaborates; no PR source was changed. This corrects the previous review's inaccurate assertion that SpectralWeyl had no root Mathlib import.

## R07 (P3) — Companion API equations and numerical controls are padding

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204`: “theorem rationalDistributionAction_apply”; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:38`: “theorem wrong_left_complement_overlaps”.

**Claim:** An acceptance file cannot become an API catalogue by being split into companions. Definition expansions, native specializations and rank-two Checks are not headline theorems.

**Witness:** The fresh probe closes `rationalDistributionAction_apply` with `rfl`. FoldingADE:329 already uses `LinearMap.fixedSubmodule_eq_ker`. Native ToralClosure/Points:241 supplies ChevalleyModel's sole conjugation equation.

**Repair:** Delete it from `Suggested.lean` (and from any companion used as an acceptance file); keep the mathematics in README APIs/Checks. Do not prove it in place. On a weight-three vector both distribution expressions are f(t³)m. The Bruhat control remains 7=1+2·3; genuine A₁ torus conjugation sends parameter 3 to 12 at torus parameter 2.

## R08 (P3) — Unfinished specification blocks and source records remain

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1884`: “Define”, before the two Harish–Chandra functors; line 3779: “Build the finite face/chamber Salvetti model”.

**Claim:** The fixes to §§6B and 10B do not complete the whole-document checklist. Other definitions lack three discriminating Checks and attached exact locators; the source manifest is absent. Several companion declarations lack mathematical docstrings.

**Witness:** Layer 7c defines two functors but its Examples has only S₃/C₂'s dimension check. §11B's Salvetti comparison has no theorem/page locator. There is no `TauCetiRoadmap/ReductiveGroups/sources.toml`.

**Repair:** Supply the remaining APIs, three discriminating Checks per definition, exact claim locators, and item-specific dependencies; record every cited work and its legal-source or uncertified status. Document surviving declarations and replace FoldingADE:310's “exact-word certificates” with the mathematical spanning statement. For induction test G=1 (rank 1), 1⊂C₂ (rank 2 and swap matrix), and C₂⊂S₃ (rank 3, transposition trace 1), not three restatements of the definition. For the arrangement comparison, A₁ gives π₁=ℤ and cover map ×2; rank zero gives π₁=0. The newly supplied §6B and §10B Checks are not missing.

## Verified sound

This full review read the 4,032-line README and all nine scoped Lean files, including unchanged passages. It checked each previous finding before the new pass. The outside-folder diff is empty; the PR worktree remains unchanged. The existing main roadmap already owns the Hopf/points, rational cohomology, signed integral and spectral programme, so this is not a replacement plan. Main ReflectionInvariantTheory and NilpotentOrbits were read for shape. No supplied repair report marked a finding not actionable.

### Previous findings, one by one

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01 consumer cycle | SpectralWeylTargets:133, “target of the lower FCO dictionary” | Not repaired; R01. |
| R02 admitted data | ChevalleyModelTargets:45, “noncomputable def canonicalSCInput” | Not repaired; all 41 remain, R02. |
| R03 wrong model | README:3094, “replacing both root operators by zero gives identity root maps” | Prose control retained; record unchanged, R03. |
| R04 missing complete-reducibility headline | Suggested:152, “theorem reductive_iff_linearlyReductive” | Repaired: native predicates, explicit characteristic zero, smoothness and geometric connectedness; successful elaboration. |
| R05 unregistered gap | README:357, “What RootSystems must provide (gap:root-automorphism-based-factorization)” | Partly repaired: required wording present, plan entry absent, R04. |
| R06 restricted relative base | README:2200, “For an arbitrary scheme S” | Repaired: arbitrary bases, gluing, finite-presentation limits and nonempty fixed-datum classification are specified. |
| R07 imports | CoverLiftTargets:1, “import TauCetiRoadmap.ReductiveGroups.SignedADETargets” | Not repaired; R06. |
| R08 padding | IntegralRationalTargets:204, “theorem rationalDistributionAction_apply” | Not repaired; fresh rfl witness, R07. |
| R09 shape/source record | README:1548, “Proposition 2.2, p. 2”; §10B's four Checks blocks | Partly repaired: §§6B/10B now have locators and discriminating tests; remaining blocks and manifest are R08. |

### Gate, signatures and padding probes

The worker's gate passes every check, including the targeted build, dependency scan, text scanners and zero stray files. Independent `lake env lean` on Suggested succeeded with **nine sorry warnings only**. Independent dependency output was:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line in that scanned README graph. All Needs lines and supplier citations were read. R01 is the companion attribution outside that graph. Layer 8 can consume Layer 9's independent split construction without consuming its own classification; the characteristic-zero complete-reducibility route uses the separately built geometric structural lane.

A scratch copy, preserving declaration bodies except for padding probes and replacing roadmap import chains by their actual native imports, elaborated **308 fully qualified declaration checks**, including all **28 declarations of Suggested**. The emitted types retain the intended algebraic closure, finite type/quasi-compactness, smoothness, separation, properness, characteristic zero, centrality, pairing and finite-index hypotheses. In particular the new characteristic-zero equivalence retains all three explicit hypotheses; the full Cartan iterate keeps both hQ and hY. No section-binder correction was needed. This checks signatures, not the truth of admissions.

The same copy tried one-tactic `simp`, `rfl` and `infer_instance` alternatives on **97 admitted theorem bodies**. The reported success was `rationalDistributionAction_apply` by `rfl`; direct native specializations were also compared with their pinned declarations. Failed probes certify neither depth nor truth. All Lean processes finished. The initial missing-object message in the worker's signatures note is superseded by the successful targeted build and independent elaboration.

### Headline coverage

The README endpoints are orbit local closedness, boundary dimension drop and closed-orbit existence; proper complex-point compactness and smooth comparison; characteristic-zero complete reducibility and Levi decomposition; affine reductive-subgroup quotients; Lang–Steinberg and finite-field Harish–Chandra/Mackey interfaces; full root-datum classification and relative structure; signed integral ADE, cover lifts and folded fixed Lie algebras; integral PBW and pinned integral models; rational highest-weight/Steinberg modules and regular functions; braid, arrangement and spectral Weyl monodromy.

Suggested now states nine headlines: `orbit_locallyClosed`, `boundary_dimension_lt`, `exists_closed_orbit_in_closure`, `exists_closed_orbit`, `compact_complexPoints`, `reductive_iff_linearlyReductive`, `exists_characterKernelEquiv`, `integral_pbw`, `permutation_extension_nonsplit`. The module docstring names the missing signed root-space/frame construction, pinned folding action and lattice, relative center/derived/tori/Borel schemes, full pinned integral model, homogeneous quotient/invariant comparison, rational highest-weight modules, regular-semisimple quotient, analytic atlas and general scheme Frobenius comparison. The companion stand-ins do not supply these carriers. No further statable missing headline was demonstrated in this pass.

### Seeded source sample

All **15 seeded sections** were compared with legally retrieved text at the indicated locators, including their hypotheses. No additional README locator is explicitly marked unverified. Fetches used the sources service; the readable Jantzen reference is the cited 1985 preprint. Its OCR omits parts of displayed formulas, so those pixels are not certified below; flatness, adjunction, cofree acyclicity and the complex comparison are readable, and the signs were independently computed.

| Section | Source text personally read | Conclusion |
|---|---|---|
| 0.1 points | milne lines 3053–3058, §3.5, p. 66 | Multiplication, identity and inverse through Δ, ε and antipode agree. |
| 0.3 descent | milne lines 4983–5017, Def. 5.65/Prop. 5.68, p. 116 | Sheaf condition supported; effective descent comes separately from ModularCurves §0E. |
| 1.0a rational representations | milne lines 3757–3798, Remark 4.1, pp. 84–85 | Right coaction and coefficient interpretation agree; typo recorded below. |
| 1.0b Tannaka comparison | Same Milne passage; native GroupFunctor:138 | Transport of the native reconstruction, including the explicit universe lift; not a fresh reconstruction theorem. |
| 1.1 cohomology/induction | jantzen lines 1507–1595, I.3.3–7, pp. 53–58; 1688–1707, I.3.9, p. 60; 1857,1994–2020, I.4.7, p. 73; 2102–2161, I.4.14–16, pp. 77–79a | Flat Hopf algebras, arbitrary coefficient modules, cofree acyclicity and right adjunction retained. Inversion relates the two function conventions. |
| 2.1 tangent/differential | milne lines 7950–8000, §10.14, p. 190; 8076–8091, Thm. 10.23, p. 193; 8143–8174, Props. 10.28–29, pp. 195–196; 1115–1140, Prop. 1.37, p. 18 | Scheme kernels and Lie kernels distinguished from smoothness; left-invariant bracket convention agrees. |
| 3.2 components | milne lines 1070–1082, Prop. 1.34, pp. 16–17; 2493–2523, Prop. 2.37/Def. 2.38, pp. 51–52 | Identity component and finite étale π₀ do not require smoothness of the original finite-type field group. |
| 4.1 Jordan | milne lines 7065–7095, Thm. 9.11, p. 168; 7194–7225, Thm. 9.18/§§9.19–21, pp. 170–171 | Perfect-field rational decomposition and geometric version distinguished; naturality supported. |
| 4.2 diagonalizable | milne lines 9630–9717, Prop. 12.3, Remark 12.5, Thms. 12.8–9, pp. 231–234 | Contravariance, torsion characters and nonreduced μₚ retained. |
| 4.3 multiplicative type/tori | milne lines 9835–9855, Thm. 12.18, p. 237; 9940–9979, Thm. 12.23/Cor. 12.25, p. 240 | Arbitrary-field Galois classification is broader than the pinned perfect-field equivalence; geometric lattices used. |
| 5.1 unipotence | milne lines 11643–11823, Props. 14.3, Thm. 14.5 and corollaries, pp. 280–284; 13741–13773, Thm. 16.30, pp. 334–335 | Representation criterion handles infinitesimal groups; Lie–Kolchin retains its reduced/connected/algebraically-closed conditions. |
| 5.2 radicals | milne lines 16386–16408, Props. 19.9–11, pp. 399–400; 11746–11761, Cors. 14.8–9, p. 282 | Smooth connected normal radical, separable base change and perfect-field quotient statements agree. |
| 6.2 linear reductivity | milne lines 10280–10339, §§12.52–56, pp. 248–249; 19713–19731, Thm. 22.42, pp. 477–478 | Characteristic-zero equivalence supported; README correctly restricts the positive-characteristic torus criterion to smooth groups. Source proof issue below. |
| 8.2 relative groups | conrad lines 3334–3344, Def. 3.1.1, p. 81; 3518–3531, Prop. 3.1.9, p. 85; 3659–3675, Cor. 3.1.11, pp. 88–89; 3868–3876, Thm. 3.2.6, pp. 94–95; 4072–4079, Thm. 3.3.4, pp. 98–99; 6592–6609, Thm. 5.2.11, pp. 157–158; 6685–6691, Thm. 5.3.1, pp. 160–161; 8159–8182, Thms. 6.1.16–17, pp. 196–197 | Arbitrary base, eventual reductivity, smooth tori/Borel functors, multiplicative-type center and nonempty fixed-datum classification supported. |
| 11.0 analytic dictionary | sga1 lines 9394–9411, XII Thm. 1.1, pp. 239–240; Milne tangent passages above | Completion comparison gives the stated cotangent consequence; the local smooth-chart construction remains owned here. |

The changed citations were also read: **arzhantsev lines 37–54**, Proposition 2.2, p. 2, proves a broader theorem than §6B (R05); **fang-lim-tan lines 91–121**, §2.1, pp. 2–3, gives the integral Weyl lattice and normalized contravariant form. The latter is not used to identify ordinary duality with contravariant duality: the central-character control below distinguishes them.

### Pinned libraries and ownership

Object searches covered the pinned libraries, main roadmaps, package material and the supplied open heads, using `roadmaps grep` and `roadmaps show` as well as local reads. Existing-roadmap revisions were not substituted for main contracts. Pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

The following **24 pinned entries** were opened, including signatures and relevant defining bodies. They are evidence about the actual objects, not name-only search matches.

| Pinned file and declaration | What it supplies; what it does not |
|---|---|
| `Mathlib/AlgebraicGeometry/Group/Affine.lean:187`, `hopfSpec.fullyFaithful`; essential image at 482 | Affine Hopf/scheme dictionary over a commutative ring. |
| `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132`, `isCommMonObj_of_isProper_of_geometricallyIntegral` | Proper geometrically integral groups commute; not all proper disconnected groups. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:94`, `Smooth.exists_isStandardSmooth` | Algebraic standard-smooth local presentations, not an analytic atlas. |
| `Mathlib/Geometry/Manifold/Sheaf/LocallyRingedSpace.lean:59`, `smoothSheafCommRing.isUnit_stalk_iff` | Germ unit iff evaluation is nonzero; no algebraic/holomorphic comparison. |
| `Mathlib/LinearAlgebra/FixedSubmodule.lean:42`, `LinearMap.fixedSubmodule_eq_ker` | Fixed points are ker(f−id), directly proving the companion API equation. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138`, `TauCeti.Tannaka.pointsFunctorIsoTensorAutFunctor` | Natural reconstruction with `GrpCat.uliftFunctor.{u+1,u}`. |
| `TauCeti/Algebra/Coalgebra/Comodule/Cofree.lean:127`, `Comodule.cofree`; `Hom.cofreeEquiv` at 283 | Actual right coaction and counit adjunction; derived cohomology comparison remains a target. |
| `TauCeti/Algebra/Coalgebra/Subcoalgebra/Finite.lean:232`, `exists_finiteDimensional_subcoalgebra_mem` | Finite-dimensional containment over a field. |
| `TauCeti/Algebra/Coalgebra/Comodule/MatrixCoefficient/FiniteType.lean:54`, `exists_finite_subcomodule_matrixCoefficientSubalgebra_eq_top` | Finite-type field algebra-coalgebra coefficient generation. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Comodule/Equivalence.lean:165`, `TauCeti.pointRepresentationCategoryEquivalence` | Natural point representations versus right comodules. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Embedding.lean:174`, `Comodule.isClosedImmersion_coordinateGroupSchemeHom_iff`; 213, `AffineGroupSchemeCat.exists_isClosedImmersion_generalLinear` | Specified coordinate-map criterion and finite-type affine embedding over a field. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/JordanDecomposition/Basic.lean:98`, `Point.jordanDecomposition` | Semisimple factor first, perfect coefficient-field scope. |
| `TauCeti/Algebra/AlgebraicGroup/Torus/CharacterLattice/Equivalence.lean:53`, `characterLatticeFunctor_isEquivalence` | Perfect-field section hypothesis; arbitrary-field extension is distinct. |
| `TauCeti/Algebra/AlgebraicGroup/Torus/Cocharacter/Basic.lean:52`, `instCharacterCocharacterPairingIsPerfPair` | Geometric perfect pairing over any field. |
| `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Coinvariants.lean:48`, `coinvariantsFppfQuotientIso` | Normal quotient represented for finite-type geometrically reduced ambient group; no arbitrary nonnormal quotient. |
| `TauCeti/Algebra/AlgebraicGroup/Unipotent/Basic.lean:70`, `geometricallyUnipotentPointsCommHopfAlgProperty` | Tests algebraic-closure-valued points; does not see infinitesimal non-unipotence. |
| `TauCeti/Algebra/AlgebraicGroup/Solvable/LieKolchin.lean:435`, `exists_basis_coefficientMatrix_isUpperTriangular_of_geometricallySolvable` | Reduced connected solvable group over an algebraically closed field and finite-dimensional comodule. |
| `TauCeti/Algebra/AlgebraicGroup/Unipotent/Radical/Construction.lean:102`, `eq_unipotentRadicalDefiningIdeal_iff` | Least candidate ideal, hence greatest subgroup; not an unconditional inseparable base-change equality. |
| `TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70`, `reductiveCommHopfAlgProperty`; `LinearlyReductive.lean:64`, `linearlyReductiveCommHopfAlgProperty` | Geometric normal-unipotent exclusion versus complete reducibility of finite-dimensional comodules. |
| `TauCeti/Algebra/AlgebraicGroup/Reductive/Over.lean:38`, `reductiveCommHopfAlgPropertyOver`; `baseChange` at 82 | Existing affine-ring relative predicate and arbitrary base change. §8.2's distinct work is transport/gluing on arbitrary schemes and relative structure; consume this affine predicate. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/Form.lean:124`, `kostantForm`; membership at 179,185 | Subring generated by actual divided powers and toral binomials; arbitrary supplied vectors do not automatically form a Chevalley frame. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241`, `kostantToralWeightTorusPoints_conj_rootSubgroupPoints` | Conjugation from weight/eigenvalue hypotheses; no prescribed root-datum conclusion. |
| `TauCeti/Analysis/Analytic/Inverse.lean:105`, `AnalyticAt.exists_openPartialHomeomorph`; `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:275`, `DifferentiableOn.analyticOnNhd_of_finiteDimensional` | Complete-source inverse theorem and finite-dimensional complex analyticity with complete codomain. |
| `TauCeti/GroupTheory/SpecificGroups/Braid/Basic.lean:304`, `BraidGroup.permHom` | Adjacent transpositions and surjectivity; does not itself supply the new nonsplitting headline. |

Cross-roadmap citations resolved by object (**13 rows**, covering repeated citations):

| Object | Resolved contract and ownership boundary |
|---|---|
| Relative Proj, dimension, finite-presentation limits | Main `TauCetiRoadmap/SchemeAndStackFoundations/README.md:551`, 755,848: §§0.3,0.7,0.9. The finite diagram descends at a common stage. |
| Frobenius, sheaf descent, torsors and quotients | Same roadmap:1825,2071,2458,2502,2589,2624,2745: §0.29, §1.1, §§1.14–18. Sheaf quotient does not imply scheme representability. |
| Projective-space H⁰ and properness route | Same roadmap:3437,5613: §2.6 and §4.12. Chow is a separate geometric input. |
| Cartier duality, effective affine/group descent, Weil restriction | Main `TauCetiRoadmap/ModularCurves/README.md:280`,386,412: §§0B,0E,0F. Finite locally free source, affine finite-presentation target; arbitrary base change. |
| Regular fibres, division and closed-subgroup quotients | Main `TauCetiRoadmap/SmoothBundlesConnections/README.md:221`,315,421: B1.0,1.1,1.4. Real smooth foundations; local holomorphic refinement remains here. |
| Coxeter, chambers, diagrams, integral data | Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:260`,296,321,356: Layers 2,4–6. The missing factorization is R04. |
| Integral ADE Gram models | Main `TauCetiRoadmap/IntegralLattices/README.md:568`, §0G. Signed root lines and Lie brackets remain distinct local objects. |
| Split Serre presentation | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1158`: actual normalized lift, straightening and injectivity. Root-row convention requires the stated transpose. |
| Gassmann permutation equivalence | Main `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:346`, §2.1; `Gassmann.almostConjugate_iff_permutation_equiv` at 378. The resolver's missing-name lead is not a defect. |
| Compact forms, flags, minors | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:407`,428, Layers 7–8; `TauCetiRoadmap/GroebnerGeometry/README.md:394`, G5. Increasing rows/first columns agree with the rank-one invariant control. |
| Van Kampen and fibration exactness | Main `TauCetiRoadmap/AlgebraicTopology/README.md:289`, Stage 1; `TauCetiRoadmap/DGFloer/README.md:481`, Layer 1.2. Retain path-product direction and π₀ exactness. |
| Signed versus unsigned folding | Supplied `TauCetiRoadmap/RootSystemsPartII/README.md:9`,59 expressly consumes this roadmap's signed ADE lane; its unsigned orbit-sum extension is distinct. No reverse supplier is introduced. |
| Analytic and flag consumers | Supplied `TauCetiRoadmap/FormalConnectionsOpers/README.md:242`,2444 establishes R01; supplied `TauCetiRoadmap/SchubertGeometry/README.md:68` consumes the group/root/representation lane. Main ReflectionInvariantTheory owns finite-reflection invariants, and main NilpotentOrbits owns its adjoint-orbit application. |

No duplicate fully qualified target name was found in the inspected supplier files. Search hits for open heads whose files the brief does not supply were not promoted to verified ownership claims; their limitation is recorded below.

### Computed adversarial table

The tables contain **217 computed instance rows**. These are counterexample searches and convention checks, not general proofs. Empty dimension is −∞. “Retain” means agreement on the displayed values; intended values do not certify admitted constructors. All 15 sample targets, all nine stated headlines and every finding's mathematical witness occur below.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| 0.1 convolution order | Constant S₃ | (12)(23)=(123); reversed multiplication gives (132) | Retain order; excludes opposite convention. |
| 0.1 unit/inverse | Gₘ, t=2; zero ring | 2·(1/2)=1; over zero ring 0=1 and one point | Retain. |
| 0.2 scheme/Hopf/point comparison | Gₐ on k[ε]/ε² | t↦ε survives in both models; reduction sends ε↦0 | Retain scheme-valued tests. |
| 0.2 nonabelian product | SL₂ elementary matrices | E(1)F(1)=[[2,1],[1,1]], F(1)E(1)=[[1,1],[1,2]] | Retain; excludes commutative surrogate. |
| 0.3 base change | μ₂ over ℚ and F₂ | coordinate rank 2 on both sides; F₂ has (t−1)²=0 | Retain flat base change without reducedness. |
| 0.3 inseparable descent | αₚ and purely inseparable fields | coordinate dimension p before/after; nilpotent t persists | Retain. |
| 1.0a coaction and dual | Weight 3, t=2 | action 8, dual 1/8, evaluation product 1 | Retain inverse in dual action. |
| 1.0a trivial/zero representations | Zero module; trivial line | dimensions 0 and 1; coaction on unit 1↦1⊗1 | Retain. |
| 1.0b reconstruction | Gₘ weight 3; tensor unit | reconstructed action 8=2³; unit action 1=1 | Retain tensor constraint. |
| 1.0b universe/trivial group | Trivial Hopf group | one tensor automorphism; ULift still one element | Retain lifted functor. |
| 1.1 Hochschild signs | H=A, M=A or ℤ/2 | d⁰=0,d¹=id,d²=0; H⁰=M,H¹=H²=0 | Retain; all-zero differential fails. |
| 1.1 coaction-first convention | Weight-one Gₘ | d⁰(1)=1⊗(t−1); permuted value (t−1)⊗1 | Retain, no extra minus sign. |
| 1.1 induction | 1⊂C₂ over ℤ | induced rank 2; nonidentity matrix [[0,1],[1,0]] | Retain. |
| 1.1 identity/zero induction | Identity subgroup map; M=0 | counit inverse returns m; zero equalizer has rank 0 | Retain. |
| 1.1 inversion comparison | Gₘ weight one | F(t)=t becomes f(t)=t⁻¹; both evaluate to 1 at identity | Retain. |
| 2.1 tangent bracket | SL₂ | [E₁₂,E₂₁]=diag(1,−1)=[E,F] | Retain. |
| 2.1 inseparable differential | Gₘ Frobenius, μₚ | differential p=0; dim Lie μₚ=1, scheme dimension 0 | Retain; smoothness not inferred. |
| 3.1 Hopf ideals | Gₘ, ideals (t−1),(t²−1),(t−2) | counits 0,0,−1 respectively | First two qualify; third excluded. |
| 3.1 quotient sheaf versus points | Squaring Gₘ over ℚ | 2 has no ℚ square root; has a lift over ℚ(√2) | Retain fppf surjectivity. |
| 3.1 nonreduced normal quotient | αₚ²/first αₚ, p=2,3 | coinvariants k[y]/yᵖ, dimensions 2 and 3 | Retain all-field extension. |
| 3.1 normality | S₃/A₃ versus S₃/C₂ | quotient group order 2; C₂ conjugates to a different subgroup | Normality separates the two cases. |
| 3.2 geometric components | μ₂ over F₂/F₃ | π₀ degrees 1/2; Lie dimensions 1/0 | Retain the component distinction. |
| 3.2 rational versus geometric | Gₘ/ℝ; μ₃/ℝ | algebraic π₀ degree 1 vs 2 real components; μ₃ degree 3 vs 1 real point | Retain geometric definition. |
| 3.2 nonreduced product | αₚ×constant C₂ | identity component degree p; π₀ degree 2 | Retain. |
| 3A disconnected orbit | C₂ permuting two points | orbit two points dimension 0; boundary ∅ dimension −∞ | Retain disconnected case. |
| 3A nonunique closed orbit | Gₘ on P¹ | open orbit closure P¹ contains {0} and {∞}, both closed | Existence retained; uniqueness excluded. |
| 3A nonreduced analytic local rings | ℂ[ε]/ε² | one complex point, cotangent dimension 1; reduction cotangent 0 | Keep local rings, not only points. |
| 3A regular fibre | idℝ × idℝ over ℝ | diagonal tangent (v,v); dimension 1=1+1−1 | B1.0 supply agrees. |
| 4.1 Jordan factors | [[2,1],[0,2]] in char 0 | 2I·[[1,1/2],[0,1]] equals original; factors commute | Retain. |
| 4.1 small characteristic | Nontrivial 2-by-2 unipotent in F₂ | g²=I, g_s=I, g_u=g | Retain; not semisimple. |
| 4.1 imperfect control | Companion of Xᵖ−s over Fₚ(s) | semisimple factor needs s^(1/p), absent in base field | Rational-factor perfectness retained. |
| 4.2 D(M) | M=0,ℤ,ℤ/p | groups 1,Gₘ,μₚ; last has p-dimensional coordinate ring | Retain torsion/non-smooth case. |
| 4.3 pairing | χ=3, λ=−2 on Gₘ | χ∘λ=t⁻⁶, pairing −6 | Retain sign. |
| 4.3 nonsplit torus | Norm-one torus ℂ/ℝ | geometric character rank 1, rational character rank 0; σ acts −1 | Retain Galois lattice. |
| 4.3 wrong character criterion | Gₐ | character group 0, dimension 1; D(0) dimension 0 | Character data alone not arbitrary-group classification. |
| 5 unipotence/radical | Gₐ,Gₘ,SL₂ | radical dimensions 1,0,0; SL₂ characters 0 but not unipotent | Retain the radical definition. |
| 5P exponential/logarithm | 2-by-2 N²=0 | exp N=I+N; log(I+N)=N | Retain characteristic-zero scope. |
| 5P nonabelian exponential | Heisenberg X=E₁₂,Y=E₂₃ | exp(X+Y)=I+X+Y+(1/2)E₁₃, exp X exp Y=I+X+Y+E₁₃ | Variety, not additive-group identification. |
| 6 reductive versus linear reductive | SL₂, char 0 versus p | char 0 rational modules semisimple; in p, Symᵖ has proper Frobenius submodule of dimension 2 | Retain distinction. |
| 6A Levi semidirect law | Gₐ⋊Gₘ | (1,2)(3,5)=(7,10), not (4,10) | Retain action term. |
| 6A Levi ambiguity | Direct product L×Gₐ | conjugation by Gₐ fixes L; stabilizer dimension 1 | No unique conjugating element. |
| 7 rank-one factorization | a=b=1; a=1,b=−1 | denominator 2 and matrix [[2,1],[1,1]]; second denominator 0 | Retain open-cell condition. |
| 7C complementary roots | A₂, w=s₁ | retained {α₂,α₁+α₂}; inverted {α₁}; intersection ∅ | Wrong w₀s₁ choice overlaps α₂. |
| 7C ordered coordinates | a=2,b=3,c=7 | complement-first residual 1, cross term 6, total 7 | Retain factor order. |
| 7C rank-zero product | Empty positive roots | product 1, coordinate affine space dimension 0 | Retain. |
| 7a Lang | Gₐ/F₂, a∈F₄ with a²+a=1 | a⁻¹F(a) in additive notation =1 | Surjectivity requires geometric points. |
| 7a disconnected control | Constant C₂, F=id | Lang image {1}, size 1<2 | Connectedness necessary. |
| 7b finite-field parameters | q=2,3; q=1 | valid field sizes 2,3; no one-element field | Retain positive-power Frobenius requirement. |
| 7c Harish-Chandra coefficients | Averaging Cₚ | e=(1/p)Σg has denominator invertible off p, nonexistent over Fₚ | Coefficient hypothesis retained. |
| 7d Mackey identities | P=Q; opposite Borels in SL₂ | identity term identity; opposite intersection T, unipotent intersection 1 | Retain common-Levi geometry. |
| 7f Gassmann counts | S₃/C₂, g=1,(12),(123) | fixed cosets 3,1,0; both counting sides 6,2,0 | Named supplier suffices. |
| 7g associated parabolics | GL₃(F₂), lines/planes | each permutation dimension 7; distinct stabilizers need not be conjugate | Retain associated, not conjugate, statement. |
| 8 imperfect-field reduction | Res(Fₚ(s^(1/p))/Fₚ(s)) Gₘ | geometric dimension p; torus dimension 1, radical dimension p−1 | p=2 gives 1; p=3 gives 2; retain imperfect scope. |
| 9A signed opposite root | A₂, α=α₁+α₂ | ε(α,−α)=−1; [E₁₃,−E₃₁]=−(H₁+H₂) | Retain normalization sign. |
| 9A Jacobi | α₁,α₂,−α₁−α₂ | Cartan terms cancel to 0 | Retain signed bracket, not unsigned. |
| 9A lift kernel | Rank 0,1,2 lattice | character-kernel orders 1,2,4 | Genuine Suggested headline; no splitting inferred. |
| 9A root automorphisms | A₁,A₂ | orders 2=2·1,12=6·2; δs₁δ⁻¹=s₂ | Mathematics sound; ownership R04. |
| 9A central-lattice extension | A₁ plus rank-one centre | centre actions +1 and −1 induce same root action | Full Y action required. |
| 9A negative folding cycle | A₂ diagram involution | long-root vector maps to negative; integral fixed rank 0, mod 2 fixed rank 1 | Retain torsion kernel. |
| 9A adjacent fold normalization | A₂ | raw [h,e]=e; normalized H=2h,F=2f gives [H,E]=2E,[E,F]=H | Index 4; do not divide integrally. |
| 9A folded Cartan matrices | A₃,A₄,D₄ | [[2,−2],[−1,2]], [[2,−1],[−2,2]], [[2,−3],[−1,2]] | Retain transpose and long/short order. |
| 9A exceptional folds | D₄ triality; E₆ involution | dimensions 14=12+2 and 52=48+4 | Retain full fixed spaces. |
| 9A full-lattice fixed kernel | γ=[[0,−1],[1,−1]] | det(γ−I)=3, Smith entries 1,3; integral kernel 0, F₃ kernel span(1,−1) | Retain arbitrary coefficients, including bad primes. |
| 9A integral PBW | A₁, E^(1)E^(1) | coefficient 2 on E^(2); mod 2 becomes 0 | Integral coefficient/base change agree. |
| 9A toral PBW | Root-free rank-one torus, weight −1 | binom(−1,0..2)=1,−1,1 | Full toral lattice retained. |
| 9A rank-zero PBW | Zero Lie algebra and empty datum | one monomial 1; integral subring ℤ inside ℚ | Basis singleton; no empty-basis error. |
| 9B isogeny points | SL₂(ℚ)→PGL₂(ℚ) | diag(2,1) has nonsquare determinant class | Scheme surjectivity not rational surjectivity. |
| 9C Frobenius distributions | Degree 1 and degree p | Fr(E^(1))=0, Fr(E^(p))=E^(1) | Retain divided-power indexing. |
| 9C contraction | Weights 1 and p−1 | individual contractions 0; tensor weight p contracts to weight 1 | Not a tensor functor. |
| 10A torus versus Lie weights | Gₘ in char p, weights 0,p | Lie eigenvalues both 0; characters 1 and tᵖ differ | Rational category requires actual torus. |
| 10B Steinberg | SL₂, p=2,3 | dimensions 2 and 3 for highest weights p−1 | Retain restricted highest weight. |
| 10C binary forms | p=3,n=4 | Sym⁴ dimension 5; simple highest-weight submodule dimension 4 | Retain simple socle, not whole module. |
| 10C generation | p=2,n=2 | y² generates span{x²,y²}, dimension 2; xy generates dimension 3 | Retain generation distinction. |
| 10D rank-one invariants | SL₂/N⁺ | invariant ring k[a,c]; geometric quotient A²−{0}, affinization A² | Extra origin excluded from quotient. |
| 10D torsor transition | a=c=1 | s_c=s_a n(−1); u_c=u_a+1 | Retain sign. |
| 11.0 cotangent comparison | Gₐ, parameters t and u=2t | [t²]=0; dt=1; du=2 and derivative of exp(u/2)=1/2 | Composite derivative 1, not 2. |
| 11.0 inversion/bracket | Gₘ and SL₂ | inversion derivative −1; [E,F]=H | Retain sign across dictionaries. |
| 11A braid nonsplitting | n=0,1,2 | first two trivial; B₂=ℤ→C₂ is mod 2, any odd lift doubles nonzero | Hypothesis n≥2 retained. |
| 11B arrangement cover | A₁; rank zero | C* square cover induces ×2 on π₁=ℤ; rank-zero vector space π₁=0 | Retain essential and central cases. |
| 11C regular versus semisimple | 2-by-2 regular nilpotent | centralizer C*×C dimension 2, not torus | Regularity alone excluded. |
| 11D adjoint chart | SL₂ at H | root/toral coefficients −2,2,1; determinant −4 | R01 uses local analytic owner. |
| 11D normalizer splitting | SU₂ Weyl representative | n²=−I, order 4; Weyl reflection order 2 | No group section inferred. |
| 11D fibration | A₁, G/T→G/B | fibre C contractible; G/B=P¹ has π₁=0; π₁(G/T)=0 | Retain global-form-independent route. |
| 11E projectors | diag(1,3) | projectors diag(1,0),diag(0,1), sum I; denominators ±2 | Repeated eigenvalues would give denominator 0 and are excluded. |

Headline and finding-specific Lean controls (filenames are under `TauCetiRoadmap/ReductiveGroups/`):

| File / statement | Instance | Computed sides | Result / change |
|---|---|---|---|
| Suggested: `exists_characterKernelEquiv` | E=C₂×ℤ, trivial lattice action | χ(n)=(−1)ⁿ gives (s,n)↦(s(−1)ⁿ,n); projection n=n | Retain; inverse twist is itself. |
| Suggested: `integral_pbw` | Root-free rank 1 and rank 0 | binomial basis 1,h,h(h−1)/2,…; rank 0 basis {1} spans ℤ | Retain full toral carrier. |
| OrbitGeometry/Suggested: `orbit_locallyClosed` | x=1 and x=0 | D(t) open; {0} closed | Retain. |
| OrbitGeometry/Suggested: `boundary_dimension_lt` | x=1 and x=0 | 0<1 and −∞<0 | Retain. |
| OrbitGeometry/Suggested: `exists_closed_orbit_in_closure` | x=1 on A¹ | choose y=0; {0}⊆A¹ | Retain. |
| OrbitGeometry/Suggested: `exists_closed_orbit` | A¹; empty scheme | y=0 exists; empty scheme has 0 points | Nonempty binder retained. |
| OrbitGeometry/Suggested: `compact_complexPoints` | P¹; empty proper scheme | compact sphere; empty compact set | Retain. |
| FoldingADE: `fixedCartan_eq_kernel` | γ=−1 on ℤ | fixed module 0=ker(−2) | Already a native one-lemma API equation, R07. |
| IntegralRational: `rationalDistributionAction_apply` | Gₘ weight 3 | f acts by f(t³) on both sides | `rfl` probe; R07. |
| ChevalleyModel: `torusPoint_conj_rootPoint` | Genuine A₁, s=2,u=3 | diag(2,1/2)E(3)diag(1/2,2)=E(12) | Native specialization, R07; zero-root model gives I=I, R03. |
| SpectralWeyl/Suggested: `permutation_extension_nonsplit` | n=2 | any lift 2k+1 doubles to 4k+2≠0 | Retain n≥2; n=0,1 split trivially. |
| BruhatCoordinate: `wrong_left_complement_overlaps` | Wrong w₀s₁ | α₂ in both sets, overlap cardinality ≥1 | README negative control; R07. |

Additional controls on characteristic and base hypotheses:

| Statement | Instance | Computed sides | Result / change |
|---|---|---|---|
| 5.1 infinitesimal unipotence | μ₂/F₂, α₂/F₂ | Both have one geometric point; μ₂ has a nontrivial weight-one line with fixed space 0; α₂ has a faithful unipotent 2-dimensional representation | Scheme representation criterion distinguishes them. |
| 5.2 separable versus inseparable radical | Res(F₂(√t)/F₂(t))Gₘ | k-radical dimension 0; geometric radical dimension 1 | Do not replace base-change inclusion by unconditional equality. |
| 6.1 reductive/semisimple | Gₘ and 1 | Radical dimensions 1,0; unipotent-radical dimensions 0,0 | Gₘ reductive but not semisimple; 1 both. |
| 6.2 repaired headline | Gₘ/ℚ; Gₐ/ℚ; SL₂/F₂ | Reductive/LR truth values (1,1), (0,0), (1,0) | Headline now present; characteristic binder retained. |
| 6.2 Reynolds | Gₘ on Laurent polynomials | R(x)R(x⁻¹)=0, R(xx⁻¹)=1 | Linear projection, not algebra homomorphism. |
| 7.1 Borels and tori | GL₂ and Gₘ | (dim G,dim B,dim T,dim G/B)=(4,3,2,1) and (1,1,1,0) | Both general and toral cases fit. |
| 7.2 unique Levi conjugation | Upper GL₂; P=G | Upper entry after conjugation is a(t−s); for U=1 the conjugating set has size 1 | Unique U-conjugator retained. |
| 7.3 integral root | SL₂/F₂ | Character exponent 2; Lie derivative 0; root/coroot pairing 2 | Do not identify the integral character with its derivative. |
| 8.1 full datum | SL₂→PGL₂ at p=2 | Root indices 2 versus 1 in the respective character lattices; kernel μ₂ length 2 | Dynkin diagram alone does not classify forms. |
| 8.2 repaired arbitrary-base scope | GL₂ over k[x₁,x₂,…] and over k×k | Center rank 1, derived relative dimension 3, Borel relative dimension 1 on each fibre | Both bases are now included, with gluing and limits. |
| 8.2 nilpotents and empty base | SL₂ over ℤ/4; Spec 0 | Center μ₂ has special-fibre length 2/tangent dimension 1; empty base realizes both rank-0 and rank-1 data as ∅ | Keep center non-smoothness and nonempty classification hypothesis. |
| 8.3 p=3 unit filtration | 1+aε+bε², ε³=0 | Product coefficients a+c,b+d+ac; geometric kernel dimension 2 | Independent calculation supports general Weil-restriction example. |
| Source 6.48 negative control | p=3, (0,1) squared | Stated norm of product t³; product of norms t² | Source's two-coordinate formula requires p=2. |
| Source 12.56 negative control | μₚ in characteristic p | Complete reducibility true by ℤ/p-grading; identity component torus false | README's smoothness restriction fixes this source overclaim. |

Further controls on the changed passages and constructed maps:

| Statement | Instance | Computed sides | Result / change |
|---|---|---|---|
| 6B general affineness, R05 | A=Gₐ×Gₘ, H=Gₘ over Q̄ | Invariants k[x,t,t⁻¹]^H=k[x]; quotient Gₐ has dimension 1 | Broaden ambient group and field. |
| 6B quotient/torsor | H=1; H=A | Quotient dimensions dim A and 0; (a,h)↦(a,ah) inverted by (a,b)↦(a,a⁻¹b) | Maps agree on both extremes. |
| 6B invariant surface | SL₂/T, x=ab,y=cd,z=ad | xy=(ad)(bc)=z(z−1); quotient dimension 3−1=2 | Retain equation. |
| 8.2 limit/gluing comparison | GL₂ over k[x₁,x₂,…] | Model already over k; centers Gₘ, derived SL₂, Borels P¹ before/after pullback | Retain arbitrary-ring scope. |
| 10B induction convention | G=T=Gₘ, λ=3 | f(t)=t⁻³; (2·f)(t)=f(t/2)=8f(t) | Highest weight +3. |
| 10B ordinary/contravariant dual | Gₘ weight 3 | Ordinary dual action 1/8; pinned contravariant dual action 8 | Distinct dualities retained. |
| 10B anti-involution | SL₂, upper/lower elementary matrices u,v | τ(uv)=[[2,1],[1,1]]; τ(v)τ(u) same; τ(u)τ(v)=[[1,1],[1,2]] | Order reversal necessary. |
| 10B normalized form | SL₂, λ=2 | Divided-power Gram diag(1,2,1): rank 3 over Q, rank 2 over F₂ | Radical dimension 1, simple quotient dimension 2. |
| 10B unit highest weight | λ=0 | ∇=Δ=L=k, normalized Gram (1), radical 0 | Retain rank-zero endpoint. |
| 9A central cover, nonabelian control | Q₈→C₂² | Character twist i↦−i,j↦j sends ij=k↦−k; (−i)j=−k | Centrality determines homomorphism; four twists. |
| 11.0 quotient rule | Gₘ, a=1,s=t, ε(t)=1 | D(1/t)=0−1=−1 | Denominator nonzero; sign fixed. |
| Source Thm.22.42 proof step | SL₂ standard module; Z=μ₂ | Z preserves line ke₁; lower unipotent sends e₁↦e₁+e₂ | Simple Z-summands need not be G′-stable; source error below. |

For the detailed companion equations, abbreviations below name files under `TauCetiRoadmap/ReductiveGroups/`: **IR** IntegralRationalTargets, **SA** SignedADETargets, **FA** FoldingADETargets, **CL** CoverLiftTargets, **BC** BruhatCoordinateTargets, **OG** OrbitGeometryTargets, **SW** SpectralWeylTargets. Each row is a separate statement; headline repetitions already appear above. A₂ uses simple roots a,b with Gram [[2,−1],[−1,2]], a<b and diagram interchange σ. Admitted data retain R02 even when the intended equation passes; API padding retains R07.

| Statement | Instance | Computed sides | Result / change |
|---|---|---|---|
| IR.integralPBWBasis_apply | A₁ exponent E² | E^(2)=E²/2 on both sides | Intended basis value agrees; R02. |
| IR.specializedPBWBasis_apply | A₁ modulo 2 | basis vector E^(2) survives; E²=2E^(2)=0 | Keep specialization, remove admitted basis. |
| IR.integralProductCoefficients_spec | E^(1) times itself | coefficient at E^(2) is 2; all others 0 | Integral product 2E^(2). |
| IR.frame_lie_generates | A₁; empty datum | span(E,F,H) dimension 3; zero Lie algebra dimension 0 | Full ambient basis fixes span. |
| IR.jetDualToDistributions_apply | Gₐ, n=1, coefficient-of-t functional | t↦1, t²↦0 on quotient and pullback | Equal values. |
| IR.jetDualToDistributions_injective | Gₐ, first two jets | ε and coefficient-of-t take (1,t) to (1,0),(0,1) | Independent; no kernel. |
| IR.exists_jetDual_preimage | Gₐ derivative of order 1 | annihilates (t)²; preimage in dual k[t]/t² | Order 1 suffices. |
| IR.rationalDistributionAction_on_weight | Gₘ, weight 3, first derivative at 1 | f(t³)m=3m on both sides; characteristic 3 gives 0 | Character and Lie weight distinguished. |
| SA.latticeForm_symmetric | A₂, a,b | β(a,b)=−1=β(b,a) | Retain Gram convention. |
| SA.epsilon_cocycle | a,b,a | ε(a,b)ε(a+b,a)=−1=ε(b,a)ε(a,b+a) | Cocycle holds. |
| SA.epsilon_commutator | a,b | 1/(−1)=−1=(−1)^−1 | Sign agrees. |
| SA.signInclusion_central | sign −1, lift a | Both products (a,−1) | Centrality, not arbitrary extension, used. |
| SA.sectionLift_inverse | a+b | Inverse lift (−a−b,−1); product sign (−1)(−1)=1 | Opposite-root sign necessary. |
| SA.root_finite | A₁,A₂ | Norm-two roots number 2,6 | Positive definiteness excludes affine null directions. |
| SA.root_generated | A₂, a+b | s_a(b)=b−(−1)a=a+b | Actual reflection generation. |
| SA.rootLineQuotientEquiv_generator | lift (a,−1) | Class maps to −e_a; class of positive lift maps to e_a | Sign relation gives their sum 0; R02. |
| SA.bracket_jacobi | a,b,−a−b | Left side −H_a; right side −(H_a+H_b)+H_b=−H_a | Retain signed bracket. |
| SA.neg_root_norm | A₂, a+b | β(−a−b,−a−b)=2=β(a+b,a+b) | Native bilinearity API; R07. |
| SA.bracket_opposite | a+b | Raw bracket −H_a−H_b on both sides | Retain raw normalization. |
| SA.normalized_opposite | a+b | Negative vector sign −1 changes bracket to H_a+H_b | Normalized coroot recovered. |
| SA.integralBasis_cartan | A₁ | Basis Cartan vector (1,0)=cartan(1) | API value; R07. |
| SA.integralBasis_root | A₁ positive root | Basis vector (0,δ_a)=e_a | API value; R07. |
| SA.normalizationEquiv_apply | Negative A₂ highest root | e_−a−b↦−e_−a−b; applying twice returns e_−a−b | Unit basis change; R02. |
| SA.exists_full_frame_comparison | A₁ plus central Z | Image generated by E,F,H,Z, rank 4 on each side | Full center retained; zero-root model fails frame basis. |
| CL.isometryGroup_finite | A₁ | Isometries {+1,−1}, order 2 | Finite. |
| CL.liftGroup_finite | A₁ | Kernel order 2, quotient order 2, lift order 4 | Finite; no automatic chosen splitting. |
| CL.projection_surjective | A₁ reflection | Lift (n,s)↦(−n,s) projects to −1 | Reflection has a lift. |
| CL.carrierEquiv_rootVector | A₁ sign-character lift | e_a↦−e_a; h fixed | Character visible on root line. |
| CL.carrierEquiv_mul | Same sign lift squared | e_a↦(−1)²e_a=e_a | Multiplication law agrees. |
| CL.faithful_integral_action | A₁ nonidentity character | e_a↦−e_a≠e_a over Z | Identity-action hypothesis excludes it. |
| FA.fixedLieSubalgebra_toSubmodule | Identity; negation on abelian Z | Fixed modules Z and 0 | Same underlying fixed points. |
| FA.pairing_perm | A₂ interchange | β(σa,σb)=−1=β(a,b) | Isometry hypothesis used. |
| FA.epsilon_action | a,b, σ | 1·(−1)=1·1·(−1) | Quadratic correction required. |
| FA.coverLift_mul | lifts a,b, σ | Both outputs (a+b,−1) | Unsigned permutation would give +1. |
| FA.coverLift_simple | lift a, σ | (a,1)↦(b,1) | Simple-root pinning retained. |
| FA.coverLift_comp | σ twice, lift a+b | Two signs (−1)²=1 | Composite is identity. |
| FA.coverLift_iterate | σ²=1; k=0 | Iterates 2 and 0 both identity | Empty iterate correct. |
| FA.signedLinearMap_root | a+b, σ | e_(a+b)↦−e_(a+b) | Negative fixed cycle detected. |
| FA.signedLinearMap_bracket | e_a,e_b | σ[e_a,e_b]=−e_(a+b)=[e_b,e_a] | Same − sign. |
| FA.signedLinearMap_iterate | σ²=1 | e_a↦e_b↦e_a; highest root gains +1 | Correct period. |
| FA.cycleCoefficient_succ | Fixed highest root, r=1 | (−1)²=1=(−1)(−1) | Recurrence and empty product 1. |
| FA.fixedIntegralBasis_cartan | A₂ interchange | Single Cartan orbit gives H_a+H_b | Rank 1 Cartan fixed lattice; R02. |
| FA.fixedIntegralBasis_root | Orbit {a,b} | e_a+e_b fixed; negative highest-root cycle contributes rank 0 | Integral fixed rank 3 total; R02. |
| FA.signedPermutation_fixed_iff | One coordinate, sign −1 | −x=x iff 2x=0: Z only 0, F₂ every x | Bad-prime torsion retained. |
| FA.signedCycleEquiv_eval | Same negative cycle over F₂ | Fixed vector (1) evaluates to 1∈ker(−2)=F₂ | Kernel model correct; R02. |
| FA.orbitD_eq_one_or_two | A₂ interchange; A₃ outer orbit | 2−1=1; 2+0=2 | Both alternatives attained. |
| FA.folded_HE | A₂ interchange | [2(H_a+H_b),e_a+e_b]=2(e_a+e_b) | Folded diagonal entry 2. |
| FA.foldedSystem | A₂ interchange | E=e_a+e_b,F=2(f_a+f_b),H=2(H_a+H_b): [E,F]=H | Normalized A₁ relations; R02. |
| FA.foldedMap_E | Same fold | Presented E maps to e_a+e_b | Nonzero, not zero map. |
| FA.foldedMap_H | Same fold | Presented H maps to 2(H_a+H_b) | Factor 2 retained. |
| FA.foldedMap_F | Same fold | Presented F maps to 2(f_a+f_b) | Factor 2 retained. |
| FA.foldedMap_surjective | Rational A₂ fold | Three images span fixed space of dimension 3 | Rational surjectivity; integral index 4. |
| FA.foldedMap_injective | Rational A₂ fold | Three images independent; kernel dimension 0 | No integral isomorphism inferred. |
| FA.fullAction_bracket | A₁ plus central Z, γZ=−Z | [Z,e]=0 maps to 0=[−Z,e] | Full-Y covariance necessary. |
| FA.fullAction_iterate | Same γ, k=2 | γ²Z=Z and root action²=1 | Both period hypotheses retained. |
| FA.exists_map_diagonalization | S=diag(0,2) | U=V=I gives diagonal (0,2) | Singular and zero entries included. |
| FA.smithKernelEquiv_reconstruct | S=diag(0,2), A=F₂, V=I | x=(1,1) maps to (1,1), Vx=x | Zero diagonal must not be discarded; R02. |
| BC.retained_or_inverted | s₁, α₁ | Inverse positions 1,0: retained false, inverted true | Exhaustive strict alternatives. |
| BC.not_both | Same | 1<0 false; 0<1 true; conjunction false | Disjoint. |
| BC.correct_right_complement_contains_alpha1 | s₁w₀ | Inverse positions of 0,1 are 1,2; 1<2 | Right order correct; R07. |
| BC.upper3_mul | (2,3,7),(5,11,13) | Entries (7,14,42), since 7+13+2·11=42 | Product agrees. |
| BC.complement_first | (2,3,7) | Residual entry 7−6=1; assembled entry 1+6=7 | Right-coset order correct. |
| BC.stabilizer_first | (2,3,7) | Cross term 0; entry stays 7 | Different coordinate convention. |
| BC.recover_assemble | a=2,h=(3,1) | Assemble (2,3,7), recover (2,3,1) | Round trip. |
| BC.assemble_recover | (2,3,7) | Recover residual 1; assemble restores 7 | Round trip. |
| BC.nonnormal_conjugation | Upper elementary matrices | E₁₂(1)E₂₃(1)E₁₂(−1)=I+E₂₃+E₁₃ | E₁₃ entry 1, not 0. |
| BC.coveringHomeomorph_apply | Identity covering of R | e↦e on both sides; empty total has no e₀ | Nonempty witness excludes empty cover. |
| OG.point_orbitMorphism | Gₘ acts on A¹, g=2,x=3 | Both evaluations 6 | Action order agrees. |
| OG.translation_inverse | Same g=2 | x↦2x↦x by 1/2 | Identity composite. |
| OG.translation_point | g=2,x=3 | Both points at 6 | Scheme and point action agree. |
| OG.orbitMorphism_finitePresentation | Gₘ, x=1 | k[x]→k[t,t⁻¹], x↦t: one inverse generator, relation tu−1 | Finitely presented open immersion. |
| OG.point_mem_geometricOrbit | x=0 and x=1 | Identity sends 0↦0,1↦1 | Both in their images. |
| OG.orbit_open_in_closure | x=1 | D(t) open in A¹ | Boundary {0}. |
| OG.exists_reduced_orbit_model | x=1; x=0 | Spec k[t,t⁻¹]; Spec k | Reduced models with exactly the specified images. |
| OG.orbit_dimension_finite | Same two orbits | Dimensions 1 and 0, both <∞ | Finite type used. |
| OG.boundary_orbit_dimension_lt | x=1,y=0 | dim O_y=0<1=dim O_x | Strict inequality. |
| OG.minimal_dimension_orbit_closed | Gₘ on A¹, x=0 | Minimum orbit dimension 0; {0} closed | Minimality attained. |
| OG.hausdorff_complexPoints | A¹; doubled origin | C Hausdorff; two origins cannot be separated | IsSeparated excludes latter. |
| OG.compact_closed_orbit_points | Gₘ on P¹, orbit {0} | One-point orbit compact inside compact sphere | Closedness matters. |
| SW.centerHomeomorph_fst | (1,3) | Centroid (1+3)/2=2 | n>0; R02. |
| SW.centerHomeomorph_snd | (1,3) | Coordinates −1,1, sum 0 | R02. |
| SW.centerHomeomorph_symm | c=2,z=(−1,1) | Addition gives (1,3) | R02. |
| SW.continuous_forgetOrder | n=2, (1,3) | Ordered pair maps to unordered {1,3}; orbit has 2 points | Quotient topology, not discrete finite subsets. |
| SW.orderedCover_pi1 | n=2 | Pure generator maps to braid exponent 2 | Inclusion is ×2. |
| SW.planeMonodromy_endpoint | n=3 endpoint (123)·z | Transport (132)=(123)⁻¹ | Path-product direction retained. |
| SW.matrixSpectrum_charpoly | diag(1,3) | (X−1)(X−3)=X²−4X+3 on both sides | Simple-spectrum restriction excludes collision. |
| SW.continuous_matrixSpectrum | diag(1+t,3), small real t | Eigenvalue set {1+t,3} tends to {1,3} | Local unordered continuity; R02. |
| SW.continuous_spectralProjection | SL₂ diagonal diag(t,−t) | Invariant coordinate t², continuous on t≠0 | Correct quotient topology. |
| SW.cameralEquiv_apply | SL₂, g=1,t=H | First coordinate Ad(1)H=H | R02; fixed actual adjoint action. |
| SW.cameralEquiv_second | Same | Second coordinate H=H | R02; excludes reparameterized torus component. |
| SW.simplyConnected_flagCoset | SL₂; Gₘ | G/T homotopy S², π₁=0; torus quotient point, π₁=0 | No simply-connected-G hypothesis needed. |
| SW.spectralFundamentalEquiv_toMonoidHom | SL₂ spectral circle | Actual quotient map induces generator 1↦1 on Z | No arbitrary automorphism of π₁; R02. |
| SW.arrangement_smul_coe | A₁ reflection | z↦−z, at z=1 value −1 | Forward linear action. |
| SW.baseChangeWeylEquiv_reflection | A₁ | Real reflection −1 extends to complex −1 | Not dual inverse confusion. |
| SW.arrangementMonodromy_endpoint | A₂ endpoint (123) | Inverse endpoint (132) acts on roots | R02; convention matches plane case. |

## Not verifiable

The sources service attempted **27 works: 12 readable, 6 uncertified/paywalled, 9 unresolved**. Retrieval is not certification of every passage; the source table identifies the passages actually examined. No source manifest was edited and unavailable text is not treated as false mathematics.

- Uncertified: **waterhouse, borel, springer, humphreys, howlett-lehrer, serre**. Publisher/title lookups did not yield readable legal text; Borel's settled uncertified status was retained. These were not reopened as missing requests.
- **sga3, dipper-du, carter, gassmann, brieskorn, salvetti**: service title/DOI searches found no legal readable text. Their original relative-group, finite-group, arrangement and cell-model locators remain uncertified by this review.
- **cgp**: Cambridge landing page; **lang**: JSTOR landing page; **steinberg**: AMS landing page. No legal full text was obtained. These nine unresolved works remain under their original keys in the missing-reference record.
- Jantzen's OCR omits portions of displayed formulas in I.4.14–16. The readable prose supports the comparison and hypotheses; the displayed coface formulas were not visually certified. The computations above independently test their signs.
- IG.3.2/IG.5.1 have no supplier checkout identified in this brief, and no corresponding main folder was located. Ownership against that unprovided open work was not checked. Indexed hits for ChevalleyGroups and ComplexComparison revisions without supplied heads were likewise not treated as verified open-work ownership; main owners and supplied heads were checked.

Readable works: Milne, Jantzen 1985, Conrad, SGA1, Arzhantsev, Fang–Lim–Tan, GAGA, Conrad–Feng, Dudas–Michel, McNinch, Gros–Kaneda and Hedén. No published correction to the following source issues was verified.

## Source issues

- **Misprint** in milne at Remark 4.1, printed p. 84 (milne line 3767): the source says the universal point acts on End(V⊗A); it should be an endomorphism of V⊗A; affects nothing.
- **Misprint** in milne at §12f before Theorem 12.18, printed p. 237 (milne line 9848): the source says the coefficient image C_V is a subcoalgebra of V; it should be a subcoalgebra of C; affects nothing.
- **Misprint** in milne at the construction before Theorem 12.23, printed p. 240 (milne line 9959): the source says the descended ring is k[M]^Γ; it should be (kˢ[M])^Γ for the specified semilinear action; affects a stated result.
- **Error** in milne at Example 6.48, printed p. 136 (milne lines 5774–5783): the source says the two-coordinate multiplication and norm define the example in arbitrary characteristic p; it should be restricted to p=2 for those formulas; affects a stated result.
- **Error** in milne at Remark 12.56, printed p. 249 (milne lines 10330–10335): the source says positive-characteristic linearly reductive groups have torus identity component; it should be restricted to smooth groups, since μₚ is linearly reductive and non-smooth; affects a stated result.
- **Misprint** in milne at the proof of Corollary 14.9, printed p. 282 (milne line 11758): the source says coconnectedness follows from 14.9 itself; it should be cited to Theorem 14.5; affects the proof.
- **Error** in milne at the proof of Theorem 22.42, printed p. 477 (milne lines 19721–19724): the source says each simple central summand is stable under the derived group because the actions commute; it should be central isotypic summands, using a splitting field and descent for the general field; affects the proof.
