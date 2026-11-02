# Review of ReductiveGroups (pull request #1332 at cb06dca)

**Verdict:** needs changes

## R01 (P1) — The spectral companion retains the reverse supplier edge

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:133`: “a target of the lower FCO dictionary”.

**Claim:** The analytic comparison for this roadmap's actual group-point topology is supplied by FormalConnectionsOpers. That recreates a roadmap dependency cycle, even though the README now owns this comparison locally.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:240` imports ReductiveGroups Layers 0–9; line 2444 explicitly sends ReductiveGroups Layer 11 back to its §4.3 dictionary. Thus ReductiveGroups → FormalConnectionsOpers → ReductiveGroups.

**Repair:** Make the companion consume local §§3A.5 and 11.0, as the README already does, and remove the reverse supplier attribution. The SL₂ chart calculation stays local: at H=diag(1,−1), the two root directions and toral direction have coefficients −2,2,1 and determinant −4. This uses the local tangent/analytic comparison and no FCO result. The mechanical README-only dependency check misses this companion edge; its passing output is recorded below.

## R02 (P2) — Forty-one constructions still contain admitted data

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63`: “noncomputable def centerHomeomorph”; `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:45`: “noncomputable def canonicalSCInput”. Both bodies are admitted.

**Claim:** The eight companions are acceptance files under this review's rules. A constructed homeomorphism, Lie algebra, basis, action or integral model cannot be supplied by `sorry`, including a `sorry` in its structure laws. Declaring these files nonexhaustive does not exempt them.

**Witness:** Admitted-data counts by companion: IntegralRational 3, SignedADE 11, FoldingADE 12, CoverLift 5, SpectralWeyl 9, ChevalleyModel 1; total 41. Suggested, OrbitGeometry and BruhatCoordinate contain none.

**Repair:** Delete admitted constructors and declarations depending on them. Retain only simple definitions with real bodies needed for genuine headline propositions; put heavy constructions and their laws in the README, and identify missing carriers in the module docstring. Do not move these admissions into another file. For centering, the actual elementary map on (1,3) is (2,(−1,1)), with inverse (c,w)↦c+w; n=0 has one configuration and cannot have an extra ℂ factor. For signed ADE and integral models, the substantial constructions remain README work. The existing Suggested docstring already follows this approach for several of these endpoints.

## R03 (P2) — The Chevalley-model record does not characterize the prescribed model

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23–39`: `SCRealizationInput`, especially `rootWeight` and `weightsGenerate`; line 45 calls its admitted inhabitant canonical.

**Claim:** The acceptance interface packages operands of the native toral closure but does not require those operands to realize the declared Dynkin datum. Its sole theorem, conjugation of root points, cannot distinguish the intended group from a torus.

**Witness:** In A₁ take the standard two-dimensional rational representation, lattice ℤ², genuine diagonal H, weights 1,−1, and both root vectors zero. Every record condition holds; every root map is identity; the closure is Gₘ, dimension 1, not SL₂, dimension 3.

**Repair:** Remove this surrogate constructor and its dependent acceptance declarations. Keep the full-frame/integral-model construction in README §9B and the missing-carrier explanation in Suggested. If a later native constructor is used, require the normalized full root/coroot frame, representation compatibility and its prescribed root datum before claiming the model. On the witness, the missing relation [E,F]=H reads 0=diag(1,−1), so it excludes the wrong model; the genuine E₁₂,E₂₁ satisfy it. Merely strengthening `weightsGenerate` does not fix this.

## R04 (P2) — The repair re-plans the generic root-automorphism factorization

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:2051–2056`: “Prove W is normal, W∩D={1}, and every a is uniquely wδ”.

**Claim:** The missing old supplier citation has been replaced by a local target, but this is the generic root-system theorem, not a signed-cover comparison specific to reductive groups. It has a second owner in the supplied open RootSystems revision.

**Witness:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:261` at its supplied open head, §2.1, states the same spanning-real-root-pairing complement and semidirect equivalence; lines 270–280 give the same reflection-conjugation and factorization equations.

**Repair:** Keep the signed-cover and full-Y transport here, and give the generic factorization one RootSystems owner. Because that open revision updates an existing roadmap, do not consume its revised text as if it were main. If main lacks the result, declare the precise supplier gap with the same slug in the plan and README contracts: finite reduced crystallographic spanning real root pairings with a base, actual base stabilizer, unique W-times-stabilizer factorization and conjugation law. The A₁ and A₂ controls transfer unchanged: orders 2=2·1 and 12=6·2; δs₁δ⁻¹=s₂. This is an ownership defect, not a counterexample to the factorization.

## R05 (P3) — Companion imports do not satisfy the stated Lean form

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`: `import TauCetiRoadmap.ReductiveGroups.SignedADETargets`; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:1–5` imports Mathlib submodules.

**Claim:** The form rules apply separately to every scoped Lean file: one `import Mathlib`, then only used native TauCeti modules, never roadmap imports. All eight companions violate this import rule; ChevalleyModelTargets also lacks the required Mathlib root import.

**Witness:** CoverLift imports SignedADE; SignedADE and IntegralRational import the roadmap acceptance module; Folding imports companions. These dependencies are visible in the import headers, independently of the passing Suggested build.

**Repair:** After removing R02/R03's surrogate interfaces, consolidate the few necessary simple definitions and genuine headline statements into conforming acceptance files. Use `import Mathlib` and only native TauCeti modules actually needed. Do not make a new chain of roadmap imports. Re-elaborate Suggested and inspect every surviving companion header. The successful scratch probe used normalized native imports only; the PR files were not changed.

## R06 (P3) — The companions contain definition expansions and worked checks

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204`: `rationalDistributionAction_apply`; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:38` and the matrix calculations following it.

**Claim:** These are API equations and small worked examples, not acceptance headlines. Moving them outside Suggested does not change their role. The Chevalley companion's only theorem is likewise a specialization of a pinned theorem.

**Witness:** A scratch elaboration closes `rationalDistributionAction_apply` by `rfl`. `FoldingADETargets.lean:329` already proves its fixed-kernel equation by one native lemma. TauCeti's `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, `ToralClosure/Points.lean:241`, supplies the Chevalley conjugation equation.

**Repair:** Delete this padding from the acceptance Lean files; in particular, delete it from `Suggested.lean` if consolidating the companions there, rather than proving it in place. Keep the useful tests in the README. The contraction test remains f(t³)·m on both sides; the A₂ unipotent example remains c=7 with factors 1+2·3=7. Neither calculation becomes a deep theorem by adding `sorry`.

