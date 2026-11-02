# Review of ComplexKahlerGeometry (pull request #1398 at b8db421)

**Verdict:** needs changes

## R01 (P1) — Break the two-way supply with PseudodifferentialOperators

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:45–52, 574–578, 1680–1696`: “after K5a's initial density-line construction”.

Claim: K5a supplies the density bundle to P1.0 and subsequently consumes P1.0's density transpose, symbols and operator core. This is a roadmap-level cycle even though its individual targets can be interleaved.

Witness: `TauCetiRoadmap/PseudodifferentialOperators/README.md:78–85, 389–412` explicitly consumes K5a's density bundle; CKG consumes that same P1.0. The two edges are CKG → PDO → CKG.

Repair: put the shared density-line construction with an earlier density/bundle owner, and move PDO's later CKG-dependent analysis to a Part II after CKG. Keep the operator core before CKG. Verify both whole-roadmap edges, not only the order of subtargets. The density-transpose example P=∂ₓ on dx must still give Pᵗ=−∂ₓ.

## R02 (P1) — Break the two-way supply with RealAnalyticGeometry

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1368–1383, 1697–1699, 1717–1721`: “RealAnalyticGeometry R5 … supplies the compatible triangulation in K6”.

Claim: the analytic-cycle construction consumes R1/R5 after supplying the local complex geometry and estimates used to build those sections. A subtarget ordering does not meet the single-direction supply contract.

Witness: main `TauCetiRoadmap/RealAnalyticGeometry/README.md:173, 678, 1028–1030` consumes CKG K3/K5a/K5b.0/K6.0; CKG K6.1 consumes its R5. Both directions are explicit.

Repair: retain CKG's existing early complex-analytic supply and put the RAG-dependent triangulation/integral-cycle extension in a CKG Part II after RAG, with the boundary recorded by section. The nodal-curve example below still needs two positive regular-component generators and no singular 2-cell.

## R03 (P1) — Supply the relative integration comparison actually used by K6

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1358–1360, 1406–1431`: “DG8.4's open-pair cone” and “DG9.3's compactly supported relative integration formula”.

Claim: these inputs are attributed to DifferentialGeometry as existing contracts, but the permitted main copy does not state them.

Witness: main `TauCetiRoadmap/DifferentialGeometry/README.md:845–875` states absolute chain integration/de Rham comparison and Poincaré pairing duality. Neither its README nor Suggested file contains the cited open-pair or relative fundamental-class integration comparison.

Repair: reconcile ownership with DeRhamCohomologyAndDuality DR.3.8/DR.4.4, and place the consuming extension after its actual supplier. Declare any missing integration/naturality contract as a precise supplier gap rather than attributing it to main DifferentialGeometry. Test a disk relative to its boundary (or an open collar): integration of dx∧dy equals relative evaluation, while the absolute top class is zero.

## R04 (P1) — Update the variational contract to its actual operator

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1049–1066`: “CompactFormPair.operator” and “toRealBilin”.

Claim: K5a consumes named supplier interfaces which are absent from the supplied VariationalMethods head.

Witness: `TauCetiRoadmap/VariationalMethods/README.md:1054–1067` explicitly says there is no separate operator declaration. Section 5.1 uses UO-D06's `closedFormOperator`; 2.3 supplies S_α/F_α, with 2.2's real comparison. `toRealBilin` is absent there and in Suggested.

Repair: cite current §§2.2–2.4, 3.1, 4.3, 5.1–5.3 and their actual graph, solution and domain contracts; remove the nonexistent names. The scalar pair q(v,w)=2 conj(v)w must represent multiplication by 2, with shift-1 inverse 1/3. The resolver's two heading warnings are not themselves evidence of missing mathematics: §§2.2 and 5.1 do exist under their new headings.

## R05 (P2) — Remove admitted constructions from the acceptance test

Location: `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:77–79, 139–175, 224–237, 287–354, 369–402, 428–437, 489–492`.

Claim: twenty definitions/instances contain `sorry`, including the Nijenhuis tensor, test-space topologies, chart extension maps and a Bessel-space equivalence. Their dependants are not statements on constructed pinned objects.

Witness: `nijenhuisTensor` has no body; `bundleTestTopology` admits an entire topology; `complexBesselToL2` admits the entire equivalence. The worker reports `sorry-data=20`.

Repair: delete these constructions and declarations depending on them from Suggested; describe the unavailable carriers and affected headlines in its module docstring. Keep only genuinely simple real definitions needed for statable headlines. On the point bundle, the intended topology is the usual topology on ℂ; an admitted topology alone does not distinguish it from the indiscrete one. Merely keeping the subsequent admitted continuity assertions is not a construction.

## R06 (P2) — The arbitrary localization tuple is not the bundle Sobolev space

Location: `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:363–416`, especially “localize : Fin q → …” and the `hclosed` argument.

Claim: the signature replaces the README's geometric finite atlas, partition and reconstruction theorem by arbitrary continuous linear maps; completeness then assumes the closedness that the roadmap promises to prove.

Witness: take the trivial line on a point, q=0. The displayed tuple carrier has one element and norm 0; geometric H^s is ℂ, with the constant section 1 of norm 1. Injectivity is not assumed by its definition.

Repair: delete this surrogate and its API from Suggested, and name the geometric Sobolev construction/completeness headline as unavailable at the pins. In the eventual geometric construction require the actual localization/reconstruction data with Σχᵢ²=1. This excludes the empty atlas on a nonempty point; the empty base still correctly gives the zero space.

## R07 (P2) — Preserve the promised open-set finite-regularity comparisons

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1087–1113`; `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:54–62`.

Claim: the README promises actual generic-form comparisons for C¹/C² coefficients on arbitrary open subsets. The Lean file instead uses bespoke coefficient operations on globally C∞ functions on ℂ and states no comparison with the generic star or codifferential.

Witness: u(x+iy)=|x|³ is C² but not C³. Its Hodge coefficient is −6|x|; the promised C² statement applies, but the Lean C∞ hypothesis excludes it. DG0.4's `SmoothForm` also requires C∞.

Repair: keep finite-regularity statements on DG0.2's rough-form carrier with explicit C¹/C²-on-open-set hypotheses, and state the smooth restriction/comparison separately. For the Lean acceptance test, remove coefficient substitutes for unstatable generic-form headlines and name the missing star/form carriers in the docstring; any retained statable coordinate theorem must carry the actual open-set regularity. Recheck |x|³ and an empty open set.

## R08 (P2) — State the full parameter solver, which is statable now

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:205–258`; `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:11–21`.

Claim: the mixed smooth/holomorphic parameter solver is a deep named output of K2, but is absent from Suggested and its docstring's explanations.

Witness: a scratch declaration of the full solver elaborated with only `import Mathlib` and one `sorry`: arbitrary finite-dimensional smooth P, open Q⊆E over ℂ, open Ω⊆ℂ, joint `ContMDiffOn`, parameter `DifferentiableOn`, and the real-fderivative Wirtinger equation.

Repair: put that native-carrier existential statement in Suggested. It needs no new analytic operator, no assumed solution and no free predicate. Test f(p,q,z)=p q with real p: u=p q bar(z) has ∂̄_z u=p q and ∂̄_q u=0, including Q=ℂ\{0}. Separately enumerate the remaining headlines and each genuinely missing carrier in the module docstring.

## R09 (P3) — Use the allowed imports in both Lean files

Location: `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:1–9`; `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:1–3`.

Claim: Suggested has five Mathlib submodule imports, no `import Mathlib`, and imports another roadmap; the companion has three Mathlib submodule imports and no root import.

