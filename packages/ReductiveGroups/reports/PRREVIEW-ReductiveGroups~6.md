# Review of ReductiveGroups (pull request #1332 at ed4547c)

**Verdict:** needs changes

## R01 (P1) — The spectral companion still imports the analytic comparison from a consumer

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:133`: “a target of the lower FCO dictionary”.

**Claim:** This attributes the analytic comparison to FormalConnectionsOpers, recreating a supply cycle despite the README's local ownership.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:240` consumes ReductiveGroups Layers 0–9; line 2444 sends ReductiveGroups Layer 11 back to its §4.3. The two edges form ReductiveGroups → FormalConnectionsOpers → ReductiveGroups.

**Repair:** Point the companion to local §§3A.5 and 11.0, removing the reverse supplier attribution. The SL₂ chart at diag(1,−1) has derivative coefficients −2,2,1 and determinant −4, using those local targets. The README-only dependency checker does not scan this attribution.

## R02 (P2) — Forty-one data constructions still contain admissions

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63`, “noncomputable def centerHomeomorph”; `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:45`, “noncomputable def canonicalSCInput”.

**Claim:** All scoped Lean files are acceptance files. Homeomorphisms, Lie structures, bases, actions and integral models cannot be introduced by admitted definitions, including admissions in their structure laws.

**Witness:** Recounted constructors containing `sorry`: IntegralRational 3, SignedADE 11, FoldingADE 12, CoverLift 5, SpectralWeyl 9, ChevalleyModel 1: total 41. Suggested, OrbitGeometry and BruhatCoordinate contain none.

**Repair:** Delete these admitted constructors and their dependent acceptance declarations. Keep the heavy constructions and equations in the README and name their unavailable carriers in the relevant module docstring. Keep only simple real-bodied definitions needed for headlines. Do not relocate admissions. The centering control is (1,3)↦(2,(−1,1)), with inverse addition; for n=0 the configuration space is a point, so an extra ℂ factor is impossible.

## R03 (P2) — The Chevalley acceptance interface still admits the wrong group

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23`, `SCRealizationInput`; lines 37–39 require only root eigenvalues and weight generation. README line 3016 now explicitly describes the rejected zero-root example.

**Claim:** Packaging operands of the native toral-closure constructor does not specify a realization of the declared root datum. The sole conjugation theorem holds for the wrong model too.

**Witness:** For A₁ use the standard representation on ℚ², lattice ℤ², genuine diagonal H, weights ±1, and both root vectors zero. Every field holds; root maps are identities; closure dimension is 1 rather than 3.

**Repair:** Remove the surrogate constructor and its dependent declarations; retain the full-frame construction in §9B and the missing-carrier explanation in Suggested. A future native interface must require the normalized root/coroot frame and its identification with the prescribed datum. On this witness, [E,F]=H becomes 0=diag(1,−1), which fails; genuine E₁₂,E₂₁ satisfy it. The new README Check does not add that law to the Lean record.

## R04 (P2) — A statable complete-reducibility headline is absent

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1358`: “for smooth connected affine G in characteristic zero it is equivalent to reductivity”; `TauCetiRoadmap/ReductiveGroups/Suggested.lean:8` lists its headlines without this theorem.

**Claim:** The characteristic-zero reductive ⇔ linearly reductive theorem is a deep endpoint and an input to §6A. Both predicates and the finite-type Hopf carrier already exist at the pins. It cannot be omitted on missing-carrier grounds.

**Witness:** A scratch theorem on `TauCeti.FiniteTypeCommHopfAlgCat` with explicit `CharZero`, smoothness and geometric connectedness, concluding equivalence of the two native predicates, elaborated successfully with one `sorry` warning.

**Repair:** Add this headline with `sorry`, using the native predicates, and identify it in the module docstring. The tested signature is:

```lean
theorem reductive_iff_linearlyReductive (k : Type u) [Field k] [CharZero k]
    (H : TauCeti.FiniteTypeCommHopfAlgCat.{u, u} k)
    (hsmooth : Algebra.Smooth k H)
    (hconnected : TauCeti.geometricallyConnectedCommHopfAlgProperty k H.obj) :
    TauCeti.reductiveCommHopfAlgProperty k H ↔
      TauCeti.linearlyReductiveCommHopfAlgProperty k H.obj := by
  sorry