## R07 (P3) — Several layers remain catalogues rather than specified targets

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1128`: “Lie–Kolchin; solvable groups.” Lines 1129–1133 introduce the unipotent radical without its own API and three discriminating Checks. Layer 6 starts similarly at line 1150.

**Claim:** The expanded early layers do not repair the whole-document shape problem. Some central definitions and theorems still lack exact hypotheses, theorem/page locators and per-definition tests. Many companion declarations also lack mathematical docstrings. `FoldingADETargets.lean:310` retains “exact-word certificates”, and the folder has no `sources.toml` recording its cited works.

**Witness:** The Lie–Kolchin bullet contains no statement or locator. The radical paragraph distinguishes perfect and imperfect fields but gives no API list or three Checks. The only Layer 5 example computes a 2-by-2 exponential.

**Repair:** Specify these targets in prose with their hypotheses, exact source locators and separate needs. Give the radicals and reductivity their APIs and tests: Rᵤ(Gₐ)=Gₐ, Rᵤ(Gₘ)=1, Rᵤ(SL₂)=1; SL₂ has no nontrivial characters but is not unipotent. Include the imperfect-field restriction already discussed. Apply the same checklist to every remaining catalogue block, replace certificate/process wording with the mathematical spanning assertion, document surviving declarations, and record the legally retrieved or uncertified sources in the manifest. These repairs preserve arbitrary-characteristic scope.

## R08 (P3) — The identity-component locator has the wrong page

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:627`: “Proposition 1.34, p. 14”.

**Claim:** Milne's Proposition 1.34 is not on printed page 14 in the cited 2017 text.

**Witness:** `milne line 1070` starts Proposition 1.34 on printed page 16; its continuation is on page 17. Proposition 2.37 and Definition 2.38 really are on pages 51–52 (`milne line 2493`).

**Repair:** Change this locator to pp. 16–17. The mathematics survives: μ₂ over characteristic 2 has one geometric component, while μ₂ over characteristic 3 has two; the finite étale quotient concerns geometric components, not just rational points.

## Verified sound

This was a full read of the 3,460-line README and all nine scoped Lean files, with a fresh source, ownership and pin audit. Findings refer only to this folder. No PR file was edited. The outside-folder diff against origin/main was empty. The main-content snapshot used for supplier checks was fa41b37; existing-roadmap revisions were treated as ownership evidence, not as replacement suppliers for main. The comparison of main examples included ReflectionInvariantTheory and NilpotentOrbits.

### Disposition of the previous review

Each disposition below quotes the repaired head, not the previous recommendation.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01 analytic cycle | SpectralWeylTargets:133, “target of the lower FCO dictionary” | **Not repaired**: current R01. The README's local ownership alone does not repair the companion. |
| R02 absent RootSystems 4A | README:2050, “factorization derived from RootSystems Layer 4's chamber action” | **Partly repaired**: the nonexistent section is gone and a proof route is supplied. Its generic ownership overlaps the open RootSystems §2.1: current R04. |
| R03 wrong regular-fibre supplier | README:901–911 names “SmoothBundlesConnections B1.0”, B1.1 and B1.4 | **Repaired**: these sections actually provide regular fibres, division and closed-subgroup quotients with the required hypotheses. |
| R04 admitted data | ChevalleyModelTargets:45, “noncomputable def canonicalSCInput” | **Not repaired**: all 41 admitted-data declarations remain; current R02. |
| R05 weak model input | ChevalleyModelTargets:39, “weightsGenerate” | **Not repaired**: the zero-root A₁ model still passes; current R03. |
| R06 import form | CoverLiftTargets:1 imports SignedADETargets | **Not repaired**: current R05. |
| R07 padding | IntegralRationalTargets:204, `rationalDistributionAction_apply` | **Not repaired**: fresh `rfl` probe succeeds; current R06. |
| R08 shape/source/docstrings | README:1128, “Lie–Kolchin; solvable groups.” | **Partly repaired**: §§0–4 now state much more, and Suggested names missing ADE/folding carriers. The remaining catalogue blocks and companion form remain: current R07. |

No supplied repair report marks these findings “not actionable in this package”. The new page correction is R08 of this review, distinct from the previous R08.

### Gate, signatures and padding probes

The worker's gate reports zero scanner failures, zero dependency problems and a successful targeted build. Independent elaboration of Suggested completed successfully with eight `sorry` warnings and no errors. No `set_option`, admitted data or non-native import occurs in Suggested itself. No stray-file or outside-folder gate failure was supplied.

The independently executed dependency command returned:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. This certifies the scanned README graph, not the unscanned companion attribution in R01. Every `*Needs:*` line was read; the within-roadmap forward use of §9's independent split construction by Layer 8 does not use Layer 8 classification to construct that model.

The supplied signature log contained unqualified-name failures, so I generated a scratch copy with fully qualified `#check @...` commands. All **27** Suggested declarations elaborated. The eight theorem signatures retain the required field/algebraic-closure, smoothness, finite-type/quasi-compactness, separation, properness, centrality or strand-count assumptions. No declaration needed a binder repair. In particular, `Nonempty (Points X)` is explicit in the existence-of-a-closed-orbit theorem; `2 ≤ n` is explicit in braid nonsplitting; the full coroot-lattice frame occurs in integral PBW.

A separate scratch copy normalized imports and tried `simp`, `rfl` and `infer_instance` on **96 admitted theorem bodies** across the scoped files, falling back to the original admission only when the tactic did not close the goal. It elaborated without errors. The successful automatic padding probe was `rationalDistributionAction_apply` by `rfl`; native exact-lemma specializations and the already-proved small examples were additionally checked by reading their definitions and pinned proofs. Failure of a one-tactic attempt is not evidence of truth or depth. All Lean processes finished.

### Headline coverage

The README's end results include orbit local closedness and boundary dimension drop, existence of closed orbits, proper complex-point compactness and smooth-chart comparison; Lang–Steinberg and finite-field parabolic/Harish-Chandra comparisons; root-datum classification and integral pinned models; signed ADE/full-lattice construction, cover-lift kernel and folded fixed-Lie classification; integral PBW and distributions/Frobenius; rational highest weights and regular functions; and braid/arrangement/spectral Weyl monodromy.