Witness: Suggested line 8 imports `TauCetiRoadmap.DifferentialGeometry.Suggested`. The gate reports `imports=1`, `mathlib-subimports=5`, `no-import-mathlib=1`; the companion independently violates the same form rule.

Repair: use one `import Mathlib` followed only by genuinely used pinned `TauCeti.*` modules. Remove roadmap-carrier-dependent declarations as in R05–R07 rather than importing their prototypes. Re-elaborate the resulting acceptance test under defaults.

## R10 (P3) — Delete API and example padding

Location: `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:55–66, 106–116, 275–276, 360–361, 383–416, 494–507`; `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:25–35, 49–51, 65–67`.

Claim: these are definition algebra, native API wrappers, evaluation laws, boundary cases or computed Checks rather than acceptance headlines.

Witness: `bundleSobolev_norm_sq` is one `PiLp.norm_sq_eq_of_L2`; `bundleSobolevComplete` is one closed-subspace completeness application; three apply laws are `rfl`; `complexBesselToL2_norm` is `norm_map`. The companion admits the single value −4.

Repair: delete this padding from Suggested (and from the companion under the same rule); keep the mathematical statements/Checks in the README. This includes `complexBesselToL2_zero`, `memSobolev_iff_bundled`, the two dbar-function algebra facts, the localization/restriction evaluation wrappers and the companion's four small proved identities and squared-distance example. No request to prove them in place. Seventeen admitted Suggested targets and three companion targets were tried with single `simp`, `rfl` or `infer_instance` alternatives; none closed. That does not rescue declarations independently disqualified as API/Check padding.

## R11 (P3) — Supply the required per-definition Checks and dependency structure

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1–10, 316–327, 658–726, 1654–1721`.

Claim: the whole folder lacks the prescribed readable specification structure: no opening Summary label, Scope and ownership, Exact supplier contracts or How to read the build; no `*Needs:*` lines, no `**Checks.**` lists, and no layer-ending Examples/Dependencies subsections.

Witness: literal searches find zero `*Needs:*` and zero `**Checks` occurrences. For example, the holomorphic-stalk definition has prose API, but no three discriminating Checks; its zero-dimensional germ is ℂ, whereas at positive dimension the coordinate germ is a nonunit.

Repair: preserve the existing mathematical scope while organizing it into the prescribed layers; attach explicit APIs, at least three discriminating Checks per definition and item-specific dependencies. For the stalk, use the point, the coordinate germ and a unit germ 1+z; for the germ field, distinguish z⁻¹ from exp(1/z).

## R12 (P3) — Add exact locators for the sampled claims

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:213–225, 316–377, 519–562, 658–726, 1087–1268, 1440–1507, 1723–1732`.

Claim: almost all seeded targets have no theorem/section/page locator at the claim. The final book-level references cannot certify the specific parameter, finite-order distribution, Montel, component assembly or planar assertions.

Witness: K5a.DistributionLocalStructure and K5a.SmoothSectionMontel have no source locator. K8 has a usable Sakane pointer, but its central-subgroup argument starts on printed p.189, and delegates the lattice input to another text.

Repair: attach precise legal-source locators, distinguishing a cited theorem from a new consequence with its proved inputs. Use the verified Demailly and Sakane locations below where applicable; source the remaining extensions separately. Add the references manifest without copying source text. The sourced fixed-rank theorem must be explicitly extended by the finite-component proof for ranks (0,1,2), not presented as a quotation of a varying-rank theorem.

## R13 (P3) — Replace historical supplier links and pull-request citations

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:17–53, 199–200, 345, 472–475, 572–573, 1049–1065, 1182, 1368, 1517–1526, 1579, 1627, 1654–1712`.

Claim: supplier links freeze obsolete commits, and suppliers are repeatedly identified by pull-request numbers.

Witness: the gate reports 29 commit-pinned roadmap links. Lines 17–29 identify ComplexManifolds/ComplexTori by numbered proposals; VariationalMethods' historical links lead to the interfaces corrected in R04.

Repair: use repository-relative/main links and roadmap names with their actual section/target locators. Resolve them against the allowed main/open copies; the current 5.1 contract must identify UO-D06's operator rather than the historical wrapper.

## R14 (P3) — Remove the HTML anchor residue

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1086`: `<a id="k5a-planar-hodge-signs"></a>`.

Claim: the explicit anchor violates the gate's residue rule.

Witness: `residue=1`, at that line.

Repair: replace the bold planar title with a normal Markdown subsection and use its generated anchor. Check that the document's existing mathematical content remains under that heading.

## R15 (P3) — Make declaration documentation and README names agree

Location: `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:11–21, 146–163, 275–303`; `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:5–19, 25–50`.

Claim: neither module has the required headline-and-missing-carrier docstring; many declarations lack mathematical docstrings, layer comments are absent, and Lean names are not all represented in the README.

Witness: `partialX`, `partialY`, `deltaOne_const` and `bundleSobolevComplete` occur as declarations but not as names in the README. `bundleTestTopologicalAddGroup` has no docstring.

Repair: after deleting R05–R10 material, document each retained declaration and list its name at the corresponding README target, use the required namespace/layer order, and explain every unstatable headline by its missing carrier. Do not populate the README with names of declarations being deleted.

## Verified sound

Read all 1,732 README, 510 Suggested and 69 companion lines, including inherited content. The diff adds planar content; no outside-folder edits or re-planning. No PR files changed. No copied passage, route-specific shortcut, algorithm, `set_option`, admitted example or stray source file found.

Gate: FAIL: `blob=29`, `sorry-data=20`, `residue=1`, `imports=1`, `mathlib-subimports=5`, `no-import-mathlib=1`, covered by R05/R09/R13/R14. All other counters are zero. Independent `lake env lean` runs on both originals exit 0: only 37/3 admission warnings, respectively; no prerequisite build needed.

The requested dependency command returned exactly:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

No UPWARD/CYCLE/moved line: R01–R02 are false negatives. Absence from the order is not a finding. No declared gaps cover R03–R04.

Signature audit: printed all 62 Suggested and 15 companion signatures. Suggested elaborated successfully; companion signatures printed in its probe. Nijenhuis drops completeness, finite dimension and T2; its comparison theorems retain them. Dbar retains its algebraic data. Sobolev has no geometric atlas/partition hypothesis (R06). Multipliers omit completeness; comparison/L² theorems retain it. No binder edits made.

Headline inventory: K1 Newlander–Nirenberg; K2 full mixed-parameter solvability, Dolbeault–Grothendieck and sheaf/Dolbeault comparison; K3 Weierstrass division/preparation, Noetherian/factorial local algebra, coherence, Nullstellensatz and Hartogs; K4 Chern uniqueness, Koszul–Malgrange and the flat connection/local-system equivalences; K5 smooth Laplace-type regularity/realization, real and Dolbeault Hodge theorems and Serre duality; K6 Kähler identities, ∂∂̄, Hodge decomposition, Hard Lefschetz/Hodge–Riemann and analytic-cycle integration/fundamental classes; K7 projective, torus and Hopf cohomology; K8 Nomizu/Sakane, Frölicher convergence/degeneration and Iwasawa comparison. R08 demonstrates one substantial omitted headline with a fully elaborated native signature. General type-form/Hodge/cycle headlines need constructed carriers absent from the permitted imports; the module docstring must identify these individually. The several-variable realification theorem is a legitimate nontrivial statement, not discharged by the tested one-tactic probes.

R08 reproducible native signature (successfully elaborated under defaults):