```

Use the individual native LinearlyReductive and Reductive.Basic modules. Over ℚ, Gₘ gives true↔true and Gₐ false↔false. Removing characteristic zero fails for SL₂ in characteristic 2: reductive is true, but the Sym² extension in the README does not split. This is not an API tautology.

## R05 (P2) — The RootSystems supplier gap is not registered

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:352`: “Required supplier extension — gap:root-automorphism-based-factorization”; line 2498 consumes it.

**Claim:** Moving generic Weyl/based factorization to RootSystems repairs the ownership choice, but a README-only gap is not the declared supplier contract required by this package workflow. There is no matching readable `design/plan.json` entry.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:296` supplies chambers, not the factorization. The supplied revision's §2.1 at line 261 supplies it, but revising an existing roadmap does not replace main as a supplier.

**Repair:** Register the same slug with supplier RootSystems, its section and a precise one-sentence need in the package plan's `gaps`, and use the corresponding “What RootSystems must provide (gap:...)” contract in the README. Do not re-plan the generic theorem locally or silently consume the revision. The requested complement remains W⋊D→Aut(P), (w,δ)↦wδ; A₁ has order 2=2·1 and A₂ 12=6·2, with δs₁δ⁻¹=s₂. This is a registration defect, not a mathematical objection to those equations or a demand that a valid declared gap already be implemented.

## R06 (P2) — Relative structure is unnecessarily restricted to Noetherian affine bases

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:2158`: “For S=Spec R, R any commutative Noetherian ring”.

**Claim:** This restriction governs the relative center, derived group, maximal-torus and Borel constructions and base change. The cited source treats arbitrary schemes. It excludes ordinary base changes even for split models, contrary to the required general-library scope.

**Witness:** For R=k[x₁,x₂,…], GL₂,R is smooth affine finitely presented, with center Gₘ,R, derived group SL₂,R and Borel scheme ℙ¹,R. Conrad Definition 3.1.1 and Theorems 3.3.4, 5.3.1 admit this base.

**Repair:** State §8.2 for arbitrary schemes, affine locally, keeping the actual finite-presentation/smoothness hypotheses on the group. Add the necessary finite-presentation limit and gluing comparisons as named targets or precise supplier contracts. For pinned classification retain nonemptiness and the specified splitting data; do not impose connectedness where Conrad 6.1.17 uses a fixed split datum on a possibly disconnected base. Test R above and S=Spec k ⊔ Spec k: the same fixed pinned GL₂ datum realizes on both components, with the stated center and Borel base-change equations.

## R07 (P3) — All eight companions violate the import form

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`: “import TauCetiRoadmap.ReductiveGroups.SignedADETargets”; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:1` imports a Mathlib submodule.

**Claim:** The single `import Mathlib`, followed only by actually used native TauCeti modules, is required in each scoped file. The passing Suggested build does not exempt its companions.

**Witness:** CoverLift imports SignedADE; IntegralRational and OrbitGeometry import Suggested; Folding imports companions. All eight lack the required Mathlib root import, and several instead import Mathlib submodules.

**Repair:** After R02/R03, retain only conforming acceptance declarations with native imports. Remove roadmap-import chains. Recheck each surviving header and elaborate Suggested. The isolated scratch probe successfully elaborated the combined native imports; no PR file was edited.

## R08 (P3) — Companion API equations and small checks are acceptance padding

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204`, `rationalDistributionAction_apply`; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:38`, `wrong_left_complement_overlaps`.

**Claim:** Definition expansions, specialized native equations and small matrix checks are not headline acceptance theorems. Their location in companions does not change this.

**Witness:** A fresh scratch probe closes `rationalDistributionAction_apply` with `rfl`. FoldingADE line 329 uses `LinearMap.fixedSubmodule_eq_ker`. Native ToralClosure/Points line 241 supplies the Chevalley companion's sole conjugation equation.

**Repair:** Delete these from the acceptance Lean files; if consolidating, delete them from `Suggested.lean`, rather than proving them in place. Keep their mathematics as README APIs/Checks. On a weight-three vector, both action expressions are f(t³)m; the A₂ factor-order check still computes 7=1+2·3. The same policy covers the companion's named boundary examples and basis-coordinate equations.

