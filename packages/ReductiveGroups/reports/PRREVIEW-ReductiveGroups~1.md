# Review of ReductiveGroups (pull request #1332 at f536cbd)

**Verdict:** needs changes

## R01 (P1) — Properness does not imply commutativity

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:52–53`, “proper group schemes are commutative”.

**Claim:** This describes the rigidity result being imported from Mathlib without its essential geometric-integrality hypothesis.

**Witness:** The constant group scheme S₃ over ℂ is finite étale and proper. Its points satisfy (12)(23)=(123), whereas (23)(12)=(132). Mathlib's theorem explicitly requires `GeometricallyIntegral`.

**Repair:** State the field and geometric-integrality hypotheses of `AlgebraicGeometry.isCommMonObj_of_isProper_of_geometricallyIntegral`, at `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132`. Add the constant S₃ negative control. This excludes the six-component counterexample and retains the trivial group and abelian varieties. Connectedness alone should not silently replace the pinned hypothesis over arbitrary bases.

## R02 (P1) — The suppliers create reciprocal roadmap dependencies

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:692–696`, supplier ReductiveGroupsPartII RG2.3.7.

**Claim:** The base roadmap consumes a result from its own consumer. This violates the required single direction of supply, even if particular layer-level arguments could be ordered.

**Witness:** `TauCetiRoadmap/ReductiveGroupsPartII/README.md:5201–5214` on main supplies Lang's theorem and explicitly needs ReductiveGroups layer 3. The proposed edge back to Part II closes a two-roadmap cycle.

**Repair:** Move ownership of the general Lang theorem and the requisite finite-field exactness interface into the base roadmap, or an independent earlier owner, and make Part II consume that owner. Keep the full smooth, geometrically connected finite-type hypotheses. On Gₐ/F₂, x²−x reaches 1 over F₄; on constant C₂ it has singleton image, so the connectedness condition remains necessary. Do not repair this by merely moving the merge-order position.

There are additional reciprocal supplier declarations to resolve in the same ownership pass: this README consumes IntegralHeckeAndGaloisDeterminants §0.7 at lines 521 and 1946, while that roadmap's supplier contract consumes ReductiveGroups layers 1 and 9; FormalConnectionsOpers consumes ReductiveGroups layers 0–9 at `TauCetiRoadmap/FormalConnectionsOpers/README.md:67,240`, while this README consumes its F4.3 at line 2148. These may admit a finer mathematical ordering, but the contract requires one direction between roadmaps.

The mechanical dependency check reported no problems; its output is reproduced below. It does not discharge these explicit semantic edges.

## R03 (P2) — Remove admitted data constructions from the acceptance files

**Location:** `TauCetiRoadmap/ReductiveGroups/Suggested.lean:89,119,127,134,143`; the same issue occurs in six companion files.

**Claim:** `sorry` occurs in data definitions, instances, and whole-family constructions, and other declarations depend on them. The form rules prohibit this; putting all parameters on an admitted family does not make it an admitted theorem.

**Witness:** `characterKernelEquiv` at line 134 has an entirely admitted equivalence as its body. `ChevalleyModelTargets.lean:45` similarly admits the complete representation/lattice input. Neither value can be evaluated from its declaration.

**Repair:** Keep only simple definitions with complete bodies needed for genuine headline theorems. State existence/uniqueness or the relevant mathematical property as a theorem when native carriers suffice. Otherwise name the missing construction in the module docstring and keep its specification in the README. Remove dependent substitutes. For example, the character-kernel result can quantify over an equivalence with the specified twist formula; on the split extension C₂×ℤ the nontrivial character sends (1,n) to ((−1)ⁿ,n), while the trivial character acts identically.

The supplied gate reports `sorry-data=5` for Suggested. Inspection of all nine Lean files finds 46 data declarations containing admissions: Suggested 5; IntegralRational 3; SignedADE 11; FoldingADE 12; CoverLift 5; SpectralWeyl 9; ChevalleyModel 1. This includes admitted structure laws as well as wholly unspecified bases, maps and equivalences. BruhatCoordinate and OrbitGeometry have no admitted data bodies.

## R04 (P2) — The simply connected substitute does not test the promised constructor

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:24–46,72–77`.

**Claim:** The only new theorem checks torus conjugation for an admitted `SCRealizationInput`. The record does not identify its root vectors with the normalized frame. Consequently it cannot serve as the acceptance statement for the integral group with the prescribed root datum. The docstring acknowledges the record is only a package of operands; that does not make it a permitted substitute.

**Witness:** In A₁ take the standard representation on ℚ², lattice ℤ², h=diag(1,−1), weights 1,−1, but set both e's to zero. All record conditions hold. Root points are I; the toral closure is Gₘ, not SL₂.

**Repair:** Remove this substitute and the admitted constructor. State the actual existence/root-datum/pinning and change-of-choice result on native carriers, if a few simple definitions suffice; otherwise list the missing carrier in Suggested's docstring. In the README retain the normalized full frame, faithful integral realization and root-datum comparison as actual targets. The A₁ negative control must fail: the correct root maps send 1 to [[1,1],[0,1]] and [[1,0],[1,1]], and the resulting group has dimension 3, not 1. The existing conjugation equation gives I=I on the wrong input and therefore does not exclude it.

## R05 (P2) — Suggested does not state the statable headline results

**Location:** `TauCetiRoadmap/ReductiveGroups/Suggested.lean:6–20,134–141`; compare `OrbitGeometryTargets.lean:104–173` and README layer 3A.

**Claim:** The targeted build checks wrappers and cover-lift API, while deep results already statable on native carriers sit in unimported companions. The module docstring does not enumerate the missing headline results and their missing carriers.

**Witness:** `OrbitGeometry.exists_closed_orbit` already has a native statement at lines 158–164 with algebraically closed field, affine smooth finite-type group, separated finite-type action space and nonempty rational points. It is absent from Suggested.

**Repair:** Make Suggested contain the chosen genuine headline statements and only their necessary simple definitions. Include orbit local closedness, boundary dimension and closed-orbit existence where selected as endpoints; account explicitly for integral PBW, the general pinned model, highest-weight theory and spectral monodromy. Do not force unstatable endpoints through opaque data. The Gₘ action on ℙ¹ provides both a one-dimensional open orbit and two zero-dimensional closed orbits; the empty action space must remain excluded from unconditional existence.

## R06 (P2) — Cite existing descent ownership instead of planning a new foundation

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:124–127,170–174,1049–1059`.

**Claim:** The cross-cutting lane proposes developing generic fppf sheafification, faithfully flat descent, torsors and representability without separating supplied theory from the genuinely new group-specific representability results.

**Witness:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:2071–2083` already owns quasi-coherent fpqc descent and the sheaf-stack theorem. `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Basic.lean:154` already defines the fppf quotient sheaf for a normal Hopf ideal.

**Repair:** Put exact supplier contracts in the scope section and delete the overlapping construction promises. Keep only explicitly identified adapters and new quotient-representability theorems with their hypotheses. The native quotient is a sheaf, not a representability theorem: for Gₘ/μ₂ over ℚ, 2 has no square root in ℚ but does after the finite faithfully flat extension ℚ(√2); the sheaf quotient handles this without asserting surjectivity on ℚ-points. This distinction preserves the intended general quotient result without building a second descent library.

## R07 (P3) — Replace all eight commit-pinned roadmap links

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:521,1077,1210,1388,1826,1946,2102,2156`.

**Claim:** The gate's `blob=8` rule fails: internal and supplier roadmap citations are GitHub blob links tied to commits rather than timeless roadmap-name/section contracts.

**Witness:** Line 521 points to a commit-specific IntegralHeckeAndGaloisDeterminants README. The same supplier is linked again at line 1946.