```lean
import Mathlib
open scoped Manifold ContDiff
namespace ReviewProbe
theorem mixed_parameter_solver
    {EP HP P E : Type*}
    [NormedAddCommGroup EP] [NormedSpace ℝ EP] [FiniteDimensional ℝ EP]
    [TopologicalSpace HP] (I : ModelWithCorners ℝ EP HP) [I.Boundaryless]
    [TopologicalSpace P] [ChartedSpace HP P] [IsManifold I ∞ P]
    [T2Space P] [SecondCountableTopology P]
    [NormedAddCommGroup E] [NormedSpace ℂ E] [FiniteDimensional ℂ E]
    (Q : Set E) (Ω : Set ℂ) (hQ : IsOpen Q) (hΩ : IsOpen Ω)
    (f : (P × E) × ℂ → ℂ)
    (hf : ContMDiffOn ((I.prod 𝓘(ℝ, E)).prod 𝓘(ℝ, ℂ)) 𝓘(ℝ, ℂ) ∞ f
      ((Set.univ ×ˢ Q) ×ˢ Ω))
    (hfhol : ∀ p z, z ∈ Ω → DifferentiableOn ℂ (fun q => f ((p,q),z)) Q) :
    ∃ u : (P × E) × ℂ → ℂ,
      ContMDiffOn ((I.prod 𝓘(ℝ, E)).prod 𝓘(ℝ, ℂ)) 𝓘(ℝ, ℂ) ∞ u
        ((Set.univ ×ˢ Q) ×ˢ Ω) ∧
      (∀ p z, z ∈ Ω → DifferentiableOn ℂ (fun q => u ((p,q),z)) Q) ∧
      (∀ p q, q ∈ Q → ∀ z, z ∈ Ω →
        (fderiv ℝ (fun w => u ((p,q),w)) z 1 +
          Complex.I * fderiv ℝ (fun w => u ((p,q),w)) z Complex.I) / 2 = f ((p,q),z)) := by
  sorry
end ReviewProbe
```

Pinned API audit (Mathlib `6b7abb3`, Tau Ceti `a91d3aa`; paths below are relative to the respective library repository):

| Opened declaration | File and line at the pin | Scope established |
| --- | --- | --- |
| `SmoothAlmostComplexStructure`, `square_neg` | `TauCeti/Geometry/Symplectic/Manifold/AlmostComplex.lean:67,74` | Actual smooth endomorphism, J²=−Id; it does not assert integrability. |
| `DifferentiableOn.analyticOnNhd_of_finiteDimensional` | `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:254,275` | Finite-dimensional complex domain, complete codomain, open set. |
| `TauCeti.analyticOnNhd_iff_differentiableOn_of_finiteDimensional` | same file:282 | Same open-set and scalar hypotheses. |
| `TauCeti.analyticAt_circleIntegral`, `analyticOnNhd_circleIntegral` | same file:331–350 | Joint analyticity near the parameter times the circle, not separate smoothness alone. |
| `ImplicitFunctionData.analyticAt_implicitFunction` | `TauCeti/Analysis/Analytic/Inverse.lean:124–134` | Joint implicit function via `.uncurry`, analytic left/right data, complete spaces. |
| `ImplicitFunctionData.contDiffAt_implicitFunction` | `Mathlib/Analysis/Calculus/ImplicitContDiff.lean:31–47` | Joint regularity, n≠0. This declaration is Mathlib's, not defined in the Tau Ceti file. |
| `smoothSheafCommRing` | `Mathlib/Geometry/Manifold/Sheaf/Smooth.lean:297` | Native sheaf on the chosen complex model; no substitute germ ring needed. |
| `smoothSheafCommRing.isUnit_stalk_iff` | `Mathlib/Geometry/Manifold/Sheaf/LocallyRingedSpace.lean:59` | Units are exactly nonzero evaluation; this alone is not Noetherianity. |
| `meromorphicOrderAt_eq_int_iff` | `Mathlib/Analysis/Meromorphic/Order.lean:97` | Requires `MeromorphicAt`; analytic factor nonzero at centre; punctured eventual equality. |
| `Distribution` | `Mathlib/Analysis/Distribution/Distribution.lean:165` | Real-test continuous dual with compact-convergence topology. |
| `TemperedDistribution` | `Mathlib/Analysis/Distribution/TemperedDistribution.lean:53` | Complex Schwartz tests, pointwise-convergence topology. The README correctly distinguishes it. |
| `TestFunction.continuous_iff_continuous_comp` | `Mathlib/Analysis/Distribution/TestFunction.lean:333` | Native LF universal property; bundle chart extension remains extra work. |
| `MontelSpace`, `ContinuousLinearEquiv.toCompactConvergenceCLM` | `Mathlib/Analysis/LocallyConvex/Montel.lean:45,103,123,127` | Native Montel means closed von Neumann bounded sets compact, without a barrelledness field; dual comparison also requires T1. |
| `BesselPotentialSpace.memSobolev_toDistr`, `MemSobolev.toBesselPotentialSpace` | `Mathlib/Analysis/FunctionalSpaces/BesselPotentialSpace.lean:77,299,305` | Existing bundled/unbundled conversion, explaining the wrapper padding. |
| `BesselPotentialSpace.toLpₗᵢ` | same file:250 | Existing real-order linear isometry equivalence, not new geometry. |
| `InnerProductSpace.instLaplacian` | `Mathlib/Analysis/InnerProductSpace/Laplacian.lean:141` | Trace of the real second derivative: positive coordinate sum, explaining the negative Hodge sign. |
| `TauCeti.isLocallyFiniteMeasure_riemannianVolume` | `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean:101` | The volume reference resolves; the stated finite-dimensional/metric/measure context must be supplied. |

Ownership: used `roadmaps grep`, pin and package-area searches. Read two main examples and completed OrthogonalL2Bases for shape. Retain CKG ownership of its parameter solver, local algebra, bundle distributions, Montel adapters and nilpotent comparison. DeRhamCohomologyAndDuality owns real comparisons and assigns complex-coefficient comparisons to CKG.

| Contract inspected | Resolved location | Result |
| --- | --- | --- |
| ComplexManifolds realification, orientation, sphere, quotients, holomorphic bundles | main `TauCetiRoadmap/ComplexManifolds/README.md:174` onward, Milestones 1–7; native-inventory lines 96–120 | Supplier exists. M7 specializes native complex `ContMDiffVectorBundle`; do not invent a competing mixin. |
| ComplexTori fixed torus | main `TauCetiRoadmap/ComplexTori/README.md`, Milestone 1 | Appropriate quotient/descent owner; CKG's Hodge computation is a distinct output. |
| DifferentialGeometry forms/integration/de Rham | main `TauCetiRoadmap/DifferentialGeometry/README.md:285–324, 845–875, 923–930` | Real/complex coefficient and volume boundaries resolve; relative contracts fail R03. |
| SmoothBundlesConnections metric L² and operations | main `TauCetiRoadmap/SmoothBundlesConnections/README.md:559–864`, B3–B6 | L² is measure-parametrized; density and scalar/complexification comparisons are genuine inputs. Lines 57–70 prohibit using CKG as its supplier. |
| GlobalHolomorphicFunctions GH0/GH2/GH5.1 | supplied head `TauCetiRoadmap/GlobalHolomorphicFunctions/README.md:953–985, 1228` onward, `1925–1956` | Fixed finite-rank approximation and planar exactness are supplied; K2's mixed parameter result is a new consequence. |
| PseudodifferentialOperators P1.0 | supplied head `TauCetiRoadmap/PseudodifferentialOperators/README.md:151–491` | Operator core exists; density dependence creates R01. |
| VariationalMethods | supplied head `TauCetiRoadmap/VariationalMethods/README.md:452–592, 839–967, 1054–1067` | Finite sums and spectral contracts exist; names drift as in R04. |
| AlgebraicTopology projectivization/CW/fundamental classes | main `TauCetiRoadmap/AlgebraicTopology/README.md:755,789–822`, Stage 6.3 | Generic quotient topology includes ℂ even though its own chart example is real; no missing-complex-topology finding. |
| RealAlgebraicGeometry analytic inversion | `Completed/RealAlgebraicGeometry/README.md:479,519–540` | Completed supplier and native analytic inputs; not a new CKG inversion theorem on model spaces. |
| RealAnalyticGeometry R1/R3/R5 | main `TauCetiRoadmap/RealAnalyticGeometry/README.md:173,678,1019–1030` | Named sections resolve; whole-roadmap cycle R02 remains. |
| LieGroupoidsPoisson G1.3 | supplied head `TauCetiRoadmap/LieGroupoidsPoisson/README.md:636–686,85–90` | All-degree CE core exists. It explicitly avoids consuming CKG, so CKG's description of it as building the J-specific dictionary needs updating with R13. |
| DGFloer filtered complexes | main `TauCetiRoadmap/DGFloer/README.md:190–218,382–404` | Native spectral-object extension is the supplier, not a new spectral-sequence carrier. |
| GeometricTopology triangulation carriers | main `TauCetiRoadmap/GeometricTopology/README.md`, Layer 11 | Polyhedral/star/link work is distinct from K6's local-homology comparison; not a proof of analytic triangulation. |