Suggested states **eight** headline propositions: `orbit_locallyClosed`, `boundary_dimension_lt`, `exists_closed_orbit_in_closure`, `exists_closed_orbit`, `compact_complexPoints`, `exists_characterKernelEquiv`, `integral_pbw`, and `permutation_extension_nonsplit`. Its docstring explicitly names the missing signed-ADE construction, folding classification, pinned integral model/change of choice, rational highest-weight modules, spectral quotient/analytic comparison, compatible manifold atlas and general scheme Frobenius. These absences are not repaired by the companions' admitted constructors. The remaining group-classification, finite-field and rational-module endpoints use those missing group/model/category interfaces; no arbitrary `Prop` replacement was accepted. The eight main-file statements mention the actual carriers they concern.

### Seeded source sample

All **13 sampled targets** were compared with legally retrieved text, with hypotheses and version-specific numbering. I found no additional README marker explicitly labelling a locator unverified. Sources were fetched through the sources service; the report contains locators, not source passages. The 1985 Jantzen preprint is the version the README explicitly cites, not a silent substitution for the 2003 book. Milne's field-valued statements were not used to justify arbitrary-ring assertions: those use the pinned native dictionary and the named descent contracts.

| Target | Source text read; printed locator | Outcome and scope |
|---|---|---|
| 0.1 points/group law | milne lines 3053–3058, §3.5 p. 66 | Convolution order, unit and antipode agree; arbitrary-ring extension is native. |
| 0.2 three interfaces | milne lines 3063–3076, Prop. 3.6/Cor. 3.7 pp. 66–67 | Field/finite-type scope retained when using Milne; general affine anti-equivalence checked at the pin. |
| 0.3 base change/descent | milne lines 4983–5017, Def. 5.65/Prop. 5.68 p. 116 | fpqc sheaf descent supported; effectivity of affine objects is the named ModularCurves contract, not inferred merely from sheafness. |
| 1.0a rational representations | milne lines 3757–3798, Remark 4.1 pp. 84–85; Theorem 4.9 p. 87 | Right coaction, finite-dimensional embedding and antipode/determinant qualification retained. |
| 1.0b Tannakian comparison | milne lines 3757–3798 plus native GroupFunctor theorem | Milne supports representation/comodule identification; the tensor-automorphism reconstruction and ULift are native, not falsely attributed to Remark 4.1. |
| 1.1 cohomology/induction | jantzen lines 1507–1707, I.3.3–I.3.9 pp. 53–60; lines 1994–2020, I.4.7 p. 73; lines 2102–2168, I.4.14–16 pp. 77–79a | Flat Hopf algebra, arbitrary coefficient module, cofree acyclicity and the two induction conventions agree. Chapter flatness assumptions occur at lines 1857 and 1923. |
| 2.1 tangent/differentials | milne lines 7961–7983, §10.14 p. 190; lines 8076–8091, Thm. 10.23 p. 193; lines 8143–8174, Props. 10.28–29 pp. 195–196 | Dual-number tangent and dAd bracket agree; smoothness is not inferred for μₚ. |
| 3.1 subgroups/quotients | milne lines 4421–4438, Thm. 5.13 p. 101; lines 4492–4515, Prop. 5.18 p. 103 | Normal closed subgroup quotient over a field; existence proof is not restricted to reduced groups. Rational-point surjectivity is not asserted. |
| 3.2 components | milne lines 1070–1082, Prop. 1.34 pp. 16–17; lines 2493–2519, Prop. 2.37/Def. 2.38 pp. 51–52 | All-field finite étale component group supported; R08 corrects only pagination. |
| 4.1 Jordan decomposition | milne lines 7065–7110, Thm. 9.11 pp. 168–169; lines 7194–7224, Thm. 9.18/§§9.19–21 pp. 170–171 | Perfect-field rational factors; geometric statement and imperfect-field failure distinguished. |
| 4.2 diagonalizable groups | milne lines 9630–9717, Prop. 12.3, Remark 12.5, Thms. 12.8–9 pp. 231–234; lines 9799–9807, Def. 12.14 p. 236 | Contravariance and non-smooth μₚ retained; group-algebra characters include torsion. |
| 4.3 multiplicative type/tori | milne lines 9824–9898, Def. 12.17/Thm. 12.18 pp. 236–238; lines 9948–9999, Thm. 12.23/Cor. 12.25/Ex. 12.27 pp. 240–241 | Geometric character module with Galois action; purely inseparable invariance and nonsplit norm-one torus agree. |
| 11.0 analytic dictionary | sga1 lines 9394–9411, XII Thm. 1.1 pp. 239–240; milne lines 8076–8091 and 8143–8174 | Local finite-type analytification/completed-local-ring comparison and algebraic dAd agree. Local smooth charts and cotangent comparison still require the roadmap's stated constructions. |

For §3A.5 I also read `sga1 lines 9435–9471` (gluing/finite limits), `sga1 lines 9594–9698` (XII Props. 3.1–3.2, pp. 244–247), and `gaga lines 293–344` (§2 no. 5, pp. 8–9). Properness uses Chow's lemma and does not silently assume projectivity. Nilpotent thickenings are retained in the local-ring comparison although complex point sets forget them.

### Pinned declarations and ownership evidence

The following are **23 concrete pin checks**, grouped where they concern the same object. Paths are library-relative. Native constructors were read with their assumptions; a declaration's mere name was not treated as proof of a stronger comparison.