**Repair:** Replace each link by the roadmap name and exact section, resolved against its authorized main/new-roadmap version. Keep the mathematical contract in prose. The cited section should still resolve after the commit identifier is removed. Do not use the snapshot link to preserve a stale or reciprocal supplier contract.

## R08 (P3) — Use the allowed imports in every scoped Lean file

**Location:** `TauCetiRoadmap/ReductiveGroups/Suggested.lean:1–3`, and the headers of the eight companions.

**Claim:** The supplied gate fails both `imports=1` and `mathlib-subimports=1`. Suggested puts Tau Ceti before Mathlib and imports `Mathlib.GroupTheory.GroupExtension.Basic`. Companion files also import roadmap modules and Mathlib submodules; ChevalleyModel lacks `import Mathlib`.

**Witness:** Suggested line 3 is the forbidden Mathlib submodule import. CoverLift line 1 imports `TauCetiRoadmap.ReductiveGroups.SignedADETargets`.

**Repair:** Use a single leading `import Mathlib`, followed only by the individual pinned TauCeti modules actually used. Consolidate the necessary headline definitions rather than importing another roadmap module. A scratch copy of Suggested with precisely this import normalization elaborated successfully, with only the original sorry warnings.

## R09 (P3) — Delete wrappers and API padding from the acceptance test

**Location:** `TauCetiRoadmap/ReductiveGroups/Suggested.lean:34–62,114–141`; `ChevalleyModelTargets.lean:72–77`; `IntegralRationalTargets.lean:204–208`.

**Claim:** The acceptance material contains instance aliases, an existing induction dimension formula, a projection property, and a kernel-equivalence evaluation rule instead of headline results. The new conjugation theorem is also a specialization of a pinned theorem.

**Witness:** `coverAction_projection` is proved by `l.property.2 e`. `rationalDistributionAction_apply` closes by `rfl`. Chevalley torus conjugation closes in one `simpa [torusCharacter] using` the pinned Kostant conjugation theorem.

**Repair:** Delete this padding from `Suggested.lean`; keep useful mathematical statements as README API/Checks and cite the pinned declarations. Apply the same acceptance-file rule to companions, including Bruhat's small matrix checks. Do not replace the admissions by proofs in place. On S₃/C₂ the induction dimension is 3=3·1; that is a valid Check of the imported theorem, not a new endpoint. The scratch conjugation specialization elaborated with only the pre-existing admitted constructor warning.

## R10 (P3) — Supply the required prose structure, exact locators and Checks

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1–127,227–232,1662–1675,2390–2444`; scoped Lean module/declaration docstrings.

**Claim:** There is no opening Summary, Scope and ownership, Conventions, Exact supplier contracts, or How to read the build in the required form. Layers do not consistently end in Examples/Dependencies, and there are no `*Needs:*` lines. Many early definitions have neither an API nor three discriminating Checks. Numerous source citations lack theorem/section/page locators; no sources manifest accompanies the bibliography.

**Witness:** The sampled “Cross-cutting prerequisite” at lines 124–127 gives neither owner sections nor a source locator. “One constructor” at 1662–1675 gives no theorem/page supporting the specific construction route. Layer 2 has two broad bullets, not fully specified targets.

**Repair:** Recast the existing mathematics into the required sections without shortening it. Give each retained definition its exact API and at least three discriminating Checks, each theorem its hypotheses/locator and each route its inputs. Record sources once under stable keys. Replace process/design narrative and illustrative-signature docstrings by the required target-signature form. For the cross-cutting example, distinguish representable sheafification, effective descent and quotient representability; for the constructor use the root-free Gₘ, ordinary A₁ and zero-root-operator negative control rather than three copies of a defining equation. A general existence citation does not certify the proposed integral chart construction.

## R11 (P3) — Replace the computational-certificate deliverable by mathematical targets

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1457–1474`, “Construct kernel-checkable rational certificates”.

**Claim:** The exceptional-folding block requires complete finite enumerations, coefficient-vector certificates and row-by-row exact-arithmetic verification. This prescribes computational deliverables rather than the mathematical theorem/Checks format required for a roadmap.

**Witness:** Lines 1463–1468 require a finite Lie-word certificate for every surviving root-orbit basis vector and verification of every row. This is substantially more than a small worked example.

**Repair:** State generation, the Serre relations and the G₂/F₄ comparison with their precise hypotheses and sources. Give a mathematical proof route, leaving implementation choices to the library work. Keep small discriminating Checks: D₄ has 24 roots and fixed dimension 14, while E₆ has 72 roots and fixed dimension 52; neither count alone proves generation. The underlying folding scope remains required.

## Verified sound

This is a read-only review of all ten scoped files at the specified head. No outside-folder changes appear in `origin/main...HEAD`; the worktree remains unchanged. I read the normative repository README and CONTRIBUTING and compared the shape with SchemeAndStackFoundations and ReflectionInvariantTheory on main. The existing ReductiveGroups programme is on main; this is an extension/revision of it, so I have not treated its mere existence as a reason to reject the folder.

### Gate, build and signatures

The supplied gate result is FAIL, with exactly these nonzero failure counters: `blob=8`, `sorry-data=5`, `imports=1`, `mathlib-subimports=1`. R03, R07 and R08 cover every failing rule. Its build counter is zero. There are no reported `set_option`, LaTeX, stray-file, outside-folder, dirty-worktree or source-material failures.

I independently ran `lake env lean` on Suggested: success, with only sorry warnings. A scratch copy with `#check @...` for each actual declaration also elaborated. There are 15 actual declarations, not 16: the supplied extraction counted the prose word “and” after “instance” as an extra declaration. No required section binder disappeared from those 15 types. In particular, centrality remains explicit on the character twist/kernel family and finite index remains on induction. This binder check does not validate the admitted constructions.

I attempted the rfl/simp/infer_instance padding probe for all 89 admitted theorem statements across the nine files, one Lean invocation at a time. For files whose companion object files were unavailable, scratch copies included their unchanged dependency declarations. These probe failures are not original-build failures. Most targets did not close; this is not evidence that they are true. `rationalDistributionAction_apply` closed by reflexivity. The separate one-library-theorem Chevalley conjugation probe also succeeded. Existing explicit one-line proofs in Suggested provide the further padding witnesses in R09.

The required dependency command returned:

