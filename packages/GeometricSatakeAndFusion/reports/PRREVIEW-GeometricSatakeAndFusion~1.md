# Review of GeometricSatakeAndFusion (pull request #1235 at ef635d8)

**Verdict:** needs changes

## R01 (P1) — Convolution support can be strictly smaller than the Minkowski sum

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:1430`, “convolution support is the Minkowski sum”.

**Claim:** This is asserted for the standing prime-to-p coefficient rings, even in the flat Satake subcategory.

**Witness:** Take p=5, Λ=ℤ/6, G=𝔾ₘ and weight-zero skyscrapers with coefficients 3Λ and 4Λ. Both are nonzero projective summands, but their tensor product is zero since 3·4=0. Input supports are {0},{0}; convolution support is ∅, not {0}.

**Repair:** State `(A⋆B)_ν = ⊕_(λ+μ=ν) A_λ ⊗ᴸ_Λ B_μ`, hence support containment. Assert equality over a field, or under an explicit nonvanishing condition on the coefficient tensors. Add the orthogonal-idempotent example as a negative Check. The repaired formula gives zero at ν=0 in this example, while over a field two rank-one weight-zero objects give rank one.

## R02 (P1) — The ramified-Witt supplier sections do not exist

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:149`; repeated at lines 556 and 924. The cited sections are “RelativeFarguesFontaine §§0.9–0.10”.

**Claim:** These sections supply the ramified Witt coefficient comparison required by the lattice and normalized-determinant targets.

**Witness:** In the selected RelativeFarguesFontaine head, `README.md:316` is §0.2 and line 343 starts §0.11. Its coefficient contract instead imports VectorBundlesAndIsocrystals Layer 0. The latter's `README.md:92–94`, “Ramified coefficient rings and coefficient changes”, constructs the requested functor, including the equal-characteristic power-series convention.

**Repair:** Replace every nonexistent section reference, including the broad §0.1–0.10 range, by VectorBundlesAndIsocrystals Layer 0, “Ramified coefficient rings and coefficient changes”, retaining the actual RFF completion/divisor contracts separately. Check both E=ℚₚ, giving W(R), and E=𝔽_q((t)), giving R[[t]]. The existing owner supplies both; do not reconstruct the coefficient functor here.

## R03 (P1) — Highest-weight inputs cite nonexistent supplier targets

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:56`, and lines 1953, 1965, 2023, 2120, 2128, 2163: “LanglandsParameterStacks §LP3.0”; line 2120 also cites §LP4.2.

**Claim:** LP3.0 supplies induced/Weyl modules and good filtrations; LP4.2 supplies the restricted-prime parameter-stack generation theorem.

**Witness:** Neither heading exists at the selected supplier head. `TauCetiRoadmap/LanglandsParameterStacks/README.md:918–940` is §4.1, importing Weyl/induced modules from ReductiveGroups §10B and proving good-filtration tensor stability. The parameter-stack generation theorem is §6.2, line 1293.

**Repair:** Cite §4.1 and, for the actual highest-weight modules, ReductiveGroups §10B; replace LP4.2 by §6.2. Keep the additional all-prime relative completion theorem here. The corrected citation distinguishes the unrestricted PGL₂, ℓ=2 classifying-stack target from §6.2's condition ℓ∤|π₁(Ĥ)_tors|.

## R04 (P2) — The imported Weil degree has the opposite normalization

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:58`, “geometric-Frobenius degree”.

**Claim:** ClassFieldTheory Layer 9 directly supplies this normalization. The roadmap subsequently fixes geometric Frobenius on Λ(1) as q⁻¹.

**Witness:** `TauCetiRoadmap/ClassFieldTheory/README.md:1532–1534` fixes arithmetic degree. For q=3, its degree on geometric Frobenius is −1; substituting it for geometric degree in q^(−degree) gives 3, whereas the required Tate value is 1/3.

**Repair:** Import the negation adapter and Tate-character comparison from LanglandsParameterStacks §0.4 (`README.md:198–214`), or explicitly identify d_geo=−d_arith in this supplier contract. Keep the arithmetic degree in VS1.5's residue-field-corrected action. Add the three values: arithmetic Frobenius ↦3, geometric Frobenius ↦1/3, inertia ↦1. This repairs the exhibited sign discrepancy without changing the intended Satake normalization.

## R05 (P2) — The early local-model target needs the final Satake equivalence

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:946–966`, “Bounded admissible affine flag loci”, in Layer GS0.

**Claim:** This early target includes construction of integral v-sheaf local models, nearby cycles and identification of their reduced special fibres. Its Needs line explicitly imports “Normalized equivalence”, which is constructed in GS4 at line 2027.

**Witness:** The GS0 Needs line 966 points to normalized Satake at line 2027. The proof at line 948 uses generic Satake for special-fibre identification. The finite Bruhat-union definition itself needs no Satake equivalence.

**Repair:** Keep the finite admissible union and its elementary flag API in GS0; move the local-model construction/comparison and model-morphism factorization after the normalized equivalence in GS4, with separate Needs lines. For μ=0 the early union is still a point, and the later comparison identifies it with the unit local-model fibre. This is an ordering defect, not a claimed mathematical contradiction or a mechanically detected roadmap-level cycle.

## R06 (P3) — The submitted head fails the residue gate

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:203` and the repeated explicit HTML anchors.

**Claim:** The worker's gate reports `residue=119` and `FAIL`; all its other counters, including build and dependency checks, are zero.

**Witness:** Line 203 contains the explicit `supplier-calculus` HTML anchor. The same form occurs throughout the targets and references, accounting for the residue failure.

**Repair:** Remove the forbidden HTML anchor markup and retarget internal links to ordinary Markdown heading anchors. Rerun the supplied gate; acceptance requires `residue=0` and a passing result. This is a gate finding even though the Lean elaboration succeeds.

## R07 (P3) — README names claim declarations that the Lean file does not contain

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:136–141`, 233–235 and 1427–1430; `TauCetiRoadmap/GeometricSatakeAndFusion/Suggested.lean:1–31`.

**Claim:** The README assigns its own backticked names to targets and API bullets, while Suggested.lean contains only an import and a module docstring. The brief permits a name in an API bullet only when that declaration exists in Suggested.lean.

**Witness:** The positive-loop API names and `torusConvolutionLabels` are absent from the Lean file; there are zero declarations. The naming paragraph does not override the required naming rule.

**Repair:** Write the unstatable geometric targets and their API in prose, retaining mathematical notation but removing invented declaration-name claims. Keep the docstring's honest account of missing carriers; do not add opaque stand-ins or API padding. Supply the required `TauCetiRoadmap.GeometricSatakeAndFusion` namespace and describe this file as the headline acceptance test. The empty declaration inventory should then agree with the README.

## R08 (P3) — Several definition checks do not discriminate competing constructions

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:1432–1436`, the Checks for ambient convolution.