## R09 (P3) — The whole-document specification and source record remain incomplete

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1535`, “6B: complex reductive coset affineness”; line 3299, “10B. Induction, Weyl modules and simple heads”.

**Claim:** The revised §§5–8 now give substantial statements, APIs and discriminating Checks, but the remaining blocks still lack the required exact locators and per-definition tests. The folder also has no `sources.toml`. Several companion declarations lack mathematical docstrings.

**Witness:** §6B has no theorem/page locator or its own three Checks. §10B defines ∇, Δ and contravariant duality without locators attached to those claims. FoldingADE line 310 still says “exact-word certificates”.

**Repair:** Complete the standing checklist for the remaining blocks: exact hypotheses and locators, individual dependencies, APIs, and three discriminating Checks per definition; document surviving declarations and record every cited work with its legal-source or uncertified status. Replace certificate wording with the mathematical spanning statement. For §6B test H=1, H=A, and SL₂/T (affine), and retain SL₂/B=ℙ¹ as the nonreductive-subgroup negative control. For duality, distinguish the ordinary dual's −w₀λ from the contravariant dual's λ, including a central Gₘ character, where −λ and λ differ.

## Verified sound

This full review read the 3,876-line README and all nine scoped Lean files. The changes preserve the existing roadmap's subject and extend its mathematical interfaces; I do not classify the entire roadmap as a replacement plan. The PR worktree is unchanged; the outside-folder diff is empty. Main supplier checks used snapshot fa41b37; existing-roadmap revisions were ownership evidence, not replacements for main. ReflectionInvariantTheory and NilpotentOrbits were read as main-branch shape examples.

### Disposition of all eight previous findings

The current passages were checked before the full pass. No supplied repair report marked any finding “not actionable in this package”.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01 cycle | SpectralWeylTargets:133, “target of the lower FCO dictionary” | Not repaired; R01 above. |
| R02 admitted data | ChevalleyModelTargets:45, “noncomputable def canonicalSCInput”; SpectralWeylTargets:63, “noncomputable def centerHomeomorph” | Not repaired; all 41 remain, R02. |
| R03 wrong model | README:3016, “replacing both root operators by zero gives identity root maps and a torus of dimension 1” | Partly repaired in prose; unchanged Lean record still admits it, R03. |
| R04 duplicated factorization | README:53, “The generic Weyl/based factorization belongs to RootSystems”; line 352 names its gap | Ownership repaired; registration incomplete, R05. |
| R05 imports | CoverLiftTargets:1, “import TauCetiRoadmap.ReductiveGroups.SignedADETargets” | Not repaired; R07. |
| R06 padding | IntegralRationalTargets:204, `rationalDistributionAction_apply` | Not repaired; fresh `rfl` witness, R08. |
| R07 catalogue shape | README:1247, “For smooth connected affine G over any field k”; §§5.1–8.3 now include APIs and Checks | Partly repaired. The revised radicals and characteristic distinctions are specified; §6B and §10B still fail the checklist, R09. |
| R08 identity-component page | README:683, “Proposition 1.34, pp. 16–17” | Repaired; milne lines 1070–1082 agree. |

### Gate, elaboration and signatures

The supplied gate reports **every check passed**, including the targeted build, zero stray files, zero outside-folder changes and zero scanned dependency problems. Its scanner result does not cover away R01/R02/R07's visible companion defects.

Independent dependency-check output:

```text
depcheck: 204 roadmaps, 1491 edges, 0 problem(s)
```

No UPWARD or CYCLE line occurred in the scanned README graph. Every `*Needs:*` line was read. Layer 8's use of the independent Layer 9 split construction is not itself circular; the construction does not consume Layer 8 classification. §6.2 now explicitly uses the geometric structural lane without making that lane depend on complete reducibility.

`lake env lean` on Suggested succeeded with **eight `sorry` warnings only**. The supplied signature log had namespace-resolution errors, so I generated fully qualified checks independently: **all 27 declarations** elaborated. The field, algebraic closure, smoothness, finite-type/quasi-compactness, separation, properness, centrality and strand-count hypotheses appear in the intended theorem signatures. No binder correction was needed. Closed-orbit existence explicitly requires a point; braid nonsplitting explicitly requires 2≤n.

An isolated scratch copy with native imports tried `simp`, `rfl`, and `infer_instance` on **96 admitted theorem bodies** across the nine files. It elaborated without errors; the successful padding result was `rationalDistributionAction_apply` by `rfl`. Additional exact-native-lemma specializations were checked by reading the declarations. Probe failure proves neither truth nor depth. The new §6.2 headline signature separately elaborated. All Lean processes finished.

### Headline coverage

The README's deep endpoints are orbit local closedness, boundary dimension drop and closed-orbit existence; proper complex-point compactness and smooth comparison; characteristic-zero complete reducibility and Levi decomposition; Lang–Steinberg and finite-field Harish–Chandra/Mackey comparisons; root-datum classification and relative structure; signed integral ADE, cover lifts and folded fixed Lie algebras; integral PBW and pinned models; rational highest-weight classification, Steinberg modules and regular functions; and braid/arrangement/spectral Weyl monodromy.

Suggested states eight: `orbit_locallyClosed`, `boundary_dimension_lt`, `exists_closed_orbit_in_closure`, `exists_closed_orbit`, `compact_complexPoints`, `exists_characterKernelEquiv`, `integral_pbw`, `permutation_extension_nonsplit`. Its docstring names the unavailable signed-ADE realization, folding identification, pinned integral model/change of choice, rational highest-weight modules, spectral quotient/analytic comparison, compatible manifold atlas and scheme-Frobenius/group comparison. Those unavailable constructions do not authorize the companion stand-ins. R04 identifies a further headline whose native carriers already suffice.

### Seeded source sample

All **15 seeded sections** were compared with legally retrieved text. No additional README locator was explicitly marked unverified. Source service retrieval was used throughout. Jantzen's cited 1985 version was read, rather than silently using the 2003 book. Its OCR drops parts of displayed formulas; flatness, adjunction and acyclicity prose was readable, and convention signs were computed independently.

| Sampled section | Source locator and extracted evidence | Assessment |
|---|---|---|
| 0.2 three interfaces | milne lines 3063–3076, Prop. 3.6/Cor. 3.7, pp. 66–67 | Finite-type field statement supported; arbitrary-ring extension supplied by the native affine anti-equivalence. |
| 0.3 base change/descent | milne lines 4983–5017, Def. 5.65/Prop. 5.68, p. 116 | Sheaf condition supported. Effective descent is the named ModularCurves contract, not a consequence of sheafness alone. |
| 1.0a representations/comodules | milne lines 3757–3798, Remark 4.1, pp. 84–85; Thm. 4.9, p. 87 | Right coactions, finite coefficient support, and the representation comparison agree. |
| 1.1 cohomology/induction | jantzen lines 1507–1590, I.3.3–6, pp. 53–56; lines 1857, 1994–2020, I.4.7, p. 73; lines 2102–2168, I.4.14–16, pp. 77–79a | Flat group scheme assumption retained; induction is right adjoint; cofree modules are acyclic without assuming every coefficient module flat. |
| 4.2 diagonalizable groups | milne lines 9630–9717, Prop. 12.3, Remark 12.5, Thms. 12.8–9, pp. 231–234; lines 9799–9807, Def. 12.14, p. 236 | Contravariance and torsion characters retained, including nonreduced μₚ. |
| 5.1 unipotence | milne lines 11643–11761, Prop. 14.3, Thm. 14.5, Cors. 14.6–9, pp. 280–282; lines 13741–13773, Thm. 16.30, pp. 334–335 | Full representation-theoretic criterion covers infinitesimal groups; geometric-point criterion requires the separate reducedness comparison. Lie–Kolchin's smooth/connected/algebraically-closed hypotheses retained. |
| 5.2 radical/descent | milne lines 11746–11761, Cors. 14.8–9, p. 282; lines 16386–16408, Props. 19.9–11, pp. 399–400 | Radical is smooth connected normal; separable extension comparison distinguished from inseparable growth. |
| 6.2 linear reductivity | milne lines 10280–10339, Def. 12.52, Remark 12.53, Prop. 12.54, Remark 12.56, pp. 248–249; lines 19713–19731, Thm. 22.42, pp. 477–478 | README correctly adds smoothness to the positive-characteristic torus criterion. Source's unrestricted wording needs correction; R04 concerns missing Lean coverage. |
| 7.1 Borels/tori | milne lines 14501–14555, Def. 17.6, Thms. 17.9–10, pp. 353–355 | Connected smooth affine group over algebraically closed field; proper quotient and conjugacy supported. |
| 7.2 parabolics/Levis | conrad-feng lines 5334–5369, Prop. 12.3.1, p. 127 | Unique Levi containing a maximal k-torus and simply transitive U(k)-conjugation supported; proof descends from separable closure. |
| 7.3 roots/Bruhat | milne lines 17661–17789, Thm. 21.11, Cor. 21.12, §§21.17–18, pp. 428–431; lines 18457–18481, Prop. 21.75, p. 448; lines 18538–18565, Thm. 21.80, p. 450 | Full split datum, arbitrary-field BN-pair and scheme cell decomposition supported. Non-split relative roots remain a separate construction. |
| 8.1 split classification | milne lines 20291–20306, Thm. 23.25/Remark 23.26, p. 493; lines 20614–20627, Thm. 23.55, p. 501 | Full root datum and pinning/isogeny ambiguity retained; central lattice is not discarded. |
| 8.2 relative groups | conrad lines 3334–3344, Def. 3.1.1, p. 81; 3868–3876, Thm. 3.2.6, p. 94; 4072–4079, Thm. 3.3.4, pp. 98–99; 6592–6609, Thm. 5.2.11, pp. 157–158; 6685–6691, Thm. 5.3.1, pp. 160–161; 8159–8182, Thms. 6.1.16–17, pp. 196–197 | Mathematical constructions supported over arbitrary schemes; README's extra Noetherian/affine restriction is R06. |
| 8.3 pseudo-reductivity | milne lines 5770–5784, §6.47/Example 6.48, p. 136; lines 16386–16408, Prop. 19.9, pp. 399–400 | Distinction and separable-radical comparison supported. Source's two-coordinate example needs p=2; README correctly gives independent p=2 and p=3 unit-algebra calculations. |
| 11.0 analytic dictionary | sga1 lines 9394–9411, XII Thm. 1.1, pp. 239–240; milne lines 8076–8091, Thm. 10.23, p. 193; 8143–8174, Props. 10.28–29, pp. 195–196 | Analytification/completed-local-ring comparison and dAd bracket supported. Local atlas construction remains a target; field-valued points alone do not retain nilpotents. |

The properness comparison was also checked against SGA1 XII §§1–3 and GAGA §2 no. 5. It is not restricted to projective schemes. Source errors below were checked on rendered pages of the legal Milne PDF, not inferred from extraction alone.


### Pinned APIs and ownership

The following **31 pinned-API checks** and **12 ownership rows** were resolved by direct reads. Object searches used the prescribed roadmap tools, main, board packages and supplied checkouts. The fresh resolver found no unresolved roadmap citation or own Lean name; it did not inspect Lake pins. No duplicate Suggested name was found outside this roadmap. Paths below are library-relative.

| Pinned declaration / file and line | What the signature or body supplies |
|---|---|
| `TauCeti/AlgebraicGeometry/AffineGroupScheme/Equivalence.lean:43` | `commHopfAlgCatOpEquivAffineGroupSchemeCat`, arbitrary commutative base ring. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Comodule/Equivalence.lean:54` | Natural point representations versus right comodules; category equivalences at 165,231. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Embedding.lean:147` | Coordinate closed-immersion criterion; finite-type field embedding at 209. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Faithful/Basic.lean:161` | Coefficients together with their antipode image generate the coordinate algebra. |
| `TauCeti/Algebra/HopfAlgebra/HopfIdeal/Basic.lean:265` | Ideal, comultiplication, counit and antipode laws; no smoothness condition. |
| `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Scheme/Classification.lean:257` | Order dual of Hopf ideals versus closed subgroup subobjects. |
| `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Normal/Basic.lean:62` | First tensor factor conjugates; normality uses the right ideal. |
| `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Coinvariants.lean:42` | Representability under geometric reducedness of the finite-type ambient group. |
| `TauCeti/Algebra/AlgebraicGroup/Connected/GroupScheme.lean:141` | Identity component over algebraically closed field; inclusion at 172. |
| `TauCeti/AlgebraicGeometry/AffineGroupScheme/Components/Finite.lean:43` | Finite topological components, not a descended étale quotient scheme. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138` | `pointsFunctorIsoTensorAutFunctor`, retaining ULift. |
| `TauCeti/Algebra/AlgebraicGroup/Torus/CharacterLattice/Equivalence.lean:53` | Character-lattice equivalence with the section's perfect-field hypothesis. |
| `TauCeti/Algebra/AlgebraicGroup/Unipotent/Basic.lean:70` | Every algebraic-closure-valued point acts unipotently; cannot detect μₚ's infinitesimal character. |
| `TauCeti/Algebra/AlgebraicGroup/Unipotent/Embedding.lean:263` | Upper-unitriangular embedding iff geometric-point unipotence, with algebraic closure, reducedness and finite type. |
| `TauCeti/Algebra/AlgebraicGroup/Solvable/LieKolchin.lean:435` | Finite-dimensional triangular basis under reducedness, algebraic closure, connectedness and solvability. |
| `TauCeti/Algebra/AlgebraicGroup/Unipotent/Radical/Construction.lean:72` | Actual k-radical ideal; universal characterization at 102, reversing subgroup order. |
| `TauCeti/Algebra/AlgebraicGroup/Unipotent/Radical/BaseChange.lean:97` | New radical ideal ≤ base-changed old ideal; subgroup inclusion points the other way. |
| `TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70` | Smooth/geometrically connected ambient group and no geometric smooth connected normal unipotent subgroup. |
| `TauCeti/Algebra/AlgebraicGroup/Semisimple/Basic.lean:70` | Corresponding geometric solvable-radical exclusion. |
| `TauCeti/Algebra/AlgebraicGroup/LinearlyReductive.lean:64` | Complete reducibility of finite-dimensional comodules; group algebras linearly reductive at 86. |
| `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:259` | Lie-submodule complement under CharZero, finite dimension and IsKilling (standing hypotheses at 110). Does not alone identify group-invariant subspaces. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/Form.lean:124` | Kostant subring; divided-power/binomial membership at 179,185. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241` | Native weight-torus conjugation equation; no prescribed-root-datum conclusion. |
| `TauCeti/Algebra/Coalgebra/Comodule/Convolution.lean:49` | Coaction contraction, giving R08's definition-expansion witness. |
| `Mathlib/LinearAlgebra/FixedSubmodule.lean:42` | `LinearMap.fixedSubmodule_eq_ker`, directly reused by FoldingADE. |
| `Mathlib/AlgebraicGeometry/Group/Affine.lean:187` | Fully faithful Hopf spectrum and affine essential image. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:94` | Local standard-smooth presentation, not an analytic atlas. |
| `Mathlib/Geometry/Manifold/Sheaf/LocallyRingedSpace.lean:59` | Germ unit iff nonzero value; not an algebraic/analytic cotangent comparison. |
| `TauCeti/Analysis/Analytic/Inverse.lean:105` | Analytic local inverse under complete source and invertible continuous derivative. |
| `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:275` | Holomorphic analyticity on finite-dimensional complex domain, complete codomain. |
| `TauCeti/GroupTheory/SpecificGroups/Braid/Basic.lean:304` | Actual braid permutation homomorphism, used by the nonsplitting headline. |