```text
depcheck: 204 roadmaps, 1478 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. R02 records semantic reciprocal edges not caught by that output. No declaration of a supplier gap was found; none has been invented or treated as an authorized gap.

### Seeded source sample

1. **Cross-cutting prerequisite: sheaves and descent.** Milne 2017, §5j, Definition 5.65, Example 5.66 and Proposition 5.68, printed p. 116 (`milne`, 2017 extraction, lines 4985–5017), distinguish flat sheaves, representable sheaves and sheafification. This supports the general sheaf language, not the whole unspecified effective-descent/representability package. That section uses the flat topology; it is not an exact locator for every fppf result promised here. The README supplies no locator for the sample as written. R06/R10 record the ownership and specification repairs.
2. **Supplier:** ReductiveGroupsPartII RG2.3.7 exists on main, lines 5201–5214. Its cited Milne v2.00 Proposition 27.54 and Corollaries 27.55–27.56, printed pp. 487–488, were fetched from the author's CourseNotes copy and read at `milne` v2.00 lines 20240–20275. The connected group-variety and Steinberg/Frobenius hypotheses match the smooth geometrically connected finite-type use. Milne writes gF(g⁻¹); replacing g by g⁻¹ gives the roadmap's g⁻¹F(g), with the same surjectivity. The disconnected C₂ counterexample is also present. The mathematical supplier statement checks out; the supply direction does not.
3. **One constructor.** Conrad, *Reductive Group Schemes*, Theorem 6.1.16, printed p. 196 (`conrad` lines 8159–8165), gives existence with prescribed root datum; Theorem 6.1.17, printed p. 197 (lines 8173–8182), gives the pinned equivalence. The base scheme is nonempty. Lines 8192–8198 describe the existence route through birational group laws. This supports the general pinned existence/classification endpoint. It does not itself verify the new Kostant-toral-closure chart localization, saturation and base-change argument in 9B.1; that route still lacks its claimed exact source support.

Additional source checks: Dudas–Michel Proposition 8.9, printed p. 32, lines 1457–1467, requires the two Levi factors to contain the common torus and gives the four-factor intersection with uniqueness, matching layer 7b. Theorem 10.1, printed p. 41, lines 1808–1814, states common-Levi independence; its displayed proof uses complex coefficients and sends general coefficients to Howlett–Lehrer/Dipper–Du. It is not a proof of the entire coefficient-general theorem by itself. Author/institutional copies of Conrad–Feng, McNinch, Gros–Kaneda and Hedén were fetched for the corresponding reference checks; availability is not a certification of every locator in those works.

### Pinned declarations and ownership

The following declarations were opened at the supplied pins, rather than inferred from current upstream documentation:

| Object | Pinned locator | What the declaration does, and limit |
|---|---|---|
| Affine Hopf dictionary | `Mathlib/AlgebraicGeometry/Group/Affine.lean:177,187,482` | `hopfSpec`, `hopfSpec.fullyFaithful`, `essImage_hopfSpec`; affineness is the essential-image condition, not a built-in smoothness or finite-type assumption. |
| Proper group rigidity | `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132` | `isCommMonObj_of_isProper_of_geometricallyIntegral`; the omitted geometric-integrality assumption is essential. |
| fppf quotient | `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Basic.lean:154` | `CommHopfAlgCat.fppfQuotientSheaf`; normal Hopf ideal and sheafification, no representability conclusion. |
| Tangent adjoint action | `TauCeti/Algebra/AlgebraicGroup/Tangent/Adjoint.lean:177` | `Derivation.adRepresentation`; the roadmap should build adapters/comparisons, not a duplicate operation. |
| Reductivity and maximal torus | `TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70,79`; `TauCeti/Algebra/AlgebraicGroup/Torus/Maximal.lean:50` | Reductivity includes smoothness and geometric connectedness; maximal torus is minimal among the corresponding Hopf ideals, with the subgroup order reversed. |
| Induction dimension | `TauCeti/RepresentationTheory/Induction/FiniteDimensional/Basic.lean:487` | The finite-index dimension formula already used by Suggested. |
| Distribution action | `TauCeti/Algebra/Coalgebra/Comodule/Convolution.lean:49,91` | `Comodule.convolutionAction` and its coefficient-contraction formula. |
| Integral torus conjugation | `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241` | `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, with weight-vector and root-eigenvalue inputs; it does not assert that these inputs realize a prescribed root datum. |

Ownership searches used the roadmap index grep/show/resolve tools, main, supplied open heads, and board packages, by objects such as descent, Lang maps, root data, configuration covers, polynomial-unipotent exponential and highest-weight induction. The one unresolved name from the resolver is **not** a finding: `Gassmann.almostConjugate_iff_permutation_equiv` resolves in `TauCetiRoadmap/RepresentationTheory/InductionRestriction/Suggested.lean:728`, with the corresponding main README criterion at line 378.

Resolved cross-roadmap contracts include SchemeAndStackFoundations §1.1; ReductiveGroupsPartII RG2.3.7; RootSystems layers 1, 2, 4 and 6; IntegralLattices' integral-form carrier; ChevalleyGroups C0–C7; GroebnerGeometry G5; InverseGaloisAndArithmeticFundamentalGroups §5.1 configuration covers; AlgebraicTopology's van Kampen/CW material; DGFloer's homotopy-sequence material; LieGroups layers 6–8; ComplexComparisonPartII C−1.1; SmoothBundlesConnections B1.1/B1.4; LieGroupoidsPoisson G0.1; and FormalConnectionsOpers §4.3. ComplexComparisonPartII C−1.1 supplies the actual analytification with nilpotents, classical point topology and proper/separated comparisons. The orbit file's topology must be compared to that supplied topology; it is not a fresh generic analytification owner. IntegralHeckeAndGaloisDeterminants §0.7 and its reciprocal dependency were also read. These resolutions establish the named sections' existence, not universal certification of every broad sentence citing them.

ReductiveGroups owns the group-specific integral realization and its root-datum/pinning comparison; RootSystems owns the underlying root data, and ChevalleyGroups is the explicit-realization/point-group consumer. Reusing native Kostant operations is appropriate. R04 concerns the acceptance statement, not a request to move this group-specific construction to Mathlib or wait for another library.

### Headline coverage

The README's substantial endpoints are the affine Hopf/scheme/functor dictionary; rational representations/comodules; algebraic orbit local closedness, boundary dimension and closed-orbit existence; unipotent/Levi and reductive structure; Bruhat coordinates; finite-field Lang, Harish–Chandra adjunction/Mackey/common-Levi independence; root-datum classification/existence; signed ADE Lie algebras, cover lifts and folding; the full reductive integral PBW theorem and rational comparison; the integral pinned group with all central tori/isogeny types and arbitrary-ring specialization; distributions/Frobenius/contraction; highest-weight/simple-module and Peter–Weyl results; and spectral/cameral fundamental groups with finite Weyl monodromy. Suggested's wrappers and kernel evaluation theorem do not cover this list. Several endpoints already have native signatures in the companions; those are not “unstatable” merely because their proofs are large. Conversely, the heavy admitted constructions do not establish statability under the simple-definition rule.

### Adversarial computations

The 226 rows below record values in the indicated concrete models. These are finite-instance checks, not proofs of the universal targets. “Model only” means that a wholly admitted map cannot itself be evaluated: the numbers check its intended specification, not Lean's unspecified value. R03 prevents treating such rows as certification of the present acceptance files. The calculations include rank zero, noncommutative points, small characteristics, nilpotents, arbitrary-ring phenomena and both directions of relevant identifications. Identical algebra reused in several layers is identified explicitly.