The table retains 169 README computations, including the sampled targets, headline families and finding witnesses. The 77-declaration audit is summarized above. “Pass” concerns the instance, not a general proof. Admitted constructions have intended values, not evaluations of `sorry`.

| Statement | Instances tried | Values computed on each side | Result | Change/action |
| --- | --- | --- | --- | --- |
| Conventions: J, eigenspaces | J(z)=iz; v=1 | J²1=−1; P₊1=(1−iJ1)/2=1; P₋1=0 | Pass | — |
| Conventions: dᶜ and ddᶜ | u=x²+y² | dᶜu=2x dy−2y dx; ddᶜu=4 dx∧dy=2i∂∂̄u | Pass | — |
| Conventions: Hermitian slots | u=1,v=i on ℂ | h(1,i)=i=g(1,i)+iω(1,i); h(i,1)=−i | Pass | — |
| Conventions: h_T versus complexified g | v=∂z=(∂x−i∂y)/2 | g_C(bar v,v)=1/2; h_T(v,v)=1 | Pass | — |
| Conventions: source tensor conversion | u=1,v=i | h_src,tensor(1,i)=−2i; h_src,native(1,i)=2i; fundamental form=2ω | Pass | — |
| K1 complex orientation | multiplication by 1+i | real determinant=2=∣1+i∣²>0; conjugation has determinant −1 | Pass | — |
| K1 holomorphic differential criterion | φ=z and φ=bar z | φ_barz=0 and 1; pullback dz=dz and dbarz, respectively | Pass | — |
| K1 complex scalar action on forms | α=dx,c=i | (iα)(∂x)=i; d(iα)=0=i dα | Pass | — |
| K1 wedge scalar compatibility | α=dx,β=dy,c=i | (iα)∧β=i dx∧dy=α∧(iβ) | Pass | — |
| K1 coefficient conjugation | c=i,α=dx | conj(iα)=−i dx=conj(i)conj(α) | Pass | — |
| K1 implicit function | G(z,v)=v²+z near (0,1) | F(z,w)=sqrt(w−z); F(0,1)=1; G(z,F)=w; D_vG=2 | Pass | — |
| K1 submanifold/normal sequence | zero locus z₂=0 in ℂ² | tangent dimension=1; normal dimension=1; 1+1=2 | Pass | — |
| K1 Nijenhuis tensoriality/skew | standard constant J, coordinate X,Y | all brackets=0; N(X,Y)=0=−N(Y,X) | Pass | — |
| K1 N and ∂̄² sign | (0,1) X,Y with B=[X,Y]^(1,0) | N(X,Y)=−4B; ∂̄²f(X,Y)=df(B)=−∂f(N)/4 | Pass | — |
| K1 conjugate N and ∂² sign | (1,0) X,Y with B=[X,Y]^(0,1) | N(X,Y)=−4B; ∂²f(X,Y)=df(B)=−∂̄f(N)/4 | Pass | — |
| K1 projection identity for N | N(X,Y)=a, N(JX,Y)=−Ja | N(P₋X,P₋Y)=(a−iJa)/2=P₊a | Pass | — |
| K1 Newlander–Nirenberg | standard ℂⁿ; nonintegrable B≠0 above | N=0 with standard atlas; N=−4B≠0 excludes integrable atlas | Pass | — |
| K2 ∂/∂̄ squares and anticommutation | f=z bar z | ∂f=bar z dz; ∂̄f=z dbarz; ∂∂̄f=dz∧dbarz=−∂̄∂f | Pass | — |
| K2 parameter Cauchy–Green [sample] | fixed χ; f=pq, p real | T(χpq)=pqTχ; ∂p gives qTχ; ∂̄q gives 0; ∂̄z gives pqχ | Pass | — |
| K2 full parameter solver | Ω=ℂ,Q=ℂ×,f=pq | u=pq bar z; ∂̄z u=pq=f; ∂̄q u=0 | Pass; absent in Lean | R08 |
| K2 shell approximation | tail seminorm εⱼBⱼ≤2⁻ʲ | sum from j=N+1 ≤2⁻ᴺ; fixed initial shells finite | Pass | Keep operators independent of parameters. |
| K2 local Dolbeault exactness | α=dbarz, q=1; q=0 | ∂̄bar z=α; constant 1 is a q=0 cocycle without degree −1 primitive | Pass | — |
| K2 holomorphic H^(p,0) | p=0, f=z versus bar z | ∂̄z=0; ∂̄bar z=dbarz≠0 | Pass | — |
| K2 fine sheaf/Čech comparison | two-set trivial cocycle c₁₂=1 | b₁=1,b₂=0 gives b₁−b₂=1; empty cover on empty space gives 0 | Pass | — |
| K2 bundle Dolbeault comparison | point, E=ℂʳ | H⁰=ℂʳ on both sides; H^q=0 for q>0; r=0 gives 0 | Pass | — |
| K2 compact holomorphic functions | two disjoint compact connected components | values (0,1) locally constant, not globally constant; connected case dimension 1 | Pass | — |
| K3.0 holomorphic/analytic/realified | f(z₁,z₂)=z₁z₂ | complex derivative=(z₂,z₁); real polynomial analytic; all descriptions agree | Pass | — |
| K3.0 separate holomorphy | f=z₁z₂; f=bar z₁ | first separately/jointly holomorphic; second ∂̄₁f=1 excludes it | Pass | — |
| K3.HolomorphicStalk [sample] | point, coordinate z, 1+z at 0 | point ring=ℂ; z(0)=0 nonunit; (1+z)(0)=1 unit; dim O_(ℂ,0)=1 | Pass | — |
| K3 Weierstrass preparation/division | f(w)=w²; g(w)=1+w³ | unit=1,P=w²,d=2; g=P·w+1; remainder degree 0<2 | Pass | — |
| K3 preparation excludes zero series | f=0 versus f=1 | order(0)=∞, not finite d; d=0 for 1 gives P=1, unit=1 | Pass | — |
| K3.MeromorphicGermField [sample] | z⁻²+3+z at 0 | pole order −2; coefficient c_−2=1; regular value=3; residue c_−1=0 | Pass | — |
| K3 punctured representatives | change f(0) from 0 to 99 | punctured germ unchanged; regular value remains 3, not 99 | Pass | — |
| K3 finite-pole criterion | exp(1/z) versus z⁻¹ | exp has infinitely many negative coefficients 1/n!; z⁻¹ has exactly c_−1=1 | Pass | — |
| K3 negative Laurent contour | f=z⁻²+3+z,k=2 | (2πi)⁻¹∮f(z)z dz=1=c_−2 | Pass | — |
| K3 Laurent multiplication/differentiation | f=z⁻¹+1,g=z⁻¹−1 | fg=z⁻²−1: c_−2=1,c_−1=0; f′=−z⁻² | Pass | — |
| K3 Noetherian/UFD/dimension | O at point and O_(ℂ,0) | dimensions 0 and 1; (z²)⊂(z), z irreducible; point ring field | Pass | — |
| K3 Nullstellensatz | ideal (z²) at 0 | V={0}; I(V)=(z)=sqrt((z²)); (1) has empty zero set and radical (1) | Pass | — |
| K3 local parametrization | cusp y²=x³, t↦(t²,t³) | generic projection to x has 2 points; local dimension=1 | Pass | — |
| K3 Oka relations | tuple (z,z²) | relation (−z,1); relation module free rank 1; zero tuple has full relation module | Pass | — |
| K3 reduced-ideal coherence | A={z²=0} as reduced set | I_A=(z), not (z²); one generator in every nearby stalk | Pass | — |
| K3 singular locus/regular pieces | node xy=0 in ℂ² | Sing={0}, complex dimension 0<1; two punctured smooth branches | Pass | — |
| K3 irreducibility/connected regular locus | cusp versus node | cusp normalization away from 0 connected; node regular locus has 2 components | Pass | — |
| K3 removable/Hartogs extension | 1/z in ℂ; 1/z₁ in ℂ² | first unbounded at codim1; second pole set has codim1, so neither contradicts codim≥2 theorem | Pass | — |
| K3 node/cusp worked examples | z²=w²+w³; z²=w³ at 0 | first has branches z=±w sqrt(1+w); second single parametrization (t³,t²) | Pass | — |
| K4 locally free sheaf/bundle reconstruction | point, ranks 0 and 2 | stalk quotients are 0 and ℂ²; reconstruction returns same ranks | Pass | — |
| K4 Chern connection | line metric h=e^∣z∣² | A=bar z dz; Θ=dA=dbarz∧dz=−dz∧dbarz; ∂̄ part remains standard | Pass | — |
| K4 frame change | rank1 h=1,g=e^z | h′=e^(z+bar z); A′=dz=g⁻¹dg; original A=0 | Pass | — |
| K4 Koszul–Malgrange | ∂̄_E=∂̄+a dbarz, constant a | frame e^(−a bar z) has ∂̄_E frame=0; curvature (0,2)=0 | Pass | — |
| K4 holomorphic connection/curve flatness | ∇=d+a(z)dz, a holomorphic | ∇²=a′ dz∧dz=0; contrasts Chern e^∣z∣² curvature≠0 | Pass | — |
| K4 monodromy convention | ∇=d+a dz/z on ℂ× | T_positive-loop=e^(−2πia); M=e⁻¹Te has that value, not its inverse | Pass | — |
| K4.ComponentwiseFiniteRankAssembly [sample] | M=ℕ discrete, rank r(j)=j | fiber dimensions 0,1,2,…; each finite, no fixed F; assembly/restriction return j | Pass | — |
| K4 category includes nonisomorphisms | point: zero linear map ℂ→ℂ² | connection preserving; rank image=0; not invertible, correctly still a morphism | Pass | — |
| K4 flat correspondence | point and empty base | point objects finite-dimensional vector spaces on all three sides; empty base has unique empty family | Pass | — |
| K4 tensor/dual connection | lines d+a dz and d+b dz | tensor matrix=(a+b)dz; dual=−a dz; evaluation derivative cancels a−a=0 | Pass | — |
| K5a Gram exterior product [sample] | dx,dy orthonormal | norm²(dx∧dy)=det I₂=1, not 2 from ordered-tuple counting | Pass | — |
| K5a real star and square | m=2,k=0,1,2 | *1=dx∧dy; *dx=dy; *dy=−dx; square signs +1,−1,+1 | Pass | — |
| K5a zero-dimensional orientation | m=k=0; orientation ± | volume=±1, star(1)=±1; star²(1)=1 | Pass | — |
| K5a orientation reversal | plane with volume −dx∧dy | new star dx=−dy=−old star dx; square unchanged | Pass | — |
| K5a bilinear star/barStar | α=i dx,β=dx | α∧*β=i vol=B_C(α,β)vol; α∧barStarβ=i vol=⟨β,α⟩vol | Pass | — |
| K5a density transition | x↦−2x in dimension1 | density multiplier=2; orientation-line multiplier=−1; square=1 | Pass | — |
| K5a BundleTest LF and distribution dual | point E=ℂ; compact stage | test space intended ℂ, dual ℂ; evaluation u(φ)=2φ; no support/topology collapse | Intended; admitted carriers | R05 |
| K5a compact support to tempered | u=δ₀,χ=1 near0 | (χu)(φ)=φ(0); changing cutoff gives same value | Pass | — |
| K5a.DistributionLocalStructure primitive [sample] | w=δ₀,k=0,m=2 | H₂=x₊ continuous; D H₂=Heaviside; D²H₂=δ₀; D²F=w | Pass | — |
| K5a finite-order extension | δ₀′ paired with C¹ test φ | pairing=−φ′(0); bound≤‖φ′‖∞; C⁰ norm alone cannot bound it | Pass | — |
| K5a supported normal jets | u=a(y)δ(z)+b(y)δ′(z) | normal pushforward u=a; pushforward z u=−b; factorial/sign coefficient for β=1 is −1 | Pass | — |
| K5a delta derivative dilation | q=1,α=1,a=2 | pullback δ′(2·)=δ′/4; degree −2 gives 2⁻²=1/4 | Pass | — |
| K5a exponential nonextension | ε→0,n=1,c=1/8 | lower bound C′ε exp(64/(81ε²)); ratio to Cε⁻ᴺ→∞ | Pass | — |
| K5a literal delta series | φ=1/(1+2x) near0,n=0,1,2 | δⁿ(φ)/n!=1,2,4; partial sums=1,3,7 diverge | Pass | — |
| K5a smooth-section continuous dual | evaluation at x=0 | u(f)=f(0), support={0}; finite seminorm bound ∣u(f)∣≤sup_[−1,1]∣f∣ | Pass | — |
| K5a.SmoothSectionMontel [sample] | countable discrete M, rank1 | sections=ℂ^ℕ; box ∣f(j)∣≤1 has compact closure; translating spikes converge pointwise to0 | Pass | — |
| K5a Sobolev geometric localization | point χ₁=3/5,χ₂=4/5,u=1 | sum χᵢ²=1; norm²=9/25+16/25=1; reconstruction=1 | Pass | — |
| K5a bad localization surrogate | same point, q=0 | tuple norm=0 versus geometric norm(1)=1 | Fails | R06 |
| K5a real distribution extension | TR=ℝ,TC=ℂ,u(t)=2t,φ=3+4i | u_C(φ)=6+8i; κu_C(φ)=6+8i; fixed real subspace retained | Pass | — |
| K5a conjugation excludes imaginary distribution | u(φ)=iφ,φ=1 | κu(1)=−i≠i; κ²u(1)=i | Pass | — |
| K5a complexified Hilbert metric | a+ib=1+2i,c+id=3+4i | h=11−2i=conj(1+2i)(3+4i); real inclusion norm1 | Pass | — |
| K5a Fourier conjugation/reflection | f(x)=e^(−x²)e^(ix) | conjugation moves frequency +1 to −1; even real Bessel weight unchanged | Pass | — |
| K5a Fourier/spatial bilinear pairings | f=g=exp(−(x−1)²) | B₀=√(π/2); B_F=B₀(f,Rf)=e⁻²√(π/2), not B₀ | Pass | — |
| K5a transpose convention | multiply by A(x)=x on Schwartz | spatial transpose=x; Fourier-bilinear transpose=−x=R M_x R | Pass | — |
| K5a complex Bessel symbol | ζ=1,z=2+2i | symbol=2 exp(i log2); modulus=2; imaginary-order modulus=1 | Pass | — |
| K5a Sobolev cutoff/chart changes | φ(x)=2x,s=0 | ‖u∘φ‖₂=2⁻¹ᐟ²‖u‖₂; Jacobian density pushforward has factor1/2 | Pass | — |
| K5a global coordinate hypotheses | translation φ(x)=x+3 | positive derivatives=1,0,…; pullback H^s norm preserved; position need not be bounded | Pass | — |
| K5a smooth-domain completion | u∈C_c∞(0,1) | zero extension smooth, same whole-space norm; constant1 has jump after zero extension, excluded at H¹ | Pass | — |
| K5a frequency normalizations | angular ξ=2π,native ζ=1,s=1 | weights sqrt(1+4π²) and sqrt2; equivalent, not equal | Pass | — |
| K5a comparison of weights | r=1,s=1 and s=−1 | (1+r)²/(1+r²)=2; reciprocal ratio=1/2 | Pass | — |
| K5a Sobolev embedding strict margin | Fourier integrability in n dimensions | radial integral exponent n−1−2(s−k)<−1 iff s>k+n/2; equality gives log divergence | Pass | — |
| K5a supported Rellich | frequency ∣ζ∣≥R,r=s−1 | squared norm tail factor≤(1+R²)⁻¹→0; r=s gives1, no decay | Pass | — |
| K5a local negative order of distributions | δ₀ in ℝⁿ | Fourier constant; H^s norm finite iff s<−n/2 | Pass | — |
| K5a top-form measure comparison | unit square, f=2+i | form and measure integrals both2+i with positive orientation | Pass | — |
| K5a complex scalar extension | point and circle | H⁰ point=ℂ=ℂ⊗ℝℝ; H¹ circle=ℂ on both sides | Pass | — |
| K5a punctured-plane period | ω=dz/z | four arcs each iπ/2; total2πi; normalized period=1 | Pass | — |
| K5a slit jump sign | g₊=Log₊,g₋=Log₋ | c_U=0,c_L=−2πi; c_U−c_L=2πi | Pass | — |
| K5a exact period | ω=dz=d(z) | four arc changes telescope to0; normalized period=0 | Pass | — |
| K5a disk cohomology | D unit disk | H⁰=ℂ,H¹=H²=0; dx=d x; dx∧dy=d(xdy) | Pass | — |
| K5a Laplace symbol | P=−c∂ₓ²,ξ=2,c=1 and 1/2 | symbols4 and2; both c∣ξ∣² | Pass | — |
| K5a Peetre inequality | ζ=η=1,s=±1 | s=1: sqrt5≤2sqrt2; s=−1:1/sqrt5≤sqrt2 | Pass | — |
| K5a commutator order | s=0 and s=2 | [Λ⁰,M_f]=0; [1−∂²,M_f]w=−f″w−2f′w′, order1 | Pass | — |
| K5a elliptic lower norm term | circle,u=constant1,P=−∂² | Pu=0 but ‖u‖_H^(s+2)>0; lower ‖u‖_H^r term essential | Pass | — |
| K5a distributional regularity | Fourier mode e^(ikx) | Pu=k²u; H^(s+2) weight=(1+k²)^((s+2)/2), matching order2 | Pass | — |
| K5a compact realization/Green | unit circle Fourier modes k=0,1,2 | Δ eigenvalues0,1,4; Green values0,1,1/4; ΔG=Id−H gives0,1,1 | Pass | — |
| K5a positive rescaling | replace Δ by2Δ | nonzero eigenvalues double; Green halves; harmonic projection unchanged | Pass | — |
| K5a real Hodge theorem | circle and point | circle b₀=b₁=1, harmonic1 and dθ; point b₀=1, all higher0 | Pass | — |
| K5a codifferential parity | m=1,k=1; m=2,k=1,2 | exponent m(k+1)+1 odd in all three, sign−; circle δ(fdx)=−f′ | Pass | — |
| K5a planar star [sample] | dz=(1,i),dbarz=(1,−i) | star dz=(−i,1)=−i dz; star dbarz=(i,1)=i dbarz | Pass | — |
| K5a planar d and δ [sample] | P=x²y,Q=xy² | curl=y²−x²; divergence=4xy; δ=−4xy | Pass | — |
| K5a planar δ top [sample] | h=xy | δ(hdx∧dy)=x dx−y dy; δ on constants0 | Pass | — |
| K5a planar Δ zero/one/two [sample] | u=x²+y²; α=u dx; β=u dx∧dy | Δ_H values−4,−4dx,−4dx∧dy; positive scalar trace gives4 | Pass | — |
| K5a planar mixed cancellation [sample] | P=x²y,Q=xy² | hodgeOne=(−2y,−2x)=−(Pₓₓ+Pᵧᵧ,Qₓₓ+Qᵧᵧ) | Pass | — |
| K5a planar Wirtinger factor [sample] | u=x²+y²=z bar z | ∂z∂barz u=1; −4×1=−4=Δ_Hu | Pass | — |
| K5a planar C² scope [sample] | u=∣x∣³ | second derivatives6∣x∣,0; Δ_H=−6∣x∣; third x derivative jumps±6 | Scope failure | R07 |
| K5a compact-support energy [sample] | real smooth bump ρ(x)ρ(y) | let A=∫ρ²,B=∫(ρ′)²: both energy sides=2AB; no boundary term | Pass | — |
| K5a.ComponentwiseCompact [sample] | 3 points, ranks0,1,2 | dimensions sum3; norm² on (0,3,(0,4))=25=0+9+16; empty base0 | Pass | — |
| K5a component distributions/operators | two points u=(2,3),φ=(5,7) | u(φ)=10+21=31; diagonal operator(1,2) acts(2,6) | Pass | — |
| K5a component locality restriction | swap operator on two points | swap(1,0)=(0,1) violates local block action; explicitly excluded | Pass | — |
| K5a component compact spectra | two components each eigenvalue1 | global multiplicity2; finite-sum resolvent eigenvalues both1/2 at shift1 | Pass | — |
| K5b.0 volume and Gram [sample] | standard ℂ and ℂ² | ω¹/1!=dxdy; ω²/2!=dx₁dy₁dx₂dy₂; ∣dz∣²=2 | Pass | — |
| K5b.0 sharp [sample] | metric H=2 in one dimension | ∣dz∣²_Gram=1; dz♯=∂z; 2H⁻¹=1 | Pass | — |
| K5b.0 wedge/contraction [sample] | ψ=dz/√2, φ=dz | {eψ,iψ}(1)=1; {eφ,iφ}(1)=2; mixed-type value0 | Pass | — |
| K5b.0 star versus barStar types [sample] | n=1,α=dz | *α=−i dz of type(1,0); barStarα=i dbarz of type(0,1) | Pass | — |
| K5b.0 Serre slot order [sample] | α=i dz,β=dz in standard ℂ | α∧barStarβ=2i vol; ⟨β,α⟩=2i | Pass | — |
| K5b.0 half-symbol [sample] | plane mode e^(ix) | Δ_d mode=1·mode; Δ_bar mode=(1/2)·mode | Pass | — |
| K5b.0 bundle dual conjugation [sample] | point E=ℂ,β=2+i | Riesz dual β sends v↦(2−i)v; evaluation atβ=5=‖β‖² | Pass | — |
| K5b.1 compact Hodge [sample] | point rankr; elliptic curve trivial line | point h⁰⁰=r, higher0; elliptic h⁰⁰=h¹⁰=h⁰¹=h¹¹=1 | Pass | — |
| K5b.1 Serre duality [sample] | ℂP¹,E=O(−1); E=O | first h⁰=h¹=0; second h⁰(O)=h¹(O(−2))=1 | Pass | — |
| K5b.1 varying-rank pairing [sample] | three points rank0,1,2 | H⁰ dimensions0+1+2=3 on both sides; pairing rank3 | Pass | — |
| K6 Kähler iff parallel J | flat ℂ; any complex curve | dω=0 and ∇J=0 in flat model; degree3 obstruction on curve vanishes | Pass | — |
| K6 Lefschetz commutator | n=1,k=0,1,2 | [Λ,L] on1,dz,ω equals1,0,−ω; n−k=1,0,−1 | Pass | — |
| K6 Kähler commutator sign | plane α=f dx | [Λ,d]α=−f_y; −(dᶜ)*α=−f_y; [L,d*]α=−f_x vol=dᶜα | Pass | — |
| K6 Laplacian factors | u=z bar z | Δ_d u=−4; Δ_∂u=Δ_∂̄u=−2; Δ_d=2Δ_∂̄ | Pass | — |
| K6 twisted curvature term | line iΘ=aω, degree n+k | [aL,Λ]=a(k); k=1 gives a, k=0 gives0 | Pass | — |
| K6 ∂∂̄ lemma | α=∂∂̄∣z∣² on a local chart | α=dz∧dbarz, ∂α=∂̄α=0; α has displayed potential | Pass | — |
| K6 Hodge decomposition | elliptic curve | b₁=2=1+1; b₂=1= h¹¹; dimensions agree | Pass | — |
| K6 odd Betti obstruction | Hopf surface | b₁=1 odd; Kähler requirement b₁=2h¹⁰ even fails | Pass | — |
| K6 Hard Lefschetz | ℂP²,∫ω²=1 | L²:H⁰→H⁴ sends1↦ω²≠0; L⁰:H²→H²=Id; beyond k≤n excluded | Pass | — |
| K6 Hodge–Riemann sign | elliptic curve primitive α=dz, unit area | i∫dz∧dbarz=i(−2i)=2>0; opposite i sign gives−2 | Pass | — |
| K6 nonzero Kähler powers | point and empty space | point [ω⁰]=[1]≠0; empty H⁰=0, explaining nonempty assumption | Pass | — |
| K6 holomorphic class nonvanishing | elliptic dz | d dz=0; period along unit cycle1≠0, so class nonzero | Pass | — |
| K6 analytic integration positivity | projective line V with normalized ω | ∫_Vω=1>0; empty V integral0, excluded | Pass | — |
| K6 singular cycle local orientation | two transverse projective lines | two regular components each coefficient+1; total degree2; singular point real dimension0 | Pass | — |
| K6 local-homology link | codim1 simplex with c cofaces | reduced H₀(link)=ℤ^(c−1); orientation groupℤ forces c=2 | Pass | — |
| K6 fundamental-class comparison | disk relative boundary | H₂(D,∂D)=ℤ, ∫dxdy=area; H₂(D)=0 | Missing supplier contract | R03 |
| K6 cut off near singular set | closed α replaced by α−d(χβ) | on χ=1 region α′=0; cohomology difference exact; integration difference0 by Stokes | Pass | — |
| K7.1 projective charts [sample] | n=0; [2:4]∈ℂP¹ | ℂP⁰ point; U₀ coordinate2; normalized inverse[1:2]=[2:4] | Pass | — |
| K7.1 sphere chart compatibility [sample] | t=2 and ∞ | OnePoint map gives[2:1] and[1:0]; U₁ coordinate2, U₀ at∞ coordinate0 | Pass | — |
| K7.1 quotient hypotheses [sample] | v=(0,0) versus v=(0,1) | zero excluded; second belongs only to U₁, ratio well-defined denominator1 | Pass | — |
| K7.2 O(k) tensor/dual [sample] | a=2,b=−3 | tensor degree−1; dual O(2)=O(−2); k=0 gives trivial line | Pass | — |
| K7.2 FS normalization [sample] | ℂP¹ affine chart | ω=dxdy/(π(1+r²)²); integral=2∫₀∞r/(1+r²)²dr=1 | Pass | — |
| K7.2 O(1) curvature [sample] | h=(1+∣z∣²)⁻¹ | Θ=∂∂̄log(1+∣z∣²)=−2πiω_FS | Pass | — |
| K7.2 projective sections [sample] | n=1,k=0,1,2,−1 | h⁰=1,2,3,0; binomial(1+k,1)=1,2,3 for k≥0 | Pass | — |
| K7.2 canonical line [sample] | z=1/w | dz=−w⁻²dw; canonical degree−2; h⁰(O−1)−h¹(O−1)=0 | Pass | — |
| K7.2 cup ring [sample] | n=0,1,2 | ranks H*=1; (1,0,1); (1,0,1,0,1); u^(n+1)=0; ∫uⁿ=1 | Pass | — |
| K7.2 hyperplane [sample] | ℂP²,β=ω | ∫ω²=1=∫_ℂP¹ω | Pass | — |
| K7 torus Hodge numbers | n=0,1,2 | n=0:h⁰⁰=1; n=1 all4=1; n=2 h¹¹=4,h²⁰=1 | Pass | — |
| K7 surface genus dictionary | sphere and torus | g=0,1; b₁=0,2=2g; H²(−;ℤ)=ℤ | Pass | — |
| K7 surface cup orientation | torus generators a,b | ∫a∧b=1,∫b∧a=−1; pairing matrix [[0,1],[−1,0]], determinant1 | Pass | — |
| K7 Hopf geometry | ℂ²\{0}/2^ℤ | radial log modulo log2 gives S¹; angular factor S³; Betti=(1,1,0,1,1) | Pass | — |
| K7 Hopf Dolbeault | scalar constants, one-form monomials | constant weight1 gives h⁰¹=1; one-form weights2^(d+1)≠1 and2^(1−m−n)≠1 | Pass | — |
| K7 Hopf diamond | nonzero entries (0,0),(0,1),(2,1),(2,2) | all1; diagonal sums=(1,1,0,1,1); h¹⁰=0≠h⁰¹=1 | Pass | — |
| K8 Frölicher differential | Iwasawa φ₃=dz₃−z₁dz₂ | ∂φ₃=−φ₁∧φ₂≠0; d₁:(1,0)→(2,0), total degree+1 | Pass | — |
| K8 compact Kähler E₁ degeneration | elliptic curve | E₁ dimensions1,1,1,1; d_r=0; diagonal sums1,2,1=Betti | Pass | — |
| K8 Iwasawa cohomology | complex Heisenberg quotient | 3 holomorphic invariant1-forms; only2 closed holomorphic ones; h¹⁰=3,h⁰¹=2,b₁=4≠5 | Pass | — |
| K8.NilpotentCentralReduction [sample] | real Heisenberg [X,Y]=Z, integer lattice | last ideal=ℝZ, dimension1; Γ∩A=ℤ; quotientℝ² with latticeℤ²; fibreS¹ | Pass | — |
| K8 complex central reduction [sample] | complex Heisenberg, Gaussian lattice | centre complex dimension1; lattice rank2; quotient dimension2<3; fibreℂ/ℤ[i] | Pass | — |
| K8 rationality hypothesis [sample] | ℝ²/ℤ², irrational line slope√2 | intersection={0}, not cocompact; line not rational, so excluded | Pass | — |
| K8 central monodromy [sample] | translation by a on torus fibre | induced map on H¹ is Id, matrix I; no nontrivial conjugation action | Pass | — |
| K8 abelian/zero base case [sample] | G=ℝ² and G={e} | torus cohomology ranks1,2,1; zero group rank1 in degree0; no improper dimension reduction | Pass | — |
| K8 invariant versus full comparison | real Heisenberg compact quotient | CE H¹ spanned byX*,Y*, dimension2; Z* not closed since dZ*=−X*∧Y* | Pass | — |
| K8 central spectral E₂ | Heisenberg circle bundle over2-torus | E₂=H*(T²)⊗H*(S¹), total dimensions1,3,3,1; nonzero transgression removes one class in degrees1,2 | Pass | — |
| Supplier scalar spectral test | q(v,w)=2conj(v)w, j=Id | represented A=2Id; (A+Id)⁻¹=(1/3)Id | Contract drift | R04 |