**Claim:** Three listed bullets are being used as the definition's checks. The final bullet simply repeats the displayed defining formula, and the unit bullet repeats its API law.

**Witness:** These checks do not test the distinction in R01: the incorrect support-equality rule passes the unit check and the scalar rank-one skyscraper check, while failing on the projective modules 3Λ and 4Λ.

**Repair:** Keep at least three computed, discriminating Checks for each definition. Here use weights 1 and −2 (output −1), supports {0,1} convolved with {0,1} over a field (ranks 1,2,1), and the ℤ/6 example (zero output). Preserve the unit law in the API. Apply the same rule to compressed single-sentence check lists and formula-restatement checks elsewhere.

## R09 (P3) — The cited works have no sources manifest

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:2252–2310`; missing `TauCetiRoadmap/GeometricSatakeAndFusion/sources.toml`.

**Claim:** Fourteen works are cited, with edition-sensitive locators, but none has the required manifest entry.

**Witness:** The folder has README.md, Suggested.lean and metadata, but no sources.toml. In particular Zhu uses published numbering while BS uses a specified preprint version; the status of the paywalled GLX edition is not recorded.

**Repair:** Record the fourteen works once each in a `tauceti-roadmap-sources/v1` manifest, with locators, edition/version notes and the sources service's provenance and status. Record the published GLX text as uncertified unless a matching legal text is obtained. Do not place source text or machine paths in the repository.

## Verified sound

This is a full read of the two review files, followed by source, supplier, object-ownership, convention and boundary-case checks. Finite examples below test the assertions; they are not presented as proofs of the general theorems. Five findings are blocking (R01–R05). No edit to the PR worktree was made.

**Build and gate.** HEAD was ef635d842b3b51f0cd845c26e95928a541c03eed. The outside-folder diff was empty and the worktree was clean. The worker's targeted build passed. Direct `lake env lean` elaboration of `TauCetiRoadmap/GeometricSatakeAndFusion/Suggested.lean` also exited 0 with no warnings. The supplied gate nevertheless fails solely at `residue=119`; set_option, sorry-data, sorry-examples, imports, stray-files, outside-folder, build and depcheck all report zero. There is no sorry'd data, no computational-algorithm target, and no route-specific exclusion of ℓ=2 in the integral Satake theorem.

The required dependency command, using the supplied order with `--movable`, returned:

```text
depcheck: 205 roadmaps, 1476 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. This checks roadmap-level direction; it does not validate section names, as R02–R03 demonstrate. Apart from the misplaced local-model target in R05, the local order keeps rational generic reductivity independent of the characteristic-two integral rank-one argument, and puts the classical comparison after both geometric and classical constructions.

**Headlines and Lean form.** The README's headline families are: bounded Witt/BD representability and projectivity; ULA recognition and special/generic comparison; relative perversity; convolution closure and rigidity; coherent symmetric fusion; geometric reconstruction and generic reductivity; all-prime integral pinned-dual identification; rational Witt and normalized integral Satake; the perfect-complex extension; and the geometric/classical trace comparison. Suggested.lean explicitly names these families and the absent geometric carriers. Object searches at the pins did not locate the Witt/BD Grassmannian, local Hecke stack, geometric Satake sheaf categories or their enhanced perfect categories. The existing generic category and Hopf-algebra carriers do not make these headlines statable. I found no omitted statable geometric headline and no substitute theorem. The flat-module recovery result is an auxiliary algebraic step, not a replacement headline. There are zero sorried theorems or definitions: the one-tactic padding probe and `#check @name` inventory therefore have zero candidates, and no dropped section binder arises.

**Pinned library audit.** Read all 47 declarations listed in the supplier table, including their binders. The pins match the README: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. In particular:

| Native object opened | File and line at the pin | Scope verified |
|---|---|---|
| WittVector; PerfectRing | `Mathlib/RingTheory/WittVector/Defs.lean:52`; `Mathlib/FieldTheory/Perfect.lean:44` | Sequences; bijective power map. PerfectRing alone includes neither primality nor characteristic. |
| Perfection | `Mathlib/RingTheory/Perfection.lean:39` | Inverse compatible-power sequences, not the direct Frobenius-colimit scheme perfection. |
| Scheme; IsProper; ValuationRing | `Mathlib/AlgebraicGeometry/Scheme.lean:40`; `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41`; `Mathlib/RingTheory/Valuation/ValuationRing.lean:64` | Native scheme/morphism notions; valuation-ring class includes a domain. |
| InvertibleSheaf | `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112` | Invertible module-sheaf full subcategory on a scheme, not an adic determinant construction. |
| CoxeterSystem; bruhatCell; RootPairing | `Mathlib/GroupTheory/Coxeter/Basic.lean:154`; `TauCeti/GroupTheory/TitsSystem/Bruhat/Basic.lean:100`; `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81` | Abstract groups, double cosets and root pairing; no affine-flag geometry. |
| ReductiveAffineGroupSchemeCat; reductiveAffineGroupSchemeProperty | `TauCeti/AlgebraicGeometry/AffineGroupScheme/Reductive/Basic.lean:89`, line 66 | Field-based finite-type reductivity, not an integral model. |
| TStructure; Heart; Pretriangulated | `Mathlib/CategoryTheory/Triangulated/TStructure/Basic.lean:54`; `Mathlib/CategoryTheory/Triangulated/TStructure/Heart.lean:57`; `Mathlib/CategoryTheory/Triangulated/Pretriangulated.lean:65` | Heart embedding and t-structure data; no geometric relative perversity. |
| DerivedCategory; Sheaf; GrothendieckTopology | `Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87`; `Mathlib/CategoryTheory/Sites/Sheaf.lean:299`; `Mathlib/CategoryTheory/Sites/Grothendieck.lean:72` | Abstract carriers; do not supply enhanced diamond operations. |
| Module.Flat and its tensor criterion | `Mathlib/RingTheory/Flat/Basic.lean:113`, line 147 | Tensor injectivity criterion retains the Small hypothesis. |
| Projective; Free; Finite; PadicInt | `Mathlib/Algebra/Module/Projective.lean:70`; `Mathlib/LinearAlgebra/FreeModule/Basic.lean:43`; `Mathlib/RingTheory/Finiteness/Defs.lean:121`; `Mathlib/NumberTheory/Padics/PadicIntegers.lean:71` | Distinct module conditions; PadicInt requires a prime instance. |
| LeftRigidCategory; RigidCategory | `Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean:712`, line 732 | Left duals versus both duals. |
| tensorAutFunctor; pointsFunctorIsoTensorAutFunctor; reconstructedPoint | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:63`, line 138; `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/Reconstruction.lean:89` | Given bialgebra/Hopf algebra. The latter two use a field and an already supplied commutative Hopf algebra. |
| HopfAlgebra; Bialgebra; AffineGroupSchemeCat | `Mathlib/RingTheory/HopfAlgebra/Basic.lean:65`; `Mathlib/RingTheory/Bialgebra/Basic.lean:57`; `TauCeti/AlgebraicGeometry/AffineGroupScheme/Basic.lean:55` | Native algebraic targets; not reconstruction from a geometric category. |
| MonoidalCategory; BraidedCategory; SymmetricCategory; Functor.Braided; Functor.Monoidal | `Mathlib/CategoryTheory/Monoidal/Category.lean:161`; `Mathlib/CategoryTheory/Monoidal/Braided/Basic.lean:49`, 366, 530; `Mathlib/CategoryTheory/Monoidal/Functor.lean:389` | Coherence structures, not merely objectwise tensor identities. |
| Equivalence; Comma; Adjunction | `Mathlib/CategoryTheory/Equivalence.lean:82`; `Mathlib/CategoryTheory/Comma/Basic.lean:67`; `Mathlib/CategoryTheory/Adjunction/Basic.lean:108` | Native categorical data and laws. |
| ActionCategory; Action; FullSubcategory; Representation | `Mathlib/CategoryTheory/Action.lean:48`; `Mathlib/CategoryTheory/Action/Basic.lean:44`; `Mathlib/CategoryTheory/ObjectProperty/FullSubcategory.lean:39`; `Mathlib/RepresentationTheory/Basic.lean:48` | Bare actions/representations do not assert continuity or finite projectivity. |
| Split-pair coequalizer existence/preservation/reflection; HasColimit | `Mathlib/CategoryTheory/Monad/Monadicity.lean:254`, 270, 284; `Mathlib/CategoryTheory/Limits/HasLimits.lean:96` | Separate hypotheses, as needed for reconstruction. |

**Ownership and supplier audit.** Object searches used the main roadmaps, board packages and the available open-head index (`roadmaps grep` and `roadmaps show`), then inspected the cited text. The report distinguishes main versions of existing roadmaps from new-folder supplier heads. No duplicate fully qualified Lean declaration can occur here because Suggested.lean declares nothing. The board's GeometricSatakeAndFusionPartII design assigns the independent rational Gelfand-symmetry route to its own extension; it is not an upstream input to this proof. Searches for Witt-bundle descent, connected-fibre determinant descent, Keel positivity and high-Frobenius rank-one recognition did not identify an earlier owner of these precise retained targets. The geometry-specific constructions therefore remain here, while the following shared constructions are imports:

| Supplier | Resolved locations and consumed object |
|---|---|
| RelativeFarguesFontaine | §§3.1–3.9 (README 1324–1546), §§4.7–4.13 (1735–1870), §§6.5–6.10, 6.16, 7.0–7.6 (2157–2715): Cartier divisors, completed rings, modification gluing and torsor descent. §7.4:2665–2688 explicitly leaves the Grassmannian closed-immersion application here. Coefficient citation failure is R02. |
| VectorBundlesAndIsocrystals | Layer 0:92–94, ramified coefficient rings and equal-characteristic convention: the actual coefficient owner. |
| MotivesAndAlgebraicCycles | §§6.1–6.4:1100–1166, neutral fibre data, coalgebra reconstruction, finite-type/connectedness recognition and relative reconstruction. The Satake bounded representers and verification are retained applications. |
| LanglandsParameterStacks; ReductiveGroups | LPS §4.1:918–940 and §6.2:1293; ReductiveGroups §10B for modules. LPS §0.4 supplies degree conversion. R03–R04 describe the incorrect citations/convention. |
| ReductiveGroupsPartII | RG2.0:437, RG2.0a:943, RG2.1:1445, RG2.3:3760, RG2.4:5509, RG2.5:6704: integral points, restriction of scalars, parahorics, affine Weyl theory and pinned dual data. |
| AlgebraicVectorBundles | L0A–L0C:215–268, tensor/pullback and exterior-power determinants; no re-planning of these operations. |
| SchemeAndStackFoundations | §§0.24–0.26:1565–1680, §§1.5–1.6 and 1.13–1.17:2167–2650, §§2.6, 2.18, 4.9, 4.14: scheme perfections/models, quotient/torsor carriers, coherent pushforward and Hilbert/Quot inputs. |
| EnhancedDerivedSheaves | E1.8:840; E2.8:2399; E3.1–E3.4:1121–1256; E5 abstract:1440–1568 and presentability:1597–1696: enhanced categories and coherent categorical operations. |
| VStackSheavesAndLisseCategories | VS0, VS1 and VS3; VS1.5:539–599 has the divisor-Weil realization and inverse-Frobenius-adjusted action. It must be combined with the convention adapter, not silently renamed geometric degree. |
| DiamondSixOperations | S2–S6; in particular S4.4:872, S5.2:971, S5.5:1070, S6.1–S6.3:1149–1212: support, smoothness, duality. The prounipotent target itself retains the spatial-ball/inverse-limit presentation needed by FS. |
| EtaleDualityAndPerverseSheaves | §§2.1–2.4, 2.7:2199, 2.10:2546, 2.12:2785, §§3.1–3.3, §§5.3:5106, 5.5:5343, 5.6:5524: perversity, semismallness and rational purity. Its IC convention is unnormalized Λ[d]; no half twist is built in. |
| AdicCoefficientsAndComparisons; DiamondsAndVStacks | L0:499, L1:775, L3:1434; D1, D3, D5, D6: coefficient limits, realization, v-descent and finite-stage geometry. |
| CrystallineCohomology; FiniteFlatGroupsAndIntegralPadicHodgeTheory; PadicHodgeTheory | CR.1/CR.7, R07.2/R07.6 and §7.1:1225: crystal/Dieudonné/structural-connection inputs, with the geometric canonical-model comparison retained here. |
| SmoothRepresentationsOfLocalGroups | SR.4:3101 onward: classical spherical Satake is imported, not reconstructed by the trace bridge. |
| InverseGaloisAndArithmeticFundamentalGroups; EtaleCohomologyFoundations | IG.0.T2:501 and T3:536; F.10.2b:1108 and F.10.3:1295: finite-model geometric-Frobenius trace and perfect-complex additivity. |

These searches resolve ownership against the available open work; they do not assert that every future change to those suppliers will preserve the contracts. Generic library carriers have not been counted as proofs of geometric theorems.

**Seeded source sample (15/15 text locations inspected).** All source line numbers below refer to the sources service's line-numbered extraction, not repository files. Printed pagination is retained even where extraction page markers drift because of formulas. Statements are paraphrased here.

| Sampled target | Text inspected | Result and hypothesis comparison |
|---|---|---|
| Positive and full loop spaces | FS VI.1.5, p.192; FS line 7363 | Affine evaluation and v-descent; the affinoid-divisor basis for X is retained. |
| Integral bounded Grassmannian families | SW 20.3.6, p.186 and 20.5.4, p.190; SW lines 7171, 7300 | Integral/special/generic comparisons and properness in the source's coefficient setting. General E and multiple legs use the separately named coefficient and divisor constructions; SW alone is not an all-E statement. |
| Rank-two quadratic cone | Zhu B.10–B.11, pp.486–488; Zhu lines 3340, 3412–3478 | p>2 and GL₂,N=2 retained. Uniqueness is of A, not g. Two multiplication slips in the proof are recorded below. |
| Normalized SLₙ determinant | BS 10.1–10.4, pp.37–39; BS lines 1752–1820 | Reference-lattice normalization, coefficient basis and base-line ambiguity retained. |
| Lattice-position semicontinuity | FS VI.3.2, pp.203–204; FS lines 7763–7785 | Locally finite generation and boundedness enter; constant position yields an invertible lattice, not a chosen generator. |
| Semi-infinite strata/constant terms | FS VI.3.1–VI.3.5, pp.202–206; FS lines 7690–7842 | Attraction and hyperbolic localization apply with the stated equivariance. The roadmap correctly avoids the source's repeated multiplicity in the distinct-support formula. |
| Prounipotent equivariance | FS VI.4.1, pp.207–208; FS lines 7921–7949 | Ordinary cohomology, prime-to-p coefficients and the proof's inverse-limit/ball presentation are essential and retained. |
| Constant-term conservativity | FS VI.4.2, pp.208–209; FS lines 7951–7976 | Quasicompact support and equivariance are retained; no assertion for arbitrary sheaves. |
| One-leg ULA comparison | FS VI.6.7, p.214; FS lines 8198–8206 | The one-leg restriction is retained, including perfect fibres and base-change comparisons. |
| Rational special-fibre weights | Zhu 2.7, 2.11–2.17, pp.434,436–440; Zhu lines 1255–1264, 1518–1531 | Rational coefficients and compact-support degree retained. The roadmap explicitly requires the omitted infinity contribution in the quasi-minuscule calculation. |
| Rational convolution/semismallness | Zhu 2.1.2, 2.2–2.4, pp.431–432; Zhu lines 1168–1192 | Bounded twisted products, proper multiplication and stratified fibre bound; no integral perversity inferred. |
| Fusion/Verdier duality | FS VI.9.5, pp.229–230; FS lines 8762–8777 | Natural duality and fibre comparisons, with perfectness and support hypotheses. |
| Generic reductivity | FS VI.11 proof, pp.235–236; FS lines 9033–9060; DM 2.20,2.22,2.23, pp.24–27, DM lines 1125–1181 | Semisimplicity after forgetting Weil descent, finite tensor generation and characteristic-zero connectedness are separate inputs. |
| Weil restriction | FS IX.6.3, pp.331–332; FS lines 12843–12892 | Chosen embedding, inflation, finite-index induction and closed Grassmannian immersion occur in the source. This does not make induction strong monoidal; the roadmap explicitly disclaims that. |
| All-prime representation complexes | FS IX.2, p.321; FS lines 12434–12454 | Relative Perf base change and extension from exact finite-projective representations are the actual inputs, distinct from restricted-prime parameter-stack generation. R03 concerns the prerequisite locator. |

**Adversarial values (109 rows).** Each row names a target (README line in parentheses), the instance and the actual versus asserted value. “Pass” means that instance agrees, not that finite testing proves the theorem. “Negative control” tests a deliberately omitted hypothesis or wrong construction. The table includes every named target block, the sampled targets, all headline families, and additional defining conventions used across layers.

| Statement | Instances and computed values on the two sides | Result; change |
|---|---|---|
| Standing coefficients and ranks (83–96) | p=2, ℓ=3 and p=3, ℓ=2: ℓ is invertible in residue characteristic in both cases. Rank n=0: lattice module 0 and determinant Λ; tuple (N,0,…,0) has no slot. | Pass; retain n≥1 for that tuple. |
| Collision length and grading (98–106) | D₁=D₂=(t), labels (1,0): completed ring k[[t]], lattice t·k[[t]], length 1; summed position 1. In contrast I_D=(t²) and length of its a-th power quotient is 2a. | Pass; multiplying the first length by 2 would fail. |
| Dominance/component convention (108–113) | GL₂: (2,0)≥(1,1), both sums 2; (1,0) and (0,0) have sums 1 and 0 and are incomparable in coroot order. | Pass; ordinary coordinatewise order would be wrong. |
| Positive/full loops (225) | Gₘ over a geometric DVR O: positive values O×, full values K×; t lies only in K×. The formal empty-divisor evaluation would have one group value; d=0 is explicitly outside this target’s d≥1 scope. | Pass; full loops cannot be replaced by positive loops. |
| Local Hecke stack (249) | Gₘ,O=k[[t]]: isomorphism classes indexed by v(tⁿ)=n; automorphisms at every class are O×. For G=1 both are singletons. | Pass; replacing the stack by the set ℤ loses stabilizers. |
| BD Grassmannian (274) | Gₘ: tⁿO gives label n; multiplying tⁿ by u∈O× leaves the lattice unchanged. Label 1 differs from −1. G=1 gives one point. | Pass. |
| Generic group change (299) | Gₘ→GL₂, z↦diag(z,1): tⁿO goes to tⁿO⊕O, determinant valuation n on both descriptions. Identity map sends every lattice to itself. | Pass; no arbitrary group homomorphism asserted closed. |
| Ordered legs (315) | Two disjoint supports give O₁×O₂ and labels (1,0); on collision the local label becomes 1. Empty I gives no modification and a unit object. | Pass; two independent local factors do not survive collision. |
| Generic Schubert bounds (343) | GL₂: dim Gr_(1,0)=1=⟨2ρ,(1,0)⟩; dim Gr_(2,0)=2, lower stratum (1,1) has dimension 0. | Pass. |
| Galois descent (368) | Quadratic norm-one torus: splitting involution sends n to −n; orbit of 1 is {1,−1}, orbit of 0 is {0}. A single label 1 is not stable. | Pass; descend stable unions. |
| Integral affine flags/Demazure spaces (380) | Reduced word s: tower fibre P¹, dimension 1=length(s); empty word gives a point, dimension 0. For GL₂ the flag projection fibre is P¹. | Pass; reduced-word and model hypotheses matter. |
| Étale divisor lifts (408) | Two distinct support points and two labelled copies: 2²=4 lifts. One doubled support gives 2 lifts, not 4. d=0 and empty target: exactly one empty map. | Pass. |
| Smooth scheme loops (422) | Z=A¹ and a doubled point D: sections are a+bt modulo t², dimension 2=dn for d=2,n=1. Z=point gives dimension 0. | Pass. |
| Congruence filtration (434) | Gₘ: (1+tᵐa)(1+tᵐb)=1+tᵐ(a+b) mod t^(m+1). First graded piece rank 1; for GL₂ rank 4. | Pass; m≥1 excludes the nonadditive reduction group. |
| Truncated loops (454) | Gₘ over 𝔽₂[t]/t²: units 1 and 1+t, two elements; reduction has one element and additive kernel has two. m=1 has no higher kernel. | Pass. |
| Open-cell smoothness (482) | GL₂,μ=(2,0): flag dimension 1 plus one unipotent direction =2=⟨2ρ,μ⟩. μ=(1,1): flag and unipotent quotient both points, dimension 0. | Pass. |
| Finite action truncation (494) | GL₂,μ=(2,0): conjugating I+tᵐE₁₂ by diag(t²,1) gives I+t^(m−2)E₁₂. m=2 is integral; m=1 is not. | Pass; “at least” is correct, not a strict inequality. |
| Minuscule flag/filtration (506) | Λ=tOe₁⊕Oe₂: Fil⁰=ke₂, Fil¹=k². Dimensions 1 then 2; the opposite/inverse convention selects the other flag. | Pass; ascending convention retained. |
| Witt lattice carrier (533) | n=0 gives the unique zero lattice; n=1,Λ=pᵃW gives integer a and full localization K. The zero submodule for n=1 localizes to 0≠K. | Pass; spanning condition excludes the wrong model. |
| Witt torsion type (560) | λ=(3,1): quotient length 4; graded ranks (2,1,1,0), summing to 4. λ=(2,2) has ranks (2,2,0), same length but smaller first partial sum. | Pass. |
| Finite-jet presentation (588) | n=1,N=1,h=2 over 𝔽₂: A=2 mod4; units 1,3 both stabilize A, since 2·3=2 mod4. For N=0, invertible A has trivial stabilizer. | Pass; stabilizer data cannot be discarded. |
| Perfect algebraic-space bounds (614) | n=1 and fixed valuation N: bound is a point, dimension 0. n=2,N=1: bound is perfected P¹, dimension 1. | Pass; representability is not inferred merely from matrices. |
| Witt Demazure filtration (630) | Type λ=(2,0) has row ranks (1,1). For Q=W/p² the only rank-one first kernel is pQ; for Q=k² the kernels are lines, parameter space P¹. | Pass. |
| Resolution fibres (655) | Exact type (2,0): fibre point, H⁰(O)=k, Hⁱ=0 for i>0. Lower type (1,1): perfected P¹, same coherent cohomology, dimension 1. | Pass. |
| Witt-bundle descent/completion (667) | Identity Čech cover: descent of W_m(R)ⁿ gives rank n. Compatible rank-one tower has limit W(R), reduction W_m(R); rank-zero tower gives 0. | Pass; a tower with increasing ranks is excluded. |
| Fibral descent (679,689) | P¹→point: O descends to k, O(1) does not (degree 1 versus degree 0). Two points→point: End(O)=k² versus diagonal image k, so pullback is not full. | Pass; connectedness excludes the latter. |
| Strong coherent fibre criterion (689) | P¹ fibre has H⁰(O)=k,H¹(O)=0. An ordinary elliptic curve before perfection has H¹(O)=k≠0; connectedness alone does not say higher direct image vanishes. | Pass; stronger hypothesis is separate. |
| Geometric determinant (701) | Exceptional P¹ over Q=k²: universal subline O(−1), quotient O(1); product determinant O, degree 0. One-step quotient determinant O(1) has degree 1. | Pass; only the product descends along this exceptional fibre. |
| Positivity (730) | Same P¹: weighted product has degree a₀−a₁>0 when a₀>a₁; unweighted degree 0. On a Schubert line downstairs the determinant degree is 1. | Pass; pullback need not be ample on contracted curves. |
| Frobenius models (744) | On P¹ in characteristic p, F*O(1)=O(p), degrees 1 and p on the corresponding models. The p-th-root class on the perfection is represented one stage later. | Pass; model must be retained. |
| Keel exceptional locus (746) | P¹ with O(1): degree 1, exceptional locus empty, semiample yes. With O: degree 0, exceptional locus all P¹, restriction and original both semiample. | Pass. |
| Witt projectivity (758) | n=1 fixed λ: point, projective. n=2 λ=(1,0): perfected P¹ with determinant O(1); positive degree 1. | Pass; no positive-dimensional rank-one assertion. |
| Finite models/étale realization (772) | A¹ and its Frobenius perfection have the same geometric points and finite étale site; Frobenius gives one preimage of each algebraically closed-field point, while its finite-model degree is p. | Pass; étale invariance does not erase trace degrees. |
| Equal-characteristic models (784) | Q=k[[t]]/t³⊕k[[t]]/t has length 4 and graded ranks (2,1,1), matching the Witt example (560). | Pass; t replaces p. |
| Integral bounded families (802) | GL₂,minuscule (1,0): generic flag P¹ and special perfected P¹ both dimension 1; trivial bound has point fibres on both sides. | Pass; source generality uses the named adapters. |
| Parahoric flags/components (824) | GL₂ hyperspecial: components ℤ via determinant valuation, labels (1,0) and (0,1) both component 1. Iwahori cell for one simple reflection: dimension 1=ℓ(s). | Pass; do not replace components by individual coweights. |
| Integral parahoric properness (842) | Identity representation gives identity on every bound. Split Gₘ parahoric: each fixed integer bound is a point over the divisor base, proper of relative dimension 0. | Pass in these controls; published GLX generality uncertified below. |
| Canonical determinant models (856) | N=0: determinant locus is GL_n in the h-jet space, no vanishing equations and codimension 0; lattice quotient is a point. n=2,N=1 gives P¹ and its degree-one Hodge determinant. | Pass. |
| Quadratic cone (881) | At p=3,x=y=z=0, A=3I modulo27, determinant 9. Both g=I and g=I+9E₁₂ satisfy Ag=A and det g=1. At x=y=z=1, det A=p²−1+1=p². | Pass; A unique does not imply g unique. |
| Normalized SLₙ determinant (902) | M=reference lattice: numerator and denominator identical, ratio O. n=0 or1 gives a point and O. Translating both comparison terms leaves their ratio unchanged. | Pass; omitting reference factor changes the base line. |
| Determinant sections (928) | Rank-one SL₁ Grassmannian is a point: H⁰(O)=k has dimension 1. The “infinite dimensional” clause requires positive-dimensional bounds and does not apply. | Pass. |
| Admissible flag locus (946) | μ=0: admissible set {1}, dimension0. Affine rank-one minuscule class: maximal translation length1 and its length-zero boundary are both included. | Pass for the union; R05 moves the Satake-dependent local-model comparison later. A singleton maximal cell is not the closed bound. |
| Flag incidence correspondence (970) | Rank-one flags are P¹, and relation s means distinct lines. For x=y, middle z ranges over P¹ minus x, namely A¹; for x≠y it ranges over P¹ minus x,y, namely Gₘ. Identity first relation gives z=x. | Pass; projection is not an isomorphism on the lower stratum. |
| Affine-flag fibre bounds (994) | u=v=s: ordinary uv=1 has fibre A¹, dimension1=(1+1−0)/2. Demazure u*v=s has fibre Gₘ, dimension1=1+1−1. For u=1,v=s the fibre is a point and the length-additive map is an isomorphism. | Pass for the identity fibre; retain stratified bounds. |
| Divisor-length semicontinuity (1023) | In k[[t]], f=tᵃ has length a; if divisor equation is ξ=t² then f=ξᵃ has length2a. Unit f has length0; zero f has infinite length and is excluded. | Pass. |
| Lattice-position semicontinuity (1037) | GL₂ family matrix [[t,x],[0,t]]: x≠0 gives type(2,0), x=0 gives type(1,1); determinant length stays2, first partial sum drops2→1. | Pass; lower bounds specialize closed. |
| Semi-infinite strata/CT (1051) | Torus Gₘ: N=1, degree shift0, CT of weight n is weight n. Two colliding labels1,0 give shift/position1, not2. | Pass; ordinary local weights counted once. |
| Affine semi-infinite intersections (1076) | GL₂ minuscule μ=(1,0): the two attracting pieces of P¹ are A¹ and point, dimensions1 and0; ⟨ρ,μ+λ⟩ gives1 and0 for λ=(1,0),(0,1). | Pass. |
| MV intersections (1088) | Same minuscule object: each of its two weights has one top component, hence multiplicity1. A weight outside the two coordinate weights has empty intersection and multiplicity0. | Pass. |
| Prounipotent equivariance (1106) | Vector-group kernel, ℓ≠p: ordinary RΓ(A¹,Λ)=Λ; compact RΓ_c(A¹,Λ)=Λ(−1)[−2], not Λ. Constant filtration on C₂ would yield Rep(C₂)≠Vect for ℓ=3. | Pass with the explicit separated/complete presentation; negative control excludes constant filtration. |
| CT conservativity (1120) | For Gₘ, A with weight modules M₀,M₁: CT(A)=(M₀,M₁); zero iff both modules are0, equivalently A=0. For PGL₂ minuscule object, CT has two rank-one weights, not zero. | Pass. |
| ULA Hecke complexes (1132) | On a point over R=ℤ/4, [R —2→ R] is perfect; H⁰ and H¹ are each ℤ/2, not projective. Zero complex is perfect with both cohomology groups0. | Pass; ULA alone does not imply projective cohomology. |
| ULA recognition (1157) | Torus point: recognition asks for the same perfect complex on both sides. The complex [R —2→ R] passes derived perfection; a module of infinite projective dimension in degree0 does not. | Pass. |
| One-leg ULA comparison (1174) | Trivial group or weight-zero torus object M: special and generic restrictions both M, identity composite M→M. Two coincident legs retain convolution data, so this one-leg test gives no multileg equivalence. | Pass. |
| Relative perverse t-structure (1196) | Smooth stratum dimension1: Λ[1] has ordinary cohomology in degree−1, perverse degree0. Point dimension0: Λ[0] is perverse; Λ[1] has perverse degree−1. | Pass; relative dimension is essential. |
| Equivariant perverse descent (1220) | Trivial group action and identity cover: perverse degree0 remains0. GL₂ minuscule CT pieces require the two opposite shifts ±1; after shifting, both weight modules lie in degree0. | Pass. |
| Flat perverse objects (1232) | On a point over ℤ_ℓ, M=ℤ_ℓ has Tor₁(M,𝔽_ℓ)=0; M=𝔽_ℓ has Tor₁(M,𝔽_ℓ)=𝔽_ℓ. Derived tensor then has an unwanted degree−1 term. | Pass; flatness excludes the second object. |
| Standard/costandard (1261) | Closed minuscule P¹: j is identity, so standard=costandard=Λ[1]. On a point all three objects are Λ[0]; over an open nonclosed stratum j! and j* have different boundary stalks. | Pass. |
| Demazure fibre stratification (1285) | Fibre P¹ over type(1,1) stratifies as A¹⊔point, dimensions1 and0; number of irreducible top components1. | Pass. |
| Rational parity/torsion bounds (1301) | P¹ cohomology: H⁰=Λ,H²=Λ(−1), odd groups0 for Λ=ℤ₂ orℤ₃; reducing gives two one-dimensional even groups. | Pass; does not assert all Schubert ICs torsion-free. |
| Rational special-fibre weights (1319) | Type A₂ adjoint highest-root representation: six root weights of multiplicity1 and zero weight multiplicity2, total8. GL₂ minuscule has two weights of multiplicity1, total2. | Pass; infinity contribution must produce zero-weight rank2. |
| Satake category (1348) | Torus with Λ=ℤ/6: 3Λ and4Λ are finite projective summands and belong; the zero object belongs. Over ℤ_ℓ the nonflat residue module does not belong. | Pass; this makes R01 a counterexample inside Satake too. |
| Cohomology fibre functor (1373) | Minuscule P¹: total rank2; torus single weight Λ: total rank1. Over ℤ/6, ranks of3Λ on the two connected coefficient components are(1,0), finite projective but not constant rank. | Pass; finite projective need not mean globally free. |
| Satake Verdier duality (1403) | On P¹, DΛ[1]=Λ[1](1); H*(Λ[1]) has two terms and its dual has the inverse Tate eigenvalues. On point, DΛ=Λ. | Pass; twist is retained. |
| Ambient convolution/support (1419,1430) | Λ=ℤ/6, M=3Λ,N=4Λ at0: input supports{0},{0}; M⊗N=0, output support∅ versus proposed{0}. Over field: weights1 and−2 produce weight−1 with rank1. | **Fail R01**; coefficientwise formula and containment. |
| Convolution associator/unit (1444) | Torus labels1,2,−4: (1+2)−4=1+(2−4)=−1; label0 unit gives0+1=1. Coefficients k²,k³,k⁴ give rank24 on both parenthesizations. | Pass; coherent maps still require correspondence calculus. |
| Rational semismall convolution (1456) | GL₂ two minuscule bounds: source dimension2, target open type(2,0) fibre0; lower type(1,1) fibre P¹ of dimension1, bound ⟨ρ,(2,0)−(1,1)⟩=1. | Pass; bounded space is twisted, not a product identification. |
| ULA convolution (1474) | Torus point with perfect complexes k[1],k[−1]: convolution k[0], still perfect. Zero convolved with any object is0. | Pass. |
| Nonpositive perverse convolution (1486) | On a point, 𝔽_ℓ⊗ᴸ_(ℤ_ℓ)𝔽_ℓ has H⁰=𝔽_ℓ,H⁻¹=𝔽_ℓ and Hⁱ=0 for i>0. | Pass for ≤0, not for heart closure without flatness. |
| Satake convolution closure (1500) | Flat torus modules Λ²,Λ³ give Λ⁶ in degree0; nonflat example in preceding row gives an extra degree−1 term. | Pass; R01 affects support equality, not closure. |
| Internal duals (1512) | Torus object at n with coefficient rank r: sw*D has weight−n, coefficient dual rank r; evaluation lands in weight0. D alone leaves support n. | Pass; inversion is necessary. |
| Modular minuscule cycles (1524) | PGL₂ minuscule fourth convolution: SL₂-invariant tensors have dimension2 in characteristic0 and2; normalizer invariants dimension3 in characteristic2. | Pass in this decisive small case; excludes normalizer. |
| One-leg Satake equivalence (1536) | Torus weight n with finite projective M: restriction to special and generic legs leaves label n and module M. Unit gives n=0,M=Λ on both sides. | Pass. |
| Disjoint-leg locus (1585) | Two distinct points: I₁+I₂=O and two completions; same point twice: I₁+I₂=(t)≠O and one completion. Empty I has final disjoint locus. | Pass. |
| Restriction across diagonals (1610) | Unit/torus external kernels with labels1,2: off diagonal fibre Λ, collision extension fibre Λ at combined weight3. Arbitrary sheaf supported only on the diagonal restricts to0 and is outside the stated extension class. | Pass; ULA/Satake hypothesis is necessary. |
| Support parity (1622) | GL₂: ε(1,0)=1, ε(0,1)=−1 mod2=1; their coroot difference changes pairing by2. ε((1,0)+(1,0))=0=1+1 mod2. | Pass. |
| Symmetric fusion (1658) | Two odd cohomological generators: Koszul swap−1 times component correction−1 =+1. Even/odd swap has correction+1. In characteristic2 both signs are1. | Pass; ordinary fibre symmetry recovered. |
| Finite-set functoriality (1687) | Labels1,2,3: collapsing three legs either successively or at once gives6; permutation (12) gives2+1+3=6. Empty fibre inserts weight0 and coefficientΛ. | Pass; nullary unit retained. |
| Weil realization (1713) | With q=3: arithmetic degree(Fr)=1, geometric degree(Fr⁻¹)=1. Tate values are3 on Fr and1/3 on Fr⁻¹; inertia value1. | R04 repairs the supplier convention; intended values consistent. |
| Symmetric constant terms (1733) | GL₂ minuscule: two rank-one weight fibres; parity correction on each odd pair changes −1 to+1, matching ordinary flip on the two-dimensional representation. | Pass. |
| Fusion and Verdier duality (1743) | Torus labels m,n: D preserves the support m+n and dualizes M⊗N to M∨⊗N∨; internal dual adds inversion, giving −(m+n)=−m−n. Rank2×3 gives rank6 on both sides. | Pass; distinguish Verdier from internal dual. |
| Bounded left adjoints (1770) | Torus finite support S={0,1}: F is direct sum; its left adjoint sends M to(M,M). Hom((M,M),(A₀,A₁))=Hom(M,A₀⊕A₁). S=∅ gives zero adjoint. | Pass; finite bound is used. |
| Imported reconstruction application (1797–1815) | Finite torus support with two labels: representing object has fibreΛ², dual coefficient coalgebra has two grouplike basis elements. A one-dimensional fibre cannot distinguish the two weights. | Pass; not a new abstract reconstruction owner. |
| Relative Tannaka hypotheses (1815) | Trivial G: category is the coefficient category, F=id and representing unitΛ; split coequalizer and its image are the same module. Torus two-label bound gives rank2 representer as above. | Pass on controls; no conclusion is assumed as a hypothesis. |
| Coordinate Hopf algebra (1831) | Gₘ: O(Ĝ)=Λ[z,z⁻¹], Δz=z⊗z, εz=1, S(z)=z⁻¹. Multiplying z and S(z) gives1; using the undualized finite representer alone lacks this full algebra. | Pass. |
| Multileg/coefficient reconstruction (1856) | Two torus legs: Λ[z₁±¹,z₂±¹]; diagonal sends character pair(m,n) to m+n. Modℓ sends coefficientsΛ toΛ/ℓ with these same monomials. | Pass. |
| Rational geometric semisimplicity (1870) | Trivial G with arithmetic Weil Jordan matrix [[1,1],[0,1]]: descended representation is not semisimple, geometric vector space is k² and semisimple. | Pass; forgetting Weil descent is essential. |
| Generic reductivity (1880) | Torus k[z±¹]: tensor generator weights±1, finite-type coordinate algebra and connected Gₘ. For any nonzero weight n, powers give distinct weights n,2n,3n,…; finite subquotient hull is not tensor closed. | Pass in characteristic0. |
| Rational Witt Tannakian category (1896) | Unit IC₀ has End=Q̄_ℓ; GL₂ minuscule fibre dimension2; parity-corrected flip is ordinary+1 on odd-generator pairs. | Pass; transported symmetry is distinguished from Zhu's independent construction. |
| Torus/rank-one identification (1929) | G=PGL₂: dual standard weights+1,−1; fibre rank2, determinant character0. Component groupℤ/2 gives μ₂, not Gₘ; atℓ=2 it is nonreduced. | Pass. |
| Frobenius images/subgroups (1941) | α₂: Frobenius sends coordinate x to x²=0, image trivial/reduced. SL₂: image remains SL₂. Subgroup dimensions T=1,B=2,SL₂=3; N(T) has two components. | Pass; connectedness separates N(T) from the list. |
| Integral rank one, ℓ=2 (1957) | n=0,2,4: weight-zero tensor dimensions1,2,6; N(T)-invariant dimensions1,1,3; SL₂-invariant dimensions1,1,2. First separation here is n=4:3≠2. | Pass; repairs the source's highest-weight-only argument. |
| Generic root datum (1969) | PGL₂ cocharacter standard weight gives dual SL₂ root2; reflection sends n↦−n on both lattices. Root line Hom(Q_ℓ(−1),Q_ℓ)=Q_ℓ(1), geometric eigenvalue q⁻¹. | Pass. |
| Flat-module integral recovery (1979) | id:R→R passes both tests. π:R→R localizes to an isomorphism but reduces to zero on R/π, not injective. R→R[1/π] likewise has reduction R/π→0. | Pass; no finite-generation assumption needed by the least-power argument. |
| Integral recovery (1987) | Torus model has no rank-one Levis but character latticeℤ already recoversΛ[z±¹]. Atℓ=2 the adjoint-first route invokes simply connected dualSL₂; the general Prasad–Yu exception cannot be ignored. | Pass in controls; integral points are an independent input. |
| Pinned dual identification (1999) | Gₘ dual Gₘ with n↦zⁿ; PGL₂ dualSL₂ with root lineΛ(1), not the inverse Tate line. Atℓ=2 the diagonalizable componentμ₂ is retained. | Pass. |
| Rational Witt Satake (2013) | GL_n minusculeμ=(1,0,…,0): P^(n−1) has n even cohomology generators and n standard weights of multiplicity1. n=1 gives a point and one character. | Pass. |
| Normalized integral Satake (2027) | PGL₂ half twist with q=r²: raw open-cell trace−r⁻¹, corrected trace+r⁻¹; semidirect map(g,w)↦(g t(w),w) respects multiplication because t is the twisting cocycle. For torus2ρ=0, t=1. | Pass subject to R04's convention adapter. |
| Levi normalization (2054) | GL₂ LeviT: t_G/t_T=diag(κ,κ⁻¹), determinant1, centralizesT; trivial Levi chain gives correction1. Nested differences(ρ_G−ρ_M)+(ρ_M−ρ_L)=ρ_G−ρ_L. | Pass; untwisted inclusion alone would miss the cocycle. |
| Adjoint-isomorphism naturality (2068) | Central isogeny SL₂→PGL₂ dualizes to SL₂→PGL₂ in the opposite group direction. A standard two-dimensional SL₂ representation does not descend to PGL₂ when2 is invertible; no equivalence is claimed. | Pass; direction and central characters matter. |
| Product naturality (2078) | Gₘ×Gₘ characters(m,n); external characters give z₁ᵐz₂ⁿ. Sum of characters(1,0) and(0,1) has rank2 but is not a single rank-one external character. | Pass; statement is not “every object is external”. |
| Weil restriction (2088) | Quadratic extension: Ĝ=Gₘ², nontrivial Weil element swaps the two factors. Induction of the unit has rank2; its tensor square rank4, while induction of unit⊗unit rank2. E′=E gives rank1. | Pass for inflation/induction diagram; explicit disclaimer prevents a false strong-monoidal reading. |
| Chevalley involution (2100) | Torus weight n goes to−n. PGL₂ root-line correction is−1, reducing to+1 in characteristic2; applying inversion twice returns n. | Pass. |
| All-prime representation complexes (2116) | Ĝ=Q=1: relative tensor Perf(ℤ_ℓ[r])⊗Perf(ℤ_ℓ[r])Perf(Λ)=Perf(Λ). Split torus: cone of0:k_m→k_n retains weightsm,n and their shifts. PGL₂ atℓ=2 has |π₁|=2, so a prime restriction would incorrectly exclude it. | Pass; supplier prerequisite fixed by R03. |
| Perfect Satake extension (2132) | G=1: Λⁿ maps toΛⁿ in degree0; cone(id:Λ→Λ) maps to0, shiftΛ[1] toΛ[1]. No assertion that every target morphism is lifted follows from these values. | Pass; fullness/equality of image closure explicitly not claimed. |
| Normalized trace (2173) | PGL₂ minuscule d=1: IC open stalk L[1](1/2) gives alternating trace−r⁻¹; multiplying by parity−1 gives+r⁻¹. d=0 unit gives1; zero object gives0. | Pass. |
| Trace convolution (2198) | Torus indicatorsδ_m*δ_n=δ_(m+n) with vol(K)=1; unitδ₀ acts identically. Rank2 and3 coefficient traces multiply to6 when Frobenius is identity. | Pass. |
| Trace constant term (2208) | GL₂ t=diag(π,1): δ_B(t)=q⁻¹, half modulusr⁻¹. The minuscule indicator has transformr(z₁+z₂); corrected IC functionr⁻¹ times it gives z₁+z₂. Torus modulus1 gives identity. | Pass; normalization cancels r. |
| Classical/geometric comparison (2220) | PGL₂ minuscule: S(1_(KμK))=r(z+z⁻¹), S(τ_IC)=z+z⁻¹; Gₘ weightn giveszⁿ along both paths. At q=1 the scalar cancellation is formally1, though q=1 is not a residue-field cardinality. | Pass; no q=1 local field assumed. |

## Not verifiable

- **GLX published edition:** the sources service resolved the cited Springer PDF/DOI 10.1007/s00222-025-01386-1 only as paywalled and marked it uncertified. I did not bypass that access restriction. Thus the published §§3.2–3.3, Lemmas 3.3–3.4, pp.822–823 used for integral parahoric assertions were not certified against that edition. A legal arXiv version is identifiable from supplier references, but its numbering was not used as a substitute for the published locator.
- All fifteen seeded targets had readable legal text; no README locator was explicitly marked unverified. The other thirteen cited works were fetched legally through the sources service. Fetching a work is not a claim that every nonsampled proof in it was independently re-proved.
- The review verifies finite instances, source support and stated proof inputs. It does not certify the unfinished characteristic-two tilting/Frobenius-preimage proof for every exponent by a finite computation; the n=4 normalizer witness above checks the indispensable first obstruction. This is a proof target, not an assumed theorem from the defective source lemma.

## Source issues

- **Error** in FS at §VI.3, formula (VI.3.1) and following distinct-support description, printed p.202 (FS line 7721): the source says distinct-support coweights receive their divisor multiplicities again; it should be the unweighted sum of local positions after collision; affects a stated result.
- **Gap** in FS at Proposition VI.4.1 and proof, printed pp.207–208 (FS lines 7921–7946): the source says successive affine-line quotients suffice; it should require the separated complete presentation and spatial ball-limit structure used in the proof; affects a stated result.
- **Error** in FS at Lemma VI.11.2, printed p.237 (FS lines 9107–9113): the source says highest-weight injectivity and torus containment force SL₂ in every characteristic; it should exclude the characteristic-two normalizer and its Frobenius preimages by additional invariant information; affects a stated result.
- **Misprint** in Zhu at proof of Lemma B.11, printed p.488 (Zhu lines 3413–3423): the source says the adjugate product has scalar p²[λ]; it should have p²[λ]⁻¹ under the preceding convention [λ]det(X)=p²; affects the proof.
- **Misprint** in Zhu at proof of Lemma B.11, printed p.488 (Zhu lines 3468–3472): the source says g is obtained as X A⁻¹ for the equation X=A g; it should use A⁻¹X with the corresponding adjugate calculation; affects the proof.
- **Error** in Zhu at equation (2.2.13), printed p.439 (Zhu lines 1518–1525): the source says the preimage's compact cohomology consists only of the shifted negative-cell contribution; it should also include the infinity-section contribution through localization; affects the proof.

- **Misprint** in FS at Corollary VI.9.5, printed p.229 (FS line 8764): the source says D is composed after the fibre functor in the duality comparison; it should place Satake Verdier duality before F^I, giving F^I∘D≅(F^I)*; affects a stated result.