| Statement / convention | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Proper ⇒ commutative (R01) | Constant S₃/ℂ | ab=(123), ba=(132); proper=true, commutative=false | Fails; add geometric integrality. |
| Smoothness vs geometric reducedness | μ₂/F₂; Gₘ/F₂ | μ₂: (t−1)²=0, tangent dimension 1, dimension 0; both smooth/reduced false. Gₘ: both true | Retain field/group hypotheses. |
| Hopf points and convolution | Gₐ, Gₘ; points 2,3 | Gₐ: Δx=x⊗1+1⊗x gives 5=2+3; Gₘ: Δt=t⊗t gives 6=2·3 | Sound convention; not composition. |
| Noncommutative points vs GroupLike | Upper/lower elementary GL₂ matrices | products [[2,1],[1,1]] and [[1,1],[1,2]] differ | Point group must not be replaced by GroupLike. |
| Affine scheme/Hopf/representable dictionary | Gₘ | algebra map t↦2; inverse point t↦1/2; scheme point has the same coordinate 2 | Native dictionary applies. |
| `globalSectionsHopfAlgebra` | Gₘ over ℚ | counit t↦1; Δt=t⊗t in both presentations | Existing instance; R09. |
| `specGroupObject` | additive Hopf algebra ℚ[x] | multiplication evaluates x at a+b; a=2,b=3 gives 5 on both sides | Existing instance; R09. |
| Cross-cutting sheaf prerequisite (sample) | Gₘ/μ₂, A=ℚ | 2 is not a square in A; it is (√2)² after finite flat extension | Sheaf quotient differs from point quotient; R06. |
| Faithfully flat descent of modules | ℝ→ℂ, line with conjugation | descended fixed vectors ℝ; ℂ⊗ℝℝ=ℂ, complex dimension 1 | Supplier owns general descent. |
| Representation/comodule dictionary | Gₘ weight 2 line | coaction m↦m⊗t²; point 3 acts by 9; (2·3)²=4·9=36 | Keeps coefficient and action order. |
| Faithful coefficient-generated embedding | Gₘ weights {1} vs {2} | kernel of t↦t is 1; kernel of t↦t² is μ₂ | Full character generation matters. |
| Lie algebra at the identity | μ₂/F₂; trivial group | tangent dimensions 1 and 0; μ₂ point set has only 1 | Do not infer Lie algebra from reduced points. |
| Adjoint representation | SL₂, h=diag(2,1/2), E=E₁₂ | hEh⁻¹=4E; character α(h)=4 | Native action agrees. |
| Hopf ideal / subgroup | μ₂⊂Gₘ over F₂ | ideal (t²−1)=(t−1)²; quotient has dimension 2, not reduced dimension 1 | Retains scheme structure. |
| Components | Constant S₃ | G°=1, π₀ has 6 elements; dimension 0 on all components | Smoothness does not force connectedness. |
| Orbit `Points`, `constant`, `orbitMorphism` | Gₘ acting on A¹, x=3,g=2 | point composition and action both give 6; constant map always gives 3 | Native action carrier discriminates multiplication from constant map. |
| `translation`; `translation_inverse` | Same action, g=2 | z↦2z↦z; z=3 gives 3=identity(3) | Inverse order correct. |
| `point_orbitMorphism` | Same | 2 followed by orbit map gives 6; 2•3=6 | Sound test. |
| `translation_point` | Same | 3 followed by translation gives 6; 2•3=6 | Sound test. |
| `pointLocation` | A¹/ℂ, point 3 | prime ideal (x−3), not generic ideal (0) | Correct closed-point carrier. |
| `geometricOrbit` | Gₘ on A¹, x=1 vs 0 | orbit(1)=A¹\{0}; orbit(0)={0} | Wrong whole-space orbit excluded. |
| `orbitClosure` | Same | closure orbit(1)=A¹; closure orbit(0)={0} | Closure differs from orbit. |
| `orbitBoundary` | Same | boundaries {0} and ∅ | Not complement in arbitrary ambient space. |
| `orbitDimension` | Same; trivial orbit | dimensions 1 and 0; empty set dimension −∞ | Correct WithBot convention. |
| `orbitMorphism_finitePresentation` | Gₘ→A¹, x=1 | open immersion k[x]→k[x,x⁻¹], one inverse relation xy−1 | Both finite presentation and quasi-compactness true. |
| `point_mem_geometricOrbit` | x=1, y=2 or 0 | y=2: true, witness g=2; y=0: false, no unit g=0 | Both directions tested. |
| `orbit_open_in_closure` | Gₘ on A¹ | A¹\{0} is open in A¹; singleton orbit open in itself | Sound test. |
| `orbit_locallyClosed` | Same | open immersion for nonzero orbit; closed immersion for zero orbit | Both cases locally closed. |
| `exists_reduced_orbit_model` | Same | models Spec k[t,t⁻¹] and Spec k, reduced=true in each | Smoothness avoids a μp point-orbit substitution. |
| `orbit_dimension_finite` | Same | witnesses d=1 and d=0 | Finite-type hypothesis retained. |
| `boundary_dimension_lt` | Same | 0<1 and −∞<0 | Empty-boundary convention correct. |
| `boundary_orbit_dimension_lt` | x=1,y=0 | 0<1; y=1 does not meet boundary hypothesis | Correct negative control. |
| `exists_closed_orbit_in_closure` | x=1 | y=0, {0}⊆A¹ and {0} closed | Sound test. |
| `exists_closed_orbit` | A¹ vs empty scheme | A¹ has witness 0; empty scheme has no points and fails input hypothesis | R05 preserves nonemptiness. |
| `minimal_dimension_orbit_closed` | Gₘ on ℙ¹ | minimal dimension 0, orbits {0},{∞} closed; open orbit dimension 1 | Minimality excludes open orbit. |
| Nonconnected orbit dimension | C₂ interchanging 0,∞ in ℙ¹ | orbit size 2, dimension 0, boundary ∅, −∞<0 | No connected-group assumption needed here. |
| Inseparable orbit map | Gₘ on Gₘ via t², characteristic 2 | derivative 0, stabilizer μ₂, image all geometric points | Do not infer separable stabilizers from smooth G. |
| `affinePointEval` | f=x² on A¹, point 3 | pullback value 9=3² | Sound test. |
| `classicalPointSubbasis`, topology | A¹/ℂ, f=x, open unit disk | preimage is unit disk; Zariski topology would not make it open | Comparison required, not arbitrary topology. |
| `compact_complexPoints` | ℙ¹ vs A¹ | ℙ¹(ℂ) compact; A¹(ℂ)=ℂ not compact and not proper | Supplier-compatible example. |
| `hausdorff_complexPoints` | A¹ vs doubled-origin line | A¹ is Hausdorff; two origins inseparable, scheme not separated | Separatedness discriminates. |
| `compact_closed_orbit_points` | Gₘ on ℙ¹ | {0} compact; ℂˣ open orbit noncompact | Closedness necessary. |
| Jordan / diagonalizable / torus distinctions | μ₂/F₂; norm-one torus over ℝ | μ₂ has 1 geometric point but length 2; real norm-one torus has circle of real points, not ℝˣ | Multiplicative type is not split smooth torus. |
| Unipotent exponential/logarithm | N=E₁₂, characteristic 0 | N²=0; exp(N)=I+N; log(I+N)=N | General polynomial-unipotent supplier retained. |
| Heisenberg exponential denominator | N=aE₁₂+bE₂₃ | N²=abE₁₃; exp(N)₁₃=ab/2; a=b=1 gives 1/2 | Characteristic-zero condition essential. |
| Reductive vs linearly reductive | Gₘ/F₂, SL₂/F₂ | torus weight decompositions split; Sym² for SL₂ contains nonsplit Frobenius submodule of dimension 2 in dimension 3 | Do not equate notions in characteristic p. |
| Levi product convention | Gₐ⋊Gₘ | (1,2)(3,5)=(7,10); direct-product formula gives (4,10) | Semidirect action required. |
| Levi conjugacy vs uniqueness | L×Gₐ | every u in Gₐ centralizes L; conjugate complement remains L | No unique conjugating u. |
| Reductive coset affineness | SL₂/T; SL₂/U | SL₂/T affine; SL₂/U=A²\{0} not affine | Nonreductive U excluded from affineness theorem. |
| Bruhat cells | SL₂ | Weyl lengths 0,1; cells have dimensions 0,1 in G/B=ℙ¹ | Rank-one control. |
| Rank-one Gauss formula | x₊(2)x₋(3) | [[7,2],[3,1]]=x₋(3/7)diag(7,1/7)x₊(2/7) | Denominator 7 nonzero; a=1,b=−1 gives pivot 0 and is excluded. |
| `positivePair`, `retained`, `inverted` | n=0,1,2 | pair counts 0,0,1; for n=2 identity retains 1, swap inverts 1 | Empty and rank-one controls. |
| `retained_or_inverted` | A₂, w=s₁, positive roots α₁,α₂,α₁+α₂ | retained false,true,true; inverted true,false,false | Union has all 3 roots. |
| `not_both` | Same | retained∩inverted=∅, cardinal 0 | Exclusivity checked. |
| `wrong_left_complement_overlaps` | w=s₁ in S₃ | H(w) and H(w₀w) both contain α₂ | Wrong order gives overlap; README corrects it. |
| `correct_right_complement_contains_alpha1` | Same | H(ww₀) contains α₁; H(w) does not | Right order gives required complement. |
| `upper3`, `upper3_mul` | (a,b,c)=(2,3,11), (a′,b′,c′)=(5,7,13) | product coordinates (7,10,38); 11+13+2·7=38 | Cross term indispensable. |
| `stabilizerS1`, `complementS1` | b=3,c=11,a=2 | stabilizer coordinates (0,3,11), complement (2,0,0) | Different root supports. |
| `complement_first` | a=2,b=3,c=11 | x(2)h(3,5) has (1,3)-entry 5+6=11 | Correct correction c−ab. |
| `stabilizer_first` | Same | h(3,11)x(2) has (1,3)-entry 11 | Order changes parameter. |
| `recoverComplementFirst`, `recover_assemble` | (2,(3,5)) | assembly (2,3,11), recovery (2,(3,5)) | Both maps computed. |
| `assembleComplementFirst`, `assemble_recover` | (2,3,11) | recovery (2,(3,5)), assembly (2,3,11) | Other inverse computed. |
| `nonnormal_conjugation` | U₁₂(1),U₂₃(1) | conjugate gains E₁₃ coefficient 1 | Complement need not be normal. |
| `coveringHomeomorph`, application | identity ℝ→ℝ vs z↦z² on ℂˣ | identity fibre size 1; square-cover fibre size 2 and base not simply connected | Hypotheses exclude nontrivial cover. |
| Lang ordinary Frobenius (sample) | Gₐ/F₂; constant C₂ | θ²−θ=1 in F₄; C₂ image={1}, misses other point | Source supports hypotheses; supply cycle R02. |
| Lang sign convention | Gₘ, q=3 | gF(g⁻¹)=g⁻²; replacing g by g⁻¹ gives g²=g⁻¹F(g) | Surjectivity unaffected; map is not literally equal. |
| Rational exactness with connected kernel | square map Gₘ→Gₘ over F₃ | squares={1}, misses −1; kernel μ₂ disconnected | Connected-kernel condition is necessary. |
| Parabolic/Levi intersections | Opposite SL₂ Borels | L∩M=T; other three factors=1; intersection=T | Common torus and factor order correct. |
| Harish–Chandra averaging/biadjunction | U=C₂, coefficients ℂ | e=(1+u)/2, e²=(2+2u)/4=e | In F₂ denominator unavailable; p invertible required. |
| `indFromProjectedLevi`, dimension | GL₂(F₂)=S₃, P=C₂ | index=3; induced trivial module dimension 3=3·1 | Pinned formula, R09. |
| Specialized Mackey | S₃, H=C₂ | two double cosets sizes 2 and 4; restriction decomposes dimensions 1+2=3 | Nonabelian test. |
| Common-Levi independence | Opposite Borels in GL₂(F₂) | both induce the same 3-point permutation representation | Checks rank-one instance, not coefficient-general proof. |
| Trivial induction / Gassmann | S₃,H=C₂, transposition and 3-cycle | fixed-coset counts 1 and 0; 1·2=2·1, 0·2=3·0 | Both class-count cases correct. |
| Steinberg power condition | F ordinary q=2 on Gₐ | fixed points {0,1}; F² fixes F₄ with 4 points | Fixed sets finite; F≠identity on algebraic closure. |
| Root datum / isogeny distinction | SL₂ vs PGL₂ | root is 2ω vs a primitive character; lattice index 2 | Same root system does not determine group. |
| Pseudo-reductive warning | Res K/k Gₘ, purely inseparable [K:k]=2 | after algebraic closure dimensions 2 total, 1 unipotent radical | Geometric reductivity must not be inferred. |
| Signed `Datum`, `Lattice`, `pairing` | A₂; zero rank | Gram [[2,−1],[−1,2]], pairing(e₁,e₂)=−1; zero-rank space has 1 vector and 0 roots | Positive-definite full lattice. |
| `latticeForm`, symmetry | A₂,e₁,e₂ | B(e₁,e₂)=−1=B(e₂,e₁); B(e₁,e₁)=2 | Formula checks; law admissions R03. |
| `integralLattice` | A₂ | Gram determinant 3; rationalization rank 2 | Retains integral discriminant, not just rational span. |
| `exponent`, `epsilon` | A₂, order 1<2 | exponent(e₁,e₂)=0, reverse=1; signs +1,−1 | Orientation pinned. |
| `epsilon_cocycle` | a=e₁,b=e₂,c=e₁ | left (+1)(−1)=−1; right (−1)(+1)=−1 | Bilinear cocycle test. |
| `epsilon_commutator` | a=e₁,b=e₂ | (+1)/(−1)=−1=(−1)^(−1) | Pairing sign matches. |
| `Cover`, multiplication and inverse | a=e₁+e₂ | section(a)·section(−a)=(0,−1); inverse section(a)=(−a,−1) | Opposite lift needs sign. |
| `coverGroup`, `tau`, `sectionLift` | A₂; rank zero | τ²=(0,1); rank-zero cover has 2 elements | Real operations; admitted laws R03. |
| `signInclusion`, `projection`, `extension` | (a,s), a=e₁ | sign image={(0,±1)}=kernel; projection(a,s)=a | Exactness specification checks. |
| `signInclusion_central` | τ and section(e₁) | both products (e₁,−1) | Central, although whole A₂ cover noncommutative. |
| `sectionLift_inverse` | a=e₁+e₂ | both sides (−a,−1) | Inverse convention checks. |
| `Root`, `root_finite` | A₂; rank zero | roots ±e₁,±e₂,±(e₁+e₂): 6; empty diagram: 0 | Finite norm shell correct. |
| `simpleReflection`, `root_generated` | A₂ | s₁(e₂)=e₁+e₂; s₁(e₁)=−e₁ | Positive and negative roots reached. |
| `LiftedRoot`, `tauRoot`, `signRelations` | lift of e₁ | lifts (e₁,+1),(e₁,−1); quotient relation negative+positive=0 | Wrong unsigned identification excluded. |
| `rootLineQuotientEquiv`, generator | Same | intended images +δe₁ and −δe₁; sum 0 | Model only; R03. |
| `Carrier`, `cartan`, `rootVector` | A₂ | rank 2+6=8; cartan(e₁) has root part 0, e-root vector has toral part 0 | Direct-sum components distinguished. |
| `rootBracket`, `bracket` | A₂, e₁,e₂ and a=e₁+e₂ | [e₁,e₂]=e_a; [e_a,e_−a]=−H_a | Raw and normalized signs differ. |
| `lieRing`, `lieAlgebra`, Jacobi | e₁,e₂,e_−(e₁+e₂) | three Jacobi terms −H₁,−H₂,H₁+H₂ sum to 0 | Concrete bracket check; laws still admitted. |
| `neg_root_norm`, `negRoot` | a=e₁+e₂ | B(−a,−a)=2=B(a,a) | Norm preserved. |
| `bracket_opposite` | Same | both sides −H₁−H₂ | Negative raw coefficient intentional. |
| `normalizationSign`, normalized vector | a and −a | signs +1 and −1; negative vector becomes −e_−a | Inverse-lift normalization. |
| `normalized_opposite` | Same | [e_a,−e_−a]=H_a | Correct normalized bracket. |
| `integralBasis`, cartan API | A₂ | basis at inl(1)=(e₁,0) | Definition-level API, not headline. |
| `integralBasis`, root API | A₂ | basis at inr(a)=(0,δa) | Definition-level API, not headline. |
| `normalizationEquiv`, value API | coefficient 3 on −a | intended output −3 on −a; applying twice gives 3 | Model only; R03. |
| `FullCartanData`, `FullCarrier`, full bracket | Root-free Y=ℤ; A₁ coroot 2y | root-free carrier ℤ, bracket 0; A₁ [e,f]=2H_y | Central directions retained; no coroot-only substitute. |
| `fullFrameMap`, comparison | A₁ with Y generated by h | images h,E,F are independent, rank 3; [E,F]=h | Model only for admitted map. |
| Generic `liftSubgroup`, `LiftGroup` | Split C₂×ℤ→ℤ, action A=1 | lifts fixing C₂ are (s,n)↦(sχ(n),n), two choices χ(1)=±1 | Carrier condition discriminates projection-changing maps. |
| `projection`, `coverAutomorphism`, `coverAction` | Nontrivial χ above, e=(1,1) | projection=1; automorphism/action sends (1,1) to (−1,1) | Real component projections agree. |
| `coverAction_projection` | Same | quotient of (−1,1)=1; identity action on quotient gives 1 | Stored property, R09. |
| `characterTwist`, inverse | χ(n)=(−1)ⁿ | (1,1)↦(−1,1)↦(1,1); n=2 unchanged | Intended formula correct; admitted laws R03. |
| `characterInclusion` | χ²=1 | twistχ composed with itself is identity | Character multiplication matches composition. |
| `characterKernelEquiv`, value | Split extension above | character group size 2; projection kernel size 2; nontrivial value (−1,1) | Model only; no specified Lean equivalence body. |
| `liftableExtension` | Same | kernel size 2, lift group size 2, image size 1 | Intended exact sequence; R03. |
| `isometryGroup`, `isometryMulAction` | A₁ lattice ℤ, norm 2n² | isometries n↦±n; 2 elements, 2(−n)²=2n² | Finite test. |
| `isometryGroup_finite` | A₁; zero rank | cardinalities 2 and 1 | Empty-rank boundary correct. |
| `liftGroup_finite` | A₁; zero rank | cardinalities 4 and 1 | Kernel characters contribute 2 in rank one. |
| `projection_surjective` | A₁ | two sign twists over each ± isometry | Both isometries lift. |
| `rootEquiv`, `sectionSign` | A₁ reflection lift with positive section sign | e↦−e, sign +1; identity isometry with χ(e)=−1 has sign −1 | Isometry alone does not determine lift. |
| `carrierEquiv`, `lieEquiv`, root API | Same two lifts | reflection H↦−H,E↦F; character twist H↦H,E↦−E | Both preserve [E,F]=H with corresponding F image. |
| `carrierEquiv_mul` | Character twist squared | E↦−E↦E; product lift identity sends E↦E | Composition convention correct. |
| `faithful_integral_action` | A₁; zero rank | three nonidentity lifts alter H or E; rank-zero lift group is 1 | Faithfulness test; integral coefficients essential. |
| `fixedLieSubalgebra`, submodule API | A₂ diagram flip | fixed ℤ-rank 3; kernel(φ−1) same rank 3 | Fixed objects use actual action. |
| `mapFixed` | Identity equivariant map | each invariant vector v maps to v; fixed rank 3→3 | Source/target agree. |
| `permQ`, `rootAction`, pairing API | A₂ flip | e₁↦e₂; B(e₂,e₁)=−1=B(e₁,e₂) | Diagram symmetry required. |
| `reversalExponent`, `actionSign` | A₂ flip, a=e₁+e₂ | exponent 1, sign −1; on simples exponent 0, sign +1 | Unsigned permutation is wrong on nonsimple root. |
| `epsilon_action` | A₂ flip, a=e₁,b=e₂ | LHS (+1)(−1)=−1; RHS (+1)(+1)(−1)=−1 | Sign correction verifies. |
| `coverLift`, multiplication | Same a,b | lift of product has root a+b and sign −1; product of lifted simples also sign −1 | Multiplication-compatible. |
| `coverLift_simple` | A₂ | (e₁,1)↦(e₂,1) | Pinning retained. |
| `coverLift_comp` | Flip composed with itself | nonsimple sign (−1)(−1)=1; root a returns to a | Identity composite. |
| `coverLift_iterate` | Flip order 2 | iterate²(a,s)=(a,s) | Order test. |
| `signedLinearMap`, equivariance | A₂ | H₁↦H₂,E₁↦E₂,E₁₂↦−E₁₂ | Explicit coefficients computed. |
| `signedLinearMap_root` | E₁₂ | coefficient −1 on fixed root | Same sign as cover. |
| `signedLinearMap_bracket` | [E₁,E₂] | φ(E₁₂)=−E₁₂=[E₂,E₁] | Wrong unsigned action fails. |
| `signedLieEquiv`, iterate | A₂ | φ² on H₁,E₁,E₁₂ gives H₁,E₁,E₁₂ | Involution on basis. |
| `VertexOrbit`, `orbitVertices` | A₃ reversal | vertex orbits {1,3},{2}, cardinalities 2,1 | Empty index gives no orbits. |
| `RootOrbit`, `cycleCoefficient` | A₂ | simple two-cycle coefficients 1,1; nonsimple one-cycle coefficient −1 | Positive vs negative cycle distinguished. |
| `cycleCoefficient_succ` | Nonsimple A₂ root | c₀=1,c₁=−1,c₂=1; c₂=c₁·(−1) | Recursion orientation correct. |
| `monodromy`, `orbitRootVector` | A₂ | simple orbit monodromy +1 and vector E₁+E₂; nonsimple monodromy −1 | Negative integral cycle contributes no vector. |
| `fixedIntegralBasis`, cartan API | A₂ | H₁+H₂; rank 1 Cartan part | Model only for admitted basis. |
| `fixedIntegralBasis`, root API | A₂ | E₁+E₂ and F₁+F₂; total rank 3 | Model only; negative cycles omitted integrally. |
| `signedPermutation`, fixed iff | One coordinate, sign −1 | over ℤ: x=−x iff x=0; over F₂ all x satisfy it | Ring-general law captures torsion. |
| `cycleDefect` | Same | defect 1−(−1)=2; kernel over ℤ is 0, over F₂ is F₂ | Do not invert 2 silently. |
| `signedCycleEquiv`, evaluation | Two-cycle signs −1,−1 | fixed vectors (a,−a); defect 0 and reconstructed values a,−a | Model only for admitted equivalence. |
| `orbitD`, `orbitFactor`, one-or-two theorem | A₂ flip; A₃ reversal | A₂ d=1,factor=2; A₃ d=2,factor=1 | Adjacent-orbit correction needed. |
| `foldedCartan` | A₃; A₄ | A₃ [[2,−2],[−1,2]]; A₄ [[2,−1],[−2,2]] | Transpose/orientation distinguished. |
| `simpleRoot`, folded H/E/F | A₂ | E=E₁+E₂,F=2(F₁+F₂),H=2(H₁+H₂) | Integral frame index 4 in fixed lattice. |
| `folded_HE` | A₂ | [2h,e]=2e; Cartan entry 2 times e | Rescaling correct. |
| `rationalLieEquiv`, `FixedQ` | A₂ | fixed rational dimension 3; integral frame determinant 4 becomes invertible | Rational and integral statements differ. |
| `fixedH`, `fixedE`, `fixedF` | A₂ | vectors 2h,e,2f are fixed; φ values identical | Subtype membership specification checked. |
| `foldedSystem` | A₂ | [E,F]=H; [H,E]=2E; [H,F]=−2F | Serre system rank one. |
| `foldedMap_E` | A₂ | simple positive generator maps to e | Model only for constructed map. |
| `foldedMap_H` | A₂ | simple coroot maps to 2h | Model only; not h. |
| `foldedMap_F` | A₂ | negative generator maps to 2f | Model only; not f. |
| `foldedMap_surjective` | A₂ over ℚ | h=(1/2)H,f=(1/2)F, hence image dimension 3 | Fails integrally; theorem correctly rational. |
| `foldedMap_injective`, `foldedEquiv` | A₂ | three independent images, rank 3, kernel dimension 0 | Rational example. |
| Exceptional folding counts | D₄ triality; E₆ reversal | D₄: 24 roots, 12 positive-sign cycles+2 Cartan=14; E₆:72 roots,48+4=52 | Recomputed using Gram reflections and stated signs. |
| Folding arbitrary-ring base change | A₂; A₄ modulo 2 | A₂ fixed dimension 5 vs integral rank 3; A₄ dimension 14 vs rank 10 | Negative cycles contribute 2-torsion; blanket base-change isomorphism false. |
| `fixedCartan`, kernel identity | γ=[[0,−1],[1,−1]] | det(γ−1)=3; ker over ℤ=0, ker over F₃=span(1,−1) | Inverting only 2 insufficient for full Y. |
| `fullAction`, bracket law | Root-free Y=ℤ² with γ above | all brackets 0; action sends (1,0)↦(0,1), both bracket sides 0 | Central action retained instead of discarded. |
| `fullAction_iterate` | Same γ | γ³=I; γ≠I | Finite-order condition checked. |
| `exists_map_diagonalization` | γ−1; zero 1×1 matrix | Smith entries 1,3; zero matrix entry 0 | Kernel has torsion contributions, including zero diagonal. |
| `smithKernelEquiv`, reconstruction | diag(1,3), A=F₃ | kernel {(0,a)}; reconstructed vector (0,a), dimension 1 | Model only for admitted equivalence. |
| Full reductive frame | Root-free rank 1; A₁ | ambient ranks 1 and 3; A₁ root-zero vectors fail ambientBasis | Stronger frame excludes R04's wrong operands. |
| `integralSubring`, `IntegralForm` | Root-free rank 1 | contains 1,H,binom(H,2); binom(H,2)=(H²−H)/2 | Full toral lattice retained. |
| `rootDividedPower` | E, indices 0,1,2 | values 1,E,E²/2; E^(1)E^(1)=2E^(2) | Factorial convention correct in rational ambient algebra. |
| `toralBinomial` | H=3, indices 0,1,2 | values 1,3,3 | Not ordinary powers 1,3,9. |
| `PBWExponent`, ordered monomial | A₁ exponents (1,0,1); zero rank | F·E; empty product 1 | Negative–toral–positive order fixed. |
| `integralPBWBasis`, value API | A₁ zero exponent and (1,0,1) | intended basis values 1 and FE | Model only; admitted basis R03. |
| `specializedPBWBasis`, value API | A=F₂; A=zero ring | 1⊗FE; zero-ring tensor module=0 and 1⊗FE=0 | Arbitrary-ring specialization includes zero ring. |
| `integralProductCoefficients`, specification | A₁ E·E; E·F | coefficients 2 at E^(2); EF=FE+H | Integral coefficients do not become division by 2 in F₂. |
| `frame_lie_generates` | A₁; root-free rank 1 | span{E,F,H} dimension 3=L; span{H} dimension 1=L | Ambient-basis hypothesis excludes zero frame. |
| `rationalFormComparison` | Root-free rank 1 | rational span of binom(H,n) contains H²=2binom(H,2)+H | Native rational comparison, not integral polynomial basis. |
| `identityIdeal` | Gₘ | ker counit=(t−1); counit(t)=1 | Identity support, not ideal (t). |
| `finiteOrderDistributions` | Gₐ, evaluation δ₀ and first derivative D | δ₀ kills (x), D kills (x²), D(x)=1; D²(x²)=2 | Orders add under convolution. |
| `JetDual` | Gₘ, n=0,1 | quotient ranks 1,2; dual dimensions 1,2 | n+1 convention correct. |
| `jetDualToDistributions`, apply | n=1, derivative at identity | t↦1, (t−1)²↦0 on both sides | Pullback formula correct. |
| `jetDualToDistributions_injective` | basis {1,t−1} | evaluations (a,b) determine functional uniquely | Quotient surjectivity gives injectivity. |
| `exists_jetDual_preimage` | derivative at identity | n=1 and φ(a+b(t−1))=b recover D | Witness constructed in example. |
| `rationalDistributionAction`, apply | Gₘ weight 3 line | D(t³)m=3m; coefficient contraction also 3m | Reflexivity probe closes API statement. |
| `rationalDistributionAction_on_weight` | Same; characteristic 3 | result 3m over ℚ; 0 over F₃ | Characteristic reduction correct. |
| Constructor existence (sample) | Root-free X=ℤ; A₁ | dimensions rankX+roots=1+0=1 and 1+2=3 | Conrad supports endpoint; route uncertified. |
| `SCRealizationInput` (R04) | A₁, standard 2-dimensional module, e±=0 | all eigenvalue equations 0=0; weights span ℤ; root point I | Wrong model satisfies fields. |
| `canonicalSCInput`, `coordinate`, `Points` | Intended A₁ vs zero-root operands | intended SL₂ dimension 3; wrong toral closure dimension 1 | Admitted choice cannot certify intended value. |
| `rootPoint`, `torusPoint` | A₁ standard model, u=1,s=2 | x₊(1)=[[1,1],[0,1]], t=diag(2,1/2) | Zero-root model instead gives x₊(1)=I. |
| `torusPoint_conj_rootPoint` | Same | tx₊(1)t⁻¹=x₊(4); wrong model gives I=I | True specialization, not constructor test. |
| Integral chart / pinning | SL₂ over F₂[ε]/ε² | x₊(ε)≠I, parameter ε recovered; doubled root generator maps 1 to I | All-prime scheme-level requirement retained. |
| Generated points vs quotient scheme | SL₂→PGL₂ over ℚ | diag(2,1) has determinant class 2, no SL₂ rational lift | Must not assert surjectivity on arbitrary field points. |
| Frobenius distribution map | p=2, root indices 1,2 | index 1→0; E^(2)→E^(1) | Divisibility by p, no ordinary factorial division. |
| Frobenius kernel dimension | SL₂ and Gₘ, p=2,r=1 | dimensions 2³=8 and 2¹=2 | Full toral rank counted. |
| Toral idempotent μ₀ | Gₘ,p=3, weights 0,1,2,3 | binom(weight−1,2) mod3 =1,0,0,1 | Selects pX, not just weight zero. |
| Corner section unit | Same | φ(1)=μ₀ acts 0 on weight 1, while identity acts 1 | Not unital into full Dist(G). |
| Contraction, nonmonoidality | p=3, weights 1 and 2 | each contraction dimension 0; tensor weight 3 contracts to weight 1, dimension 1 | README's negative control correct. |
| Weyl/dual-Weyl/simple distinctions | SL₂, char2, degree2 | Sym² dimension3; span{x²,y²} dimension2; quotient dimension1 | Characteristic-zero semisimplicity cannot be imported. |
| Binary-form characteristic exercise | SL₂, char3, degree4 | dimension5; Lucas nonzero coefficients at 0,1,3,4 give simple submodule dimension4 | Degree/rank distinction retained. |
| Ordinary vs contravariant dual | Gₘ weight1 | ordinary dual weight−1; transpose-style contravariant dual weight1 | Convention not interchangeable. |
| Peter–Weyl coefficient coproduct | SL₂ matrix coefficient c₁₁ | Δc₁₁=c₁₁⊗c₁₁+c₁₂⊗c₂₁; x₊(2)x₋(3) gives 1+6=7 | Multiplication orientation checked. |
| SL₂/U chart transition | a=2,c=3,b=14,d=43/2 | ad−bc=1; u_a=7, u_c=43/6; difference 1/(ac)=1/6 | Sign in section change is −1/6. |
| `OrderedPlane`, `permute`, action | n=0; n=2,z=(1,3) | n=0 singleton; swap sends (1,3)↦(3,1), swap² fixes z | Injectivity excludes (1,1). |
| `UnorderedPlane`, `forgetOrder`, base | n=2 | (1,3),(3,1) give one quotient point; base (0,1) distinct | Correct unordered carrier. |
| `centroid`, `CenteredPlane` | n=2,z=(1,3); n=0 | centroid2; centered(−1,1) sum0; n=0 centroid0 | n>0 required for product decomposition. |
| `centerHomeomorph_fst` | Same n=2 | intended first component2=centroid | Model only for admitted homeomorphism. |
| `centerHomeomorph_snd` | Same | intended second component (−1,1)=z−2 | Model only. |
| `centerHomeomorph_symm` | c=2,z₀=(−1,1) | reconstructed (1,3); at n=0 source point vs ℂ factor not bijective | Positive-n hypothesis excludes failure. |
| `planeBraidEquiv`, `planePureEquiv` | n=0,1,2 | groups 1,1,ℤ; pure subgroup at n=2 is 2ℤ≅ℤ | Model only for admitted comparisons. |
| `continuous_forgetOrder`, ordered cover | n=2 | quotient locally identifies two disjoint orderings; fibre cardinal2 | Quotient map continuous; no global section. |
| `orderedCover_pi1` | n=2 | π₁ map ℤ→ℤ is m↦2m | Pure braid inclusion normalization. |
| `planeMonodromy`, endpoint | n=2 half twist; n=3 two adjacent twists | transposition; endpoints compose as (123), reverse order gives (132) | Inverse endpoint convention must be maintained. |
| `permutation_extension_nonsplit` | n=2 | section would require 2x=0 in ℤ and x odd; only x=0 satisfies first | No section; n≤1 excluded. |
| `SimpleSpectrum`, `matrixSpectrum`, charpoly | diag(1,3); repeated eigenvalue1 | polynomial (X−1)(X−3), distinct multiset {1,3}; repeated case not separable | Model only for admitted spectrum map. |
| `continuous_matrixSpectrum` | diag(1+t,3−t), small real t | roots move to 1+t,3−t; collision t=1 excluded | Intended map continuous locally. |
| `Coordinate`, `PointGroup`, tangent topology | Gₘ over ℂ | points ℂˣ, tangent ℂ, adjoint scalar1 | Classical finite-type topology, not discrete topology. |
| `adjoint`, `adjointAction` | SL₂,t=diag(2,1/2) | E↦4E,F↦F/4,H↦H | Same normalization as layer2. |
| `TorusLie`, `TorusPoints`, `FlagCoset` | SL₂ diagonal torus | toral dimension1; G/T dimension2; centralizer of H is T | Maximality matters. |
| `TorusRegular` | tH in sl₂ | t≠0 centralizer Lie dimension1; t=0 centralizer dimension3 | Zero excluded in rank1. |
| `RegularSemisimple`, `AdjointQuotient`, spectral base | sl₂ | eigenvalues ±t, invariant t²; regular base ℂˣ | Nilpotent nonzero element not admitted by adjoint-translate definition. |
| `spectralProjection`, `torusInclusion` | H and −H | both project to invariant1; tH includes as itself | Weyl quotient, not identification t=−t before quotient. |
| `Cameral` | sl₂ point with eigenvalues ±2 | two compatible toral choices ±2H | Pullback has Weyl fibre2. |
| `continuous_spectralProjection` | sl₂ torus line | t↦t² continuous, t≠0 | Native quotient topology compatible. |
| `cameralEquiv_apply` | (gT,tH), g=1,t=2 | intended first coordinate2H=Ad(1)(2H) | Model only for admitted equivalence. |
| `cameralEquiv_second` | Same | second coordinate2H | Model only. |
| `simplyConnected_flagCoset` | SL₂/T | deformation retract S², π₁=0 | Finite Weyl group is not this π₁. |
| `spectralFundamentalEquiv`, induced-map API | sl₂ regular locus→ℂˣ | π₁=ℤ on both; projection induces generator↦generator | Model only for admitted comparison. |
| `ComplexPairing`, `RegularArrangement` | A₁; root-free | A₁ regular ℂˣ; root-free ℂʳ | Root-free π₁=1, not an artificial rank-one braid group. |
| `arrangementAction`, smul API | A₁ reflection | z↦−z; 2↦−2 | Preserves regular locus. |
| `ArrangementBase`, projection | A₁ | invariant z²; 2 and −2 both map4 | Degree-two quotient. |
| `arrangementArtinEquiv`, Weyl projection | A₁ | Artin group ℤ, Weyl C₂; m↦m mod2 | Model only for admitted equivalence. |
| `baseChangeWeylEquiv_reflection` | A₁, ℝ→ℂ | real reflection −1 maps to complex reflection −1 | Base change preserves action sign. |
| `arrangementMonodromy_endpoint` | A₁ loop winding once in quotient | lift starting1 ends−1; monodromy nontrivial element of C₂ | Endpoint inverse is same only in this rank-one test. |
| `rootMonodromy` | A₁ | nontrivial Weyl element interchanges α and −α | Root permutation faithful here. |