The preceding table contains 169 explicit target/convention computations, including all 15 seeded targets, the headline families and the mathematical witnesses used by findings.


Sources service: Demailly, author version 21 June 2012; Sakane, institutional published copy; Angella, arXiv:1212.4351v1. No manifest edits or source copying. No README locator explicitly labelled unverified. All 15 seeded targets:

| Seeded target | Text and locator opened | What the text supports / limit |
| --- | --- | --- |
| Parameter Cauchy–Green | demailly lines 875–923, I.3.1–3.4, pp.20–21 | Correct Wirtinger/area normalization and compact-support fundamental solution. Parameter differentiation is an additional consequence of fixed support, not the literal statement of I.3.4. README lacks its locator. |
| K3.HolomorphicStalk | demailly lines 3750–3845, II.2.1/2.3, pp.79–81; native stalk declarations above | Finite-order Weierstrass preparation, analytic coefficients and unique division. Native stalk/fraction comparisons are additional adapters. |
| K3.MeromorphicGermField | native `meromorphicOrderAt_eq_int_iff`, GH2 local Laurent contract; demailly lines 913–916 | Finite-power/punctured characterization resolves at the pin. No exact external locator is supplied for the field/regular-evaluation adapter. |
| K4.ComponentwiseFiniteRankAssembly | demailly lines 3970–4054, II.3.1–3.3, pp.83–85 | Fixed-rank cocycle/bundle correspondence. Arbitrary component ranks and full connection/local-system equivalence need their own cited extension. |
| K5a real/complex analysis | demailly lines 14313–14603, VI.3, pp.291–295; native distribution/Bessel APIs | Gram star, formal adjoint and compact Hodge decomposition (flat Hermitian coefficient connection). Does not certify every all-real-order bundle-distribution construction in the roadmap. |
| K5a.DistributionLocalStructure | README entire block; source references and native distribution files searched | No exact source supplied for its finite-regularity convolution or normal-jet structure. Explicit examples pass, but source certification unavailable. |
| K5a.SmoothSectionMontel | native Montel file lines 45–129 | Generic dual comparison exists. This does not prove the new smooth-section Montel instance; no precise external locator supplied. |
| Planar Hodge/Laplacian | demailly lines 14323–14509, VI.3.1–3.12, pp.291–293; I.3.1 p.20 | Coordinate specialization has the signs computed above. Compact-support adjoint and finite-regularity carrier distinctions remain essential. |
| K5a.ComponentwiseCompact | VM §3.1, lines 564–592; Demailly fixed-rank Hodge text | Finite orthogonal sums resolve. Compactness gives finitely many open components; native varying-rank transport is additional work. |
| K5b combined block | demailly VI.3 and VI.7, pp.291–295,309–310 | The actual assumptions are Hermitian, compact for Hodge/duality, finite rank. No Kähler assumption in VI.7. |
| K5b.0 | demailly lines 15353–15410, VI.6.15/VI.7 proof; VI.3 star | Half principal symbol and dual-star identities. Source slot convention must be translated to conjugate-first; two proof misprints are recorded below. |
| K5b.1 | demailly lines 15369–15410, VI.7.1–7.3, pp.309–310 | Orthogonal splitting, finite-dimensional Dolbeault identification, perfect Serre pairing for fixed rank. Finite-component extension checked separately above. |
| K7.1 | AT4.6 and ComplexManifolds M3 inspected; demailly VI.4.4 | Source uses projective charts but supplies no locator for this particular native carrier/atlas comparison. n=0 and both projective-line charts computed above. |
| K7.2 | demailly lines 14688–14696, VI.4.4 p.297, referring to V.15.8/15.12 | FS coefficient i/(2π), integral1 and hyperplane generator agree. Full O(k), native CW and cup comparisons have no claim-level locator here. |
| K8.NilpotentCentralReduction | sakane lines 85–115, §2, printed pp.188–189; Thm1 lines 46–49,102–105 | Simply connected complex nilpotent group and uniform lattice; last central subgroup and torus bundle. The lattice input cites Raghunathan p.31 Cor1/p.23 Thm1.13; the full rational-ideal theorem is not proved there. |