| Pinned file and line | Declaration/object and boundary checked |
|---|---|
| `TauCeti/AlgebraicGeometry/AffineGroupScheme/Equivalence.lean:43` | `commHopfAlgCatOpEquivAffineGroupSchemeCat`: commutative-base-ring anti-equivalence. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Comodule/Equivalence.lean:54` | Point representation/right-comodule comparison, with the ring/Hopf hypotheses; category equivalences at lines 165 and 231. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Embedding.lean:147` | Coordinate closed-immersion criterion with a finite basis; finite-type field embedding at line 209. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Faithful/Basic.lean:161` | Matrix coefficient subalgebra **together with antipode image**, not coefficient generation alone. |
| `TauCeti/Algebra/HopfAlgebra/HopfIdeal/Basic.lean:265` | Ideal, comultiplication, counit and antipode conditions; no smoothness built into the ideal. |
| `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Scheme/Classification.lean:257` | Hopf-ideal order dual versus closed subgroup subobjects. |
| `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Normal/Basic.lean:62` | Normality uses the right tensor ideal when the first argument conjugates. |
| `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Coinvariants.lean:42` | Representability theorem assumes finite type and geometrically reduced ambient group. |
| `TauCeti/Algebra/AlgebraicGroup/Connected/GroupScheme.lean:141` | Identity-component scheme over an algebraically closed field; inclusion at line 172. |
| `TauCeti/AlgebraicGeometry/AffineGroupScheme/Components/Finite.lean:43` | Finiteness of topological components; not the descended étale π₀ scheme. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138` | `pointsFunctorIsoTensorAutFunctor`, with its universe lift. |
| `TauCeti/Algebra/AlgebraicGroup/Torus/CharacterLattice/Equivalence.lean:36` | Perfect-field assumption remains in the equivalence section, theorem at line 53. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/Form.lean:124` | Native Kostant subring; divided-power and binomial membership at lines 179,185. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241` | Torus conjugation theorem, requiring weight vectors and root eigenvalues; not a root-datum realization theorem. |
| `TauCeti/Algebra/Coalgebra/Comodule/Convolution.lean:49` | Coaction contraction underlying the R06 definition-expansion probe. |
| `Mathlib/LinearAlgebra/FixedSubmodule.lean:42` | `LinearMap.fixedSubmodule_eq_ker`, exactly the companion's fixed-Cartan equation. |
| `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132` | Proper geometrically integral group commutativity; constant S₃ does not satisfy geometric integrality. |
| `Mathlib/AlgebraicGeometry/Group/Affine.lean:187` | `hopfSpec.fullyFaithful` and `essImage_hopfSpec`: affine group objects, not arbitrary nonaffine groups. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:94` | `Smooth.exists_isStandardSmooth`: supplies local presentations, not a global analytic atlas. |
| `Mathlib/Geometry/Manifold/Sheaf/LocallyRingedSpace.lean:59` | `smoothSheafCommRing.isUnit_stalk_iff`: value detects units; no algebraic/analytic cotangent comparison is included. |
| `TauCeti/Analysis/Analytic/Inverse.lean:105` | `AnalyticAt.exists_openPartialHomeomorph`: continuous-linear-equivalence derivative and complete source. |
| `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:275` | `DifferentiableOn.analyticOnNhd_of_finiteDimensional`: finite-dimensional complex domain and complete codomain. |
| `TauCeti/GroupTheory/SpecificGroups/Braid/Basic.lean:304` | Native braid permutation homomorphism used by the actual nonsplitting signature, not a free group standing in for braids. |

Object searches covered the pinned libraries, main roadmaps, board packages and the provided open-roadmap heads, using the prescribed roadmap search/show tools as well as direct reads. The 26 unresolved-name leads were resolved: 25 refer to this folder's own declarations and the remaining `Gassmann.almostConjugate_iff_permutation_equiv` is the named InductionRestriction §2.1 target, not a missing native lemma. No duplicate fully qualified name was found for the 27 Suggested declarations. Generic root-automorphism ownership is the exception in R04; companion repetitions of local orbit/configuration APIs are covered by R02/R06.

| Cross-roadmap object | Resolved supplier and evidence |
|---|---|
| Dimension, descent, torsors, quotients, Frobenius, Chow | Main `SchemeAndStackFoundations/README.md`: §0.7 line 755; §0.29 line 1825; §1.1 line 2071; §§1.14–18 lines 2458,2502,2589,2624,2745; §4.12 line 5613. These distinguish representability from a sheaf quotient. |
| Effective affine/group descent; Weil restriction | Main `ModularCurves/README.md:386` (§0E), line 412 (§0F): affine finite presentation, finite locally free source, arbitrary base change. |
| Regular fibres, principal division, closed-subgroup quotients | Main `SmoothBundlesConnections/README.md:221`, 315,421 (B1.0/B1.1/B1.4). Regularity/transversality is explicit; complex holomorphic enhancement stays local here. |
| Chambers and Coxeter/root classification | Main `RepresentationTheory/RootSystems/README.md:260,296,321,356`, Layers 2,4,5,6. The new open §2.1 factorization was checked separately for ownership, not used as main: R04. |
| Root-lattice underlying forms | Main `IntegralLattices/README.md:568`, §0G: integral ADE Gram/coordinate models; signed root lines and their brackets are this roadmap's different object. |
| Split Serre presentation and highest-weight input | Main `RepresentationTheory/LieHighestWeight/README.md:1158–1187`, Layer 7: characteristic-zero split simple setting, normalized generating lift, explicitly owned injectivity/straightening and transpose convention. Layers 3–4 supply PBW/Verma inputs. Reductive central lattices remain here. |
| Finite permutation/Gassmann equivalence | Main `RepresentationTheory/InductionRestriction/README.md:346–385`, §2.1: fixed-coset counting, then characteristic-zero equivalence over ℂ. |
| Complex reductive compact form and flag cells | Main `RepresentationTheory/LieGroups/README.md:407`, 428, Layers 7–8. The even real cell dimensions are 2ℓ(w); the algebraic all-field group construction remains here. |
| Flag-minor algebra | Main `GroebnerGeometry/README.md:394–430`, G5: increasing row subsets, first columns, polynomial algebra and its distinct initial algebra. The group-invariant/localization comparison is this roadmap's adapter. |
| Van Kampen and CW presentations | Main `AlgebraicTopology/README.md:289–322`, Stage 1, with the subsequent cell interfaces. Path-product direction is retained. |
| Based fibration LES, including π₀ | Main `DGFloer/README.md:481–525`, Layer 1.2: connecting maps and exactness are actual targets, not merely a lifting predicate. |
| Analytic group dictionary | Provided open `FormalConnectionsOpers/README.md:240–252`, §4.3 and line 2444: the conflicting reverse attribution is R01. |
| Invariant/flag/adjoint-orbit boundaries | `ReflectionInvariantTheory/README.md:25–44` owns finite-reflection invariants; SchubertGeometry and NilpotentOrbits own their flag and adjoint-orbit applications. Generic algebraic orbit geometry and its scheme-point comparison are the distinct local constructions examined here. |

The root-system factorization has no false mathematical identity in the checks below. Its defect is two owners. Conversely, the arbitrary-field quotient extension, descended finite étale π₀, arbitrary-field torus comparison and scheme/analytic adapters really go beyond the precise native hypotheses listed above; they are not duplicate native declarations.

### Computed adversarial table

The following **202 computed rows** comprise 94 README/sample rows and 108 Lean-interface rows. They are negative controls, not general proofs. “Retain” means agreement in the stated instance. Empty dimension is −∞ (`WithBot`), not zero.

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
| 3.2 geometric components | μ₂ over F₂/F₃ | π₀ degrees 1/2; Lie dimensions 1/0 | Retain; R08 locator. |
| 3.2 rational versus geometric | Gₘ/ℝ; μ₃/ℝ | algebraic π₀ degree 1 vs 2 real components; μ₃ degree 3 vs 1 real point | Retain geometric definition. |
| 3.2 nonreduced product | αₚ×constant C₂ | identity component degree p; π₀ degree 2 | Retain. |
| 3A algebraic orbit | Gₘ on A¹, x=1 | orbit D(t), closure A¹, boundary {0}; dimensions 1 and 0 | Retain strict drop. |
| 3A closed/empty boundary | Same action x=0 | orbit {0} dimension 0; boundary ∅ dimension −∞ | Retain bottom dimension. |
| 3A disconnected orbit | C₂ permuting two points | orbit two points dimension 0; boundary ∅ dimension −∞ | Retain disconnected case. |
| 3A nonunique closed orbit | Gₘ on P¹ | open orbit closure P¹ contains {0} and {∞}, both closed | Existence retained; uniqueness excluded. |
| 3A empty space | X=∅ | no point x and no orbit | Explicit Nonempty hypothesis necessary. |
| 3A properness | P¹(ℂ) versus A¹(ℂ) | sphere compact; sequence 1,2,3,… unbounded in ℂ | Properness excludes A¹. |
| 3A analytic separatedness | Doubled origin | distinct origins have inseparable neighbourhoods | Separation excludes non-Hausdorff example. |
| 3A nonreduced analytic local rings | ℂ[ε]/ε² | one complex point, cotangent dimension 1; reduction cotangent 0 | Keep local rings, not only points. |
| 3A regular fibre | idℝ × idℝ over ℝ | diagonal tangent (v,v); dimension 1=1+1−1 | Repaired B1.0 supply agrees. |
| 3A transversality control | x²=y² at origin | derivative image 0+0=0≠ℝ; crossing has two branches | Excluded by transversality. |
| 4.1 Jordan factors | [[2,1],[0,2]] in char 0 | 2I·[[1,1/2],[0,1]] equals original; factors commute | Retain. |
| 4.1 small characteristic | Nontrivial 2-by-2 unipotent in F₂ | g²=I, g_s=I, g_u=g | Retain; not semisimple. |
| 4.1 imperfect control | Companion of Xᵖ−s over Fₚ(s) | semisimple factor needs s^(1/p), absent in base field | Rational-factor perfectness retained. |
| 4.2 D(M) | M=0,ℤ,ℤ/p | groups 1,Gₘ,μₚ; last has p-dimensional coordinate ring | Retain torsion/non-smooth case. |
| 4.3 pairing | χ=3, λ=−2 on Gₘ | χ∘λ=t⁻⁶, pairing −6 | Retain sign. |
| 4.3 nonsplit torus | Norm-one torus ℂ/ℝ | geometric character rank 1, rational character rank 0; σ acts −1 | Retain Galois lattice. |
| 4.3 wrong character criterion | Gₐ | character group 0, dimension 1; D(0) dimension 0 | Character data alone not arbitrary-group classification. |
| 5 unipotence/radical | Gₐ,Gₘ,SL₂ | radical dimensions 1,0,0; SL₂ characters 0 but not unipotent | R07 asks explicit tests. |
| 5P exponential/logarithm | 2-by-2 N²=0 | exp N=I+N; log(I+N)=N | Retain characteristic-zero scope. |
| 5P nonabelian exponential | Heisenberg X=E₁₂,Y=E₂₃ | exp(X+Y)=I+X+Y+(1/2)E₁₃, exp X exp Y=I+X+Y+E₁₃ | Variety, not additive-group identification. |
| 6 reductive versus linear reductive | SL₂, char 0 versus p | char 0 rational modules semisimple; in p, Symᵖ has proper Frobenius submodule of dimension 2 | Retain distinction. |
| 6A Levi semidirect law | Gₐ⋊Gₘ | (1,2)(3,5)=(7,10), not (4,10) | Retain action term. |
| 6A Levi ambiguity | Direct product L×Gₐ | conjugation by Gₐ fixes L; stabilizer dimension 1 | No unique conjugating element. |
| 6B coset affineness | SL₂/B | quotient P¹ proper nonaffine; B has radical dimension 1 | Reductivity hypothesis separates example. |
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
| 9B integral model | Genuine A₁ versus zero roots | dimensions 3 versus 1; [E,F]=H versus 0 | R03 wrong model excluded by full frame. |
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
| 11E centering | z=(1,3) | centroid 2; centered (−1,1); inverse (1,3) | Elementary map possible; admitted homeomorphism R02. |
| 11E projectors | diag(1,3) | projectors diag(1,0),diag(0,1), sum I; denominators ±2 | Repeated eigenvalues would give denominator 0 and are excluded. |
| 11F monodromy direction | A₂ loop ending at w=(123) | transport w⁻¹=(132), not (123) | Retain opposite/path convention. |

File names in the next table are the scoped files under `TauCetiRoadmap/ReductiveGroups/`. A result marked “R02” has a correct intended example but is still inadmissible as an acceptance statement because it depends on admitted data. Repeated orbit, compactness and braid statements in Suggested share the explicitly named rows; they were not counted as independent mathematical evidence.

| File / statement | Instance | Computed sides | Result / change |
|---|---|---|---|
| Suggested: `exists_characterKernelEquiv` | E=C₂×ℤ, trivial lattice action | χ(n)=(−1)ⁿ gives (s,n)↦(s(−1)ⁿ,n); projection n=n | Retain; inverse twist is itself. |
| Suggested: `integral_pbw` | Root-free rank 1 and rank 0 | binomial basis 1,h,h(h−1)/2,…; rank 0 basis {1} spans ℤ | Retain full toral carrier. |
| OrbitGeometry: `point_orbitMorphism` | Gₘ acting on A¹, g=2,x=3 | 6=6 | Retain. |
| OrbitGeometry: `translation_inverse` | Same g | (1/2)(2x)=x | Retain. |
| OrbitGeometry: `translation_point` | g=2,x=3 | translation value 6=action value 6 | Retain. |
| OrbitGeometry: `orbitMorphism_finitePresentation` | Gₘ,x=1 | k[t]→k[t,t⁻¹], presentation k[t,u]/(tu−1) | Finite presentation retained. |
| OrbitGeometry: `point_mem_geometricOrbit` | x=1,y=2 and y=0 | 2∈D(t), g=2 exists; 0∉D(t), no invertible g | Both directions agree. |
| OrbitGeometry: `orbit_open_in_closure` | x=1 on A¹ | D(t) open in A¹=closure | Retain. |
| OrbitGeometry/Suggested: `orbit_locallyClosed` | x=1 and x=0 | D(t) open; {0} closed | Retain. |
| OrbitGeometry: `exists_reduced_orbit_model` | Trivial action on dual numbers | orbit singleton; model Spec k→Spec k[ε]/ε² kills ε | Retain reduced model, not reduced ambient. |
| OrbitGeometry: `orbit_dimension_finite` | Gₘ,x=1 | d=1; orbit dimension 1 | Retain. |
| OrbitGeometry/Suggested: `boundary_dimension_lt` | x=1 and x=0 | 0<1 and −∞<0 | Retain. |
| OrbitGeometry: `boundary_orbit_dimension_lt` | x=1,y=0 | dim orbit(y)=0<1 | Retain. |
| OrbitGeometry/Suggested: `exists_closed_orbit_in_closure` | x=1 on A¹ | choose y=0; {0}⊆A¹ | Retain. |
| OrbitGeometry/Suggested: `exists_closed_orbit` | A¹; empty scheme | y=0 exists; empty scheme has 0 points | Nonempty binder retained. |
| OrbitGeometry: `minimal_dimension_orbit_closed` | x=0 on A¹ | minimum dimension 0; orbit {0} closed | Retain. |
| OrbitGeometry/Suggested: `compact_complexPoints` | P¹; empty proper scheme | compact sphere; empty compact set | Retain. |
| OrbitGeometry: `hausdorff_complexPoints` | A¹; doubled origin | ℂ Hausdorff; doubled-origin distinct origins not separated | Separation binder retained. |
| OrbitGeometry: `compact_closed_orbit_points` | Gₘ on P¹, x=0 versus x=1 | singleton compact; C* orbit not closed and not compact | Closedness binder separates them. |
| SignedADE: `latticeForm_symmetric` | A₂ simple roots | (α₁,α₂)=−1=(α₂,α₁) | Intended equality; R02 data. |
| SignedADE: `epsilon_cocycle` | A₂, a=α₁,b=α₂,c=−α₁ | ε(a,b)ε(a+b,c)=−1=ε(b,c)ε(a,b+c) | Retain cocycle sign. |
| SignedADE: `epsilon_commutator` | A₂ simple roots | ε(a,b)=1, ε(b,a)=−1, ratio −1=(−1)^(−1) | Retain. |
| SignedADE: `signInclusion_central` | Rank 1, τ and lift α | τe=(α,−1)=eτ | R02 data. |
| SignedADE: `sectionLift_inverse` | A₁ norm-2 α | ε(α,−α)=1; inverse lift (−α,1) | R02 data. |
| SignedADE: `root_finite` | A₁ and empty datum | root counts 2 and 0 | Retain positive-definiteness. |
| SignedADE: `root_generated` | A₂ highest root | s₁(α₂)=α₁+α₂ | Retain. |
| SignedADE: `rootLineQuotientEquiv_generator` | One lifted root ±e | classes e↦1, τe↦−1; sum maps 0 | R02 data. |
| SignedADE: `bracket_jacobi` | A₂ α₁,α₂,−α₁−α₂ | three Cartan contributions sum 0 | Retain mathematics; R02 Lie structure. |
| SignedADE: `neg_root_norm` | A₂ α₁+α₂ | norm(−α)²=2=norm α² | API/boundary padding stays README. |
| SignedADE: `bracket_opposite` | A₂ highest root | [E₁₃,−E₃₁]=−H₁−H₂ | Retain ε(α,−α)=−1. |
| SignedADE: `normalized_opposite` | Same root | [E₁₃,E₃₁]=H₁+H₂ | Retain negative-root rescaling. |
| SignedADE: `integralBasis_cartan` | A₁ | Cartan basis vector=(1,0) | API equation, R06 class. |
| SignedADE: `integralBasis_root` | A₁ positive root | root basis vector=(0,δ_α) | API equation, R06 class. |
| SignedADE: `normalizationEquiv_apply` | A₂ negative highest root | coordinate −1 becomes +1, other coordinates unchanged | R02 data. |
| SignedADE: `exists_full_frame_comparison` | A₁ plus central line | full dimension 4=2 toral+2 roots; central direction maps to central direction | R02 data; central direction not lost. |
| CoverLift: `isometryGroup_finite` | A₁; empty lattice | orders 2 and 1 | R02 data. |
| CoverLift: `liftGroup_finite` | A₁ signed extension | 2 root isometries × 2 sign characters=4 | R02 data. |
| CoverLift: `projection_surjective` | A₁ reflection | quotient α↦−α, lifted (s,n)↦(s,−n) | R02 data; surjection, not canonical section. |
| CoverLift: `carrierEquiv_rootVector` | Kernel character χ(α)=−1 | x_α↦−x_α on both sides | R02 data. |
| CoverLift: `carrierEquiv_mul` | Same character twice | (−1)(−1)x_α=x_α | R02 data; composition order tested by A₂ conjugation above. |
| CoverLift: `faithful_integral_action` | Nontrivial rank-one character | integral x_α↦−x_α≠x_α; mod 2 equality returns | Integral faithfulness retained, no mod-2 claim. |
| FoldingADE: `mem_fixedLieSubalgebra` | φ=−1 on ℤ, x=0,1 | membership true/false equals −x=x true/false | Definitional API; R06. |
| FoldingADE: `fixedLieSubalgebra_toSubmodule` | φ=−1 on abelian rank-one Lie algebra | fixed set {x:2x=0}; over ℤ zero, F₂ whole line | Retain kernel, not eigenspace division. |
| FoldingADE: `pairing_perm` | A₂ diagram swap | Gram off-diagonal −1 remains −1 | Retain Gram-preservation premise. |
| FoldingADE: `epsilon_action` | A₂ a=α₁,b=α₂, swap | transformed ε=−1; sign correction at a+b=−1 | Retain sign correction. |
| FoldingADE: `coverLift_mul` | Same simple lifts | product highest-root lift gains −1 on both routes | R02 dependent data. |
| FoldingADE: `coverLift_simple` | A₂ swap | lift α₁↦lift α₂ with coefficient +1 | Retain pinning. |
| FoldingADE: `coverLift_comp` | A₂ swap twice | α₁↦α₁; highest-root sign (−1)²=1 | Retain. |
| FoldingADE: `coverLift_iterate` | Swap order 2 | second iterate identity; first swaps α₁,α₂ | Retain. |
| FoldingADE: `signedLinearMap_root` | A₂ highest root | x_(α₁+α₂)↦−x_(α₁+α₂) | R02 data. |
| FoldingADE: `signedLinearMap_bracket` | [x₁,x₂] | image −x₁₂=[x₂,x₁] | R02 data. |
| FoldingADE: `signedLinearMap_iterate` | A₂ swap twice | x₁₂↦(−1)²x₁₂=x₁₂ | R02 data. |
| FoldingADE: `cycleCoefficient_succ` | Negative one-cycle | coefficients 1,−1,1 at steps 0,1,2 | Retain product recurrence. |
| FoldingADE: `fixedIntegralBasis_cartan` | A₂ swap | Cartan vector H₁+H₂=(1,1) fixed | R02 data. |
| FoldingADE: `fixedIntegralBasis_root` | A₂ simple-root orbit | x₁+x₂ fixed; negative one-cycle contributes 0 | R02 data. |
| FoldingADE: `signedPermutation_fixed_iff` | One coordinate, sign −1 | −a=a iff 2a=0; over F₃ only 0, F₂ both elements | Both directions agree. |
| FoldingADE: `signedCycleEquiv_eval` | Negative one-cycle over F₂ | a=1 reconstructs fixed vector 1; 2·1=0 | R02 data; avoids inverting 2. |
| FoldingADE: `orbitD_eq_one_or_two` | A₂ adjacent orbit; A₃ nonadjacent orbit | 2−1=1; 2+0=2 | Retain denominator 1 or 2. |
| FoldingADE: `folded_HE` | A₂ normalized fold | [2(H₁+H₂),E₁+E₂]=2(E₁+E₂) | Retain factor 2. |
| FoldingADE: `foldedSystem` | A₂ | [E,F]=H,[H,E]=2E,[H,F]=−2F | R02 data; char-zero fixed algebra. |
| FoldingADE: `foldedMap_E` | A₂ | E-generator↦E₁+E₂ | R02 data. |
| FoldingADE: `foldedMap_H` | A₂ | H-generator↦2(H₁+H₂) | R02 data. |
| FoldingADE: `foldedMap_F` | A₂ | F-generator↦2(F₁+F₂) | R02 data. |
| FoldingADE: `foldedMap_surjective` | A₂ over ℚ | three nonzero independent fixed generators span dimension 3 | R02 data; integral index is 4. |
| FoldingADE: `foldedMap_injective` | A₂ over ℚ | basis images independent, kernel dimension 0 | R02 data. |
| FoldingADE: `fixedCartan_eq_kernel` | γ=−1 on ℤ | fixed module 0=ker(−2) | Already a native one-lemma API equation, R06. |
| FoldingADE: `fullAction_bracket` | Central line plus A₁, centre action −1 | bracket with central vector 0 maps to 0 | R02 data; full pairing conditions retained. |
| FoldingADE: `fullAction_iterate` | Centre action −1 | second iterate +1; first −1 | R02 data. |
| FoldingADE: `exists_map_diagonalization` | S=γ−I, order-three γ above | determinant 3, Smith diagonal (1,3) | Retain, including rank-zero empty matrix. |
| FoldingADE: `smithKernelEquiv_reconstruct` | Same S over F₃ | S(1,−1)=(0,−3)=0 | R02 data; reconstructed kernel nonzero. |
| IntegralRational: `integralPBWBasis_apply` | Rank-zero frame | basis value 1=ordered monomial 1 | R02 admitted basis; genuine theorem retained in Suggested. |
| IntegralRational: `specializedPBWBasis_apply` | Same over F₂ and zero ring | values 1 and 0=1 respectively; tensor formula agrees | R02 data. |
| IntegralRational: `integralProductCoefficients_spec` | A₁ E·E | E²=2E^(2); coefficient 2 | R02 data. |
| IntegralRational: `frame_lie_generates` | A₁ plus central line | {E,F,H,Z} spans dimension 4 | Retain all toral directions. |
| IntegralRational: `jetDualToDistributions_apply` | Gₐ first jet, derivative δ | δ(t)=1, δ(t²)=0 on quotient and distribution | R02 data. |
| IntegralRational: `jetDualToDistributions_injective` | Jets 1,t | dual coefficients (a,b) recovered from evaluations a,b | R02 data. |
| IntegralRational: `exists_jetDual_preimage` | δ above | δ kills (t)², so order 1 suffices | R02 data. |
| IntegralRational: `rationalDistributionAction_apply` | Gₘ weight 3 | f acts by f(t³) on both sides | `rfl` probe; R06. |
| IntegralRational: `rationalDistributionAction_on_weight` | Euler derivative at 1, weight 3 | derivative t³ at 1=3; action 3m | Retain character hypothesis; API target. |
| ChevalleyModel: `torusPoint_conj_rootPoint` | Genuine A₁, s=2,u=3 | diag(2,1/2)E(3)diag(1/2,2)=E(12) | Native specialization, R06; zero-root model gives I=I, R03. |
| SpectralWeyl: `centerHomeomorph_fst` | z=(1,3) | first coordinate 2=(1+3)/2 | R02. |
| SpectralWeyl: `centerHomeomorph_snd` | Same z | centered coordinates (−1,1)=(1−2,3−2) | R02. |
| SpectralWeyl: `centerHomeomorph_symm` | c=2,w=(−1,1) | (1,3)=(2−1,2+1) | R02. |
| SpectralWeyl: `continuous_forgetOrder` | n=2 | (1,3) and (3,1) have same unordered image {1,3} | Quotient projection; definition/API padding. |
| SpectralWeyl: `orderedCover_pi1` | n=2 | pure generator maps to 2∈B₂=ℤ | R02 dependent equivalences. |
| SpectralWeyl: `planeMonodromy_endpoint` | n=3, endpoint cycle (123) | permutation transport (132) by stated inverse convention | Retain direction; R02 data. |
| SpectralWeyl/Suggested: `permutation_extension_nonsplit` | n=2 | any lift 2k+1 doubles to 4k+2≠0 | Retain n≥2; n=0,1 split trivially. |
| SpectralWeyl: `matrixSpectrum_charpoly` | diag(1,3) | X²−4X+3=(X−1)(X−3) | R02 data. |
| SpectralWeyl: `continuous_matrixSpectrum` | diag(1+t,3), t near 0 | coefficients (−4−t,3+3t) vary continuously | R02 data; no ordered-eigenvalue global choice. |
| SpectralWeyl: `continuous_spectralProjection` | SL₂ t=diag(a,−a) | invariant a²; a=1 gives 1 | Quotient topology/map agree; R01 local analytic owner. |
| SpectralWeyl: `cameralEquiv_apply` | A₁,g=1,t=H | conjugate H=H | R02 equivalence. |
| SpectralWeyl: `cameralEquiv_second` | Same | second component H=H | R02 equivalence. |
| SpectralWeyl: `simplyConnected_flagCoset` | SL₂/T | fibres C over P¹, π₁=0 | Retain; group itself need not be simply connected. |
| SpectralWeyl: `spectralFundamentalEquiv_toMonoidHom` | A₁ loop of quotient coordinate | one generator maps to one generator of ℤ | R02 data; identifies induced map, not arbitrary isomorphism. |
| SpectralWeyl: `arrangement_smul_coe` | A₁ reflection, z=1 | z↦−1 in ambient and subtype | R02 action. |
| SpectralWeyl: `baseChangeWeylEquiv_reflection` | A₁ | real matrix (−1) becomes complex matrix (−1) | R02 equivalence. |
| SpectralWeyl: `arrangementMonodromy_endpoint` | A₂ cycle endpoint | w=(123), monodromy w⁻¹=(132) | Retain inverse convention; R02 data. |
| BruhatCoordinate: `retained_or_inverted` | A₂ w=s₁, positive roots | α₁ inverted; α₂,α₁+α₂ retained | README Check; R06. |
| BruhatCoordinate: `not_both` | Same | intersection cardinality 0 | README Check; R06. |
| BruhatCoordinate: `wrong_left_complement_overlaps` | Wrong w₀s₁ | α₂ in both sets, overlap cardinality ≥1 | README negative control; R06. |
| BruhatCoordinate: `correct_right_complement_contains_alpha1` | Correct complement | α₁ present, membership true | README Check; R06. |
| BruhatCoordinate: `upper3_mul` | (a,b,c)=(2,0,1),(0,3,0) | (1,3)-entry 1+0+2·3=7 | README Check; R06. |
| BruhatCoordinate: `complement_first` | a=2,b=3,c=7 | residual c−ab=1; assembled c=7 | README Check; R06. |
| BruhatCoordinate: `stabilizer_first` | Same | first residual 7; no cross term in reversed order | README Check; R06. |
| BruhatCoordinate: `recover_assemble` | Parameters a=2,h=(3,7) | assembled (2,3,13), recovered (2,3,7) | README Check; R06. |
| BruhatCoordinate: `assemble_recover` | Corresponding upper-unitriangular matrix | entries (2,3,7) preserved | README Check; R06. |
| BruhatCoordinate: `nonnormal_conjugation` | a=b=1 | conjugate upper-right entry 1, outside one-root stabilizer | README Check; R06. |
| BruhatCoordinate: `coveringHomeomorph_apply` | One-sheet cover/id map | value x=x | API transport, not headline; R06. |

The controls distinguish opposite multiplication, reduction of test schemes, zero Hochschild differentials, rational/geometric characters and components, zero root vectors, unsigned folding, missing central directions, tensorial contraction, affinization instead of quotient, and a split Weyl normalizer. R03 is where the Lean laws fail to exclude the wrong model.

## Not verifiable

The legal-source retrieval audit attempted all cited works and yielded ten readable texts, six uncertified works, and nine unresolved texts. The following are limitations on source verification, not mathematical counterexamples and not requests to park this review. Unresolved texts were recorded once each in the scratch `needs-references.toml`; no repository manifest was edited.

- **Uncertified/paywalled:** Waterhouse, *Introduction to Affine Group Schemes*; Borel, *Linear Algebraic Groups*; Springer, *Linear Algebraic Groups*; Humphreys, *Linear Algebraic Groups*; Howlett–Lehrer on Harish-Chandra induction; Serre, *Linear Representations of Finite Groups*. The service reached publisher/paywall records. Their unavailable locators were not certified, and these settled uncertified entries were not added as missing requests.
- **cgp:** Conrad–Gabber–Prasad, *Pseudo-reductive Groups*. The service reached the Cambridge landing page but no legal readable text. General imperfect-field classification locators remain unverified.
- **sga3:** *Schémas en groupes*. The service's title search did not obtain a legal full text. The relative integral reductive-group and pinning locators remain unverified from that source; Milne/Conrad do not certify every SGA3 locator.
- **dipper-du:** Dipper–Du's Harish-Chandra-induction result. Title lookup found no legal text; the exact intertwining/coefficient theorem is not certified.
- **carter:** Carter's finite-groups-of-Lie-type text. Title lookup found no legal text; exact finite-field locators remain unverified.
- **lang:** Lang's algebraic-groups-over-finite-fields paper. A JSTOR landing page was found, not readable text; its original theorem locator is unverified.
- **steinberg:** Steinberg's endomorphism memoir. An AMS landing page was found, not readable text; original Lang–Steinberg and representation locators remain unverified.
- **gassmann:** Gassmann's original work. Title lookup found no legal text; the original locator remains unverified. The finite-group counting identity was independently computed above and its roadmap owner resolved.
- **brieskorn:** Brieskorn on braid groups/reflection arrangements. Title lookup found no legal text; original arrangement-presentation locator remains unverified.
- **salvetti:** Salvetti's arrangement-complement construction. Title lookup found no legal text; the claimed original cell-model locator remains unverified.

Readable works: Milne, Jantzen 1985, SGA1, GAGA, Conrad, Conrad–Feng, Dudas–Michel, McNinch, Gros–Kaneda and Hedén. Only the passages identified above are source-certified. Some Jantzen formulas extract imperfectly; the relevant flatness and acyclicity prose was readable and signs were checked independently.

The IG.3.2 convention citation and companion IG.5.1 attribution have no supplier checkout supplied in this brief and no corresponding main folder was located. Ownership and exact locator support against that unprovided open roadmap were not checked. The local configuration/braid construction and its inverse endpoint convention were examined directly; the companion attribution is not certified as an available input.

## Source issues

- **Misprint** in milne at Remark 4.1, printed p. 84 (milne line 3767): the source says the universal point acts as an endomorphism of End(V⊗A); it should be an endomorphism of V⊗A; affects nothing.
- **Misprint** in milne at §12f, immediately before Theorem 12.18, printed p. 237 (milne line 9848): the source says the coefficient image C_V is a subcoalgebra of V; it should be a subcoalgebra of C; affects nothing.
- **Misprint** in milne at the construction preceding Theorem 12.23, printed p. 240 (milne line 9959): the source says the descended coordinate ring is k[M]^Γ; it should be (kˢ[M])^Γ for the specified semilinear action; affects a stated result.

All three were checked against rendered pages of the legally retrieved author PDF, not inferred solely from OCR. The third changes the written descent construction: for the norm-one real torus the complex coefficient algebra and conjugation action are indispensable. No published correction was verified.