| Cross-roadmap object | Resolved source and boundary |
|---|---|
| Scheme dimension, Frobenius, descent, torsors, Chow | Main `TauCetiRoadmap/SchemeAndStackFoundations/README.md:755` (§0.7), 1825 (§0.29), 2071 (§1.1), 2458–2745 (§§1.14–18), 5613 (§4.12). Quotient sheaves are not automatically schemes. |
| Effective affine/group descent, Weil restriction | Main `TauCetiRoadmap/ModularCurves/README.md:386` (§0E), 412 (§0F): finite-presentation target and finite locally free source, arbitrary base change. |
| Regular fibres, division maps, subgroup quotients | Main `TauCetiRoadmap/SmoothBundlesConnections/README.md:221`, 315,421: B1.0, B1.1, B1.4. Real smooth results; holomorphic refinement remains local. |
| Chambers, root combinatorics and full root data | Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:260`, 296,321,356. Open revision §2.1 checked separately for ownership, R05. |
| Integral ADE lattices | Main `TauCetiRoadmap/IntegralLattices/README.md:568`, §0G: Gram/coordinate models. Signed root lines and brackets are different objects. |
| Split Serre presentation | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1158`: normalized generating system, injectivity/straightening and transpose convention. Full reductive central lattice remains here. |
| Finite-group Gassmann equivalence | Main `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:346`, §2.1; `Gassmann.almostConjugate_iff_permutation_equiv` explicitly at 378. |
| Compact forms and even flag cells | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:407`, 428, Layers 7–8. Complex cells have real dimension 2ℓ(w). |
| Flag minors | Main `TauCetiRoadmap/GroebnerGeometry/README.md:394`, G5: increasing rows and first columns; invariant/localization comparison remains here. |
| Van Kampen and fibration exact sequence | Main `TauCetiRoadmap/AlgebraicTopology/README.md:289`, Stage 1; `TauCetiRoadmap/DGFloer/README.md:481`, Layer 1.2. Reversed native path multiplication and π₀ retained. |
| Analytic group comparison | Supplied open `TauCetiRoadmap/FormalConnectionsOpers/README.md:240`, 2444; reverse attribution is R01. |
| Ownership boundaries | Main ReflectionInvariantTheory owns finite-reflection invariants; main NilpotentOrbits and supplied SchubertGeometry own their adjoint-orbit and flag applications. General algebraic action-orbit geometry is the distinct local construction. |

### Computed adversarial table

The **120 computed rows retained below** are instance tests, not general proofs. Earlier controls were recalculated; revised §§5–8 receive additional rows. Intended values do not certify admitted constructors. Empty dimension is −∞. “Retain” means agreement in the displayed instance.

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
| 3.2 geometric components | μ₂ over F₂/F₃ | π₀ degrees 1/2; Lie dimensions 1/0 | Retain; repaired page locator locator. |
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
| 5 unipotence/radical | Gₐ,Gₘ,SL₂ | radical dimensions 1,0,0; SL₂ characters 0 but not unipotent | New §5.2 Checks now give these values. |
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
| 9A root automorphisms | A₁,A₂ | orders 2=2·1,12=6·2; δs₁δ⁻¹=s₂ | Mathematics sound; ownership R05. |
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
| FoldingADE: `fixedCartan_eq_kernel` | γ=−1 on ℤ | fixed module 0=ker(−2) | Already a native one-lemma API equation, R08. |
| IntegralRational: `rationalDistributionAction_apply` | Gₘ weight 3 | f acts by f(t³) on both sides | `rfl` probe; R08. |
| ChevalleyModel: `torusPoint_conj_rootPoint` | Genuine A₁, s=2,u=3 | diag(2,1/2)E(3)diag(1/2,2)=E(12) | Native specialization, R08; zero-root model gives I=I, R03. |
| SpectralWeyl/Suggested: `permutation_extension_nonsplit` | n=2 | any lift 2k+1 doubles to 4k+2≠0 | Retain n≥2; n=0,1 split trivially. |
| BruhatCoordinate: `wrong_left_complement_overlaps` | Wrong w₀s₁ | α₂ in both sets, overlap cardinality ≥1 | README negative control; R08. |

Additional controls for the revised sampled statements and new findings:

| Statement | Instance | Computed sides | Result / change |
|---|---|---|---|
| 5.1 infinitesimal unipotence | μ₂/F₂, α₂/F₂ | Both have one geometric point; μ₂ has a nontrivial weight-one line with fixed space 0; α₂ has a faithful unipotent 2-dimensional representation | Scheme representation criterion distinguishes them. |
| 5.2 separable versus inseparable radical | Res(F₂(√t)/F₂(t))Gₘ | k-radical dimension 0; geometric radical dimension 1 | Do not replace base-change inclusion by unconditional equality. |
| 6.1 reductive/semisimple | Gₘ and 1 | Radical dimensions 1,0; unipotent-radical dimensions 0,0 | Gₘ reductive but not semisimple; 1 both. |
| 6.2 missing headline, R04 | Gₘ/ℚ; Gₐ/ℚ; SL₂/F₂ | Reductive/LR truth values (1,1), (0,0), (1,0) | Add char-zero headline; retain characteristic binder. |
| 6.2 Reynolds | Gₘ on Laurent polynomials | R(x)R(x⁻¹)=0, R(xx⁻¹)=1 | Linear projection, not algebra homomorphism. |
| 7.1 Borels and tori | GL₂ and Gₘ | (dim G,dim B,dim T,dim G/B)=(4,3,2,1) and (1,1,1,0) | Both general and toral cases fit. |
| 7.2 unique Levi conjugation | Upper GL₂; P=G | Upper entry after conjugation is a(t−s); for U=1 the conjugating set has size 1 | Unique U-conjugator retained. |
| 7.3 integral root | SL₂/F₂ | Character exponent 2; Lie derivative 0; root/coroot pairing 2 | Do not identify the integral character with its derivative. |
| 8.1 full datum | SL₂→PGL₂ at p=2 | Root indices 2 versus 1 in the respective character lattices; kernel μ₂ length 2 | Dynkin diagram alone does not classify forms. |
| 8.2 arbitrary bases, R06 | GL₂ over k[x₁,x₂,…] and over k×k | Center rank 1, derived relative dimension 3, Borel relative dimension 1 on each fibre | Source covers both; remove added base restrictions. |
| 8.2 nilpotents and empty base | SL₂ over ℤ/4; Spec 0 | Center μ₂ has special-fibre length 2/tangent dimension 1; empty base realizes both rank-0 and rank-1 data as ∅ | Keep center non-smoothness and nonempty classification hypothesis. |
| 8.3 p=3 unit filtration | 1+aε+bε², ε³=0 | Product coefficients a+c,b+d+ac; geometric kernel dimension 2 | Independent calculation supports general Weil-restriction example. |
| Source 6.48 negative control | p=3, (0,1) squared | Stated norm of product t³; product of norms t² | Source's two-coordinate formula requires p=2. |
| Source 12.56 negative control | μₚ in characteristic p | Complete reducibility true by ℤ/p-grading; identity component torus false | README's smoothness restriction fixes this source overclaim. |

## Not verifiable

The sources service attempted **25 works**: **10 readable**, **4 uncertified/paywalled**, **11 unresolved**. Unavailable text is not evidence of false mathematics. No repository manifest was edited; unresolved texts are recorded once per key.

- Uncertified: **waterhouse, borel, springer, serre**. The service identified paywalled publisher records; unavailable passages were not certified or added as new missing requests.
- **humphreys, sga3, howlett-lehrer, dipper-du**: title/DOI lookup encountered rate limiting or connection failure. Their integral PBW, original relative-group, and common-Levi locators remain unverified.
- **cgp**: Cambridge landing page, no readable copy. **lang**: JSTOR landing page, no readable copy. **steinberg**: AMS landing page, no readable copy.
- **carter, gassmann, brieskorn, salvetti**: title searches obtained no legal readable text. Original finite-group, arrangement and cell-model locators remain unverified.

Readable works were Milne, Jantzen 1985, SGA1, GAGA, Conrad, Conrad–Feng, Dudas–Michel, McNinch, Gros–Kaneda and Hedén. Retrieval alone does not certify every passage: the source table identifies the sampled passages actually checked. No published correction to the source errors below was verified.

IG.3.2 and IG.5.1 have no supplier checkout identified in this brief and no corresponding main folder was located. Ownership against that unprovided open roadmap was not checked. The local braid/configuration and endpoint-inverse conventions were tested directly. Other open-work ownership claims above use only the supplied checkouts; indexed results for unprovided heads were not treated as verified supplier contracts.

## Source issues

- **Misprint** in milne at Remark 4.1, printed p. 84 (milne line 3767): the source says the universal point acts on End(V⊗A); it should be an endomorphism of V⊗A; affects nothing.
- **Misprint** in milne at §12f before Theorem 12.18, printed p. 237 (milne line 9848): the source says the coefficient image C_V is a subcoalgebra of V; it should be a subcoalgebra of C; affects nothing.
- **Misprint** in milne at the construction before Theorem 12.23, printed p. 240 (milne line 9959): the source says the descended ring is k[M]^Γ; it should be (kˢ[M])^Γ under the specified semilinear action; affects a stated result.
- **Error** in milne at Example 6.48, printed p. 136 (milne lines 5774–5783): the source says the displayed two-coordinate multiplication and norm define the example in arbitrary characteristic p; it should be restricted to p=2 for these formulas; affects a stated result.
- **Error** in milne at Remark 12.56, printed p. 249 (milne lines 10330–10335): the source says every positive-characteristic linearly reductive algebraic group has torus identity component; it should be restricted to smooth groups; μₚ is linearly reductive and non-smooth; affects a stated result.
- **Misprint** in milne at the proof of Corollary 14.9, printed p. 282 (milne line 11758): the source says coconnectedness follows from 14.9 itself; it should be cited to the criterion in Theorem 14.5; affects the proof.