Additional exact locators: Demailly II.4.29 (coherent reduced ideal, demailly line 4842, printed p.99) and II.4.31 (analytic singular locus, line 4929, printed p.100) match K3's numbered references; the reducible/mixed-dimensional argument is visible at lines 4944–4950. Angella §3.1, pp.9–10 (angella lines 480–535), has the Gaussian Heisenberg quotient and dφ₃=−φ₁∧φ₂; it uses left quotients, whereas Sakane uses right quotients/right-invariant fields (sakane lines 85–100). The README correctly asks for the inversion comparison instead of identifying these conventions silently.

## Not verifiable

- **Griffiths–Harris**, *Principles of Algebraic Geometry*, chapter 0 §§1–2: the sources service found no legal text from the bibliographic citation. Listed in the scratch missing-reference record. Demailly independently supports the particular local algebra inspected; that does not certify Griffiths–Harris numbering.
- **Wells**, *Differential Analysis on Complex Manifolds*: the sources service found no legal text. The README supplies neither edition nor theorem/page for the Hodge/duality use; listed in the missing-reference record.
- **Łojasiewicz**, semianalytic triangulation §3 Thm2 p.464: the service found no legal text from the bibliographic citation. The stated generality, analytic simplex restrictions and numbering remain uncertified; listed in the missing-reference record.
- **Webster**, Newlander–Nirenberg, pp.303–316, and **Raghunathan**, lattice Cor1 p.31/Thm1.13 p.23: service returned `uncertified` (paywalled publisher). No bypass attempted and no new missing-text request for these settled statuses. The analytic iteration estimates and full rational-ideal proof were not text-certified.
- The named source-free extensions in the sample table—finite-order distribution convolution, supported jets, section Montel, unbounded-rank assembly and some native comparison maps—cannot be source-certified from book titles alone. This is R12, not an assertion that those mathematical results are false.
- PlanarTopology and SurfaceTopology were not present in the permitted main active/completed folders, and the brief gives no sibling checkout for them. Their cited surface-contract text was not independently inspected. No missing-declaration verdict is inferred from that restricted access.
- Ownership searches covered main/open index and pertinent supplied checkouts; open work without supplied files was not read. Finite adversarial tests are not general proofs.

## Source issues

- **Misprint** in demailly at VI.7, proof of Theorem 7.3, printed p.310: the test form s₂ is assigned E coefficients; it should be assigned E* coefficients for evaluation against s₁; affects the proof.
- **Misprint** in demailly at VI.7, proof of Theorem 7.3, second dual-star identity, printed p.310: the right side applies the adjoint D″* before the dual star; it should apply D″ without the adjoint; affects the proof.