The signed-folding counts above were recomputed from the integral Gram matrices and the exact reversal-sign formula. Besides D₄/E₆, this gives A₂: 6 roots, fixed rank 3 and characteristic-2 fixed dimension 5; A₃: 12 roots, fixed rank 10; A₄: 20 roots, fixed rank 10 and characteristic-2 dimension 14. The zero diagram gives no roots and zero-dimensional Lie carrier, while its central sign cover still has two elements. These checks support the README's refusal to invert bad primes or identify all integral fixed modules by a rational type dictionary.

## Not verifiable

- The wholly admitted bases, homeomorphisms, equivalences and representation/lattice family have no evaluable implementation. Their surrounding equations are specifications, not independent verification of the objects. In particular, the exact integral closure/chart construction in 9B.1 is not certified by the general existence source. R03–R05 must be repaired before the Lean files can function as acceptance tests.
- The bibliography has no `sources.toml`. The bibliography and identifiable mathematical paper citations were submitted to the sources service. The service could not supply legal text for Jantzen, SGA3, Dipper–Du, Carter, Gassmann, Brieskorn or Salvetti from the bibliographic citations. For Conrad–Gabber–Prasad it reached the Cambridge landing page without an open file; for Lang it reached JSTOR; for Steinberg it reached the AMS memoir landing page. These failures and attempted locations are retained in the job's missing-reference record. The review is completed, not parked pending those texts.
- Waterhouse, Borel, Springer, Howlett–Lehrer and Serre resolved only as uncertified publisher/paywall citations. I did not bypass access restrictions or request those settled citations again. Their precise claims are not certified from the inaccessible primary text. Lang's stated theorem was independently checked in both legal Milne versions as described above; this does not certify every assertion in Lang's original paper.
- README line 1503 refers to uncertain source punctuation/proof announcements and line 2028 to an ambiguous divisibility phrase without identifying an exact passage. There is no verifiable locator for either. I have not attributed an error to an unidentified source.
- General existence/classification and the finite-instance table do not certify every proof route at arbitrary base rings. In particular, constructing integral inverse chart maps and proving the specialization comparison cannot be replaced by checking field points or by the pinned flatness theorem.
- Open-work searches covered the provided checkouts and results available through the authorized roadmap index. Ownership against open pull requests whose contents were not supplied or resolved was not checked; no absence claim is inferred from that limitation. For IntegralHeckeAndGaloisDeterminants the index supplied its new-roadmap text; its reciprocal dependency is supplementary evidence, while R02 already has a complete witness on main.
- The source sample and mathematics table are substantially broader than a successful elaboration, but are not a formal proof of the roadmap. No accepted verdict is being inferred from the passing build or from unsuccessful padding probes.

## Source issues

- **Misprint** in dudas-michel at Proposition 8.9 proof, printed p. 32 (dudas-michel line 1477): the source says the second factor of the decomposition of U∩Q is again U∩Q; it should be U∩V; affects the proof.
