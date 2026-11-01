# Review of ReductiveGroups (pull request #1332 at c6c71b1)

**Verdict:** needs changes

## R01 (P1) — A companion still restores the FormalConnectionsOpers cycle

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:136–138`: “the finite-type analytic comparison … is a target of the lower FCO dictionary”.

**Claim:** The README now owns this comparison in §§3A.5/11.0, but the companion still assigns its prerequisite to FormalConnectionsOpers. That roadmap consumes ReductiveGroups. The required single direction of supply must hold across the entire scoped folder, including companion docstrings.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:240–252`, at the supplied open head, consumes ReductiveGroups Layers 0–9, including tangent and quotient constructions. The companion's reverse assignment closes a two-roadmap cycle.

**Repair:** Replace this input with ReductiveGroups §§3A.5/11.0 and make the companion agree with that local owner. Preserve the comparison's actual differential `(X mod t,Y) ↦ [X,t]+Y`: at H in sl₂ the root coefficients are −2 and 2, and the toral coefficient is 1. This keeps the local inverse argument without importing the consumer. Merely reordering roadmaps cannot repair this cycle.

## R02 (P1) — The cited RootSystems4A supplier does not exist on main

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1825–1828`: “For an unbased root automorphism use RootSystems4A's actual Weyl/based factorization”.

**Claim:** This factorization is consumed as an existing supplier contract. RootSystems on main has no §4A and does not state the based-complement theorem. Its open revisions cannot supply new dependencies under this review's rule for existing roadmaps. There is no declared gap for this input.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:296–321` goes from Layer 4's chamber/longest-element results directly to Layer 5. The supplied revised copy states the complement at §2.1, lines 255–277; it is a revision of an existing folder.

**Repair:** Record a precise supplier gap for RootSystems, consistently in the package plan and README contract: for a finite reduced crystallographic spanning real root pairing and a base, its Weyl subgroup complements the base stabilizer in its root-pairing automorphism group, with forward map `(w,δ) ↦ wδ`. Import that contract, not an absent §4A or the ongoing revision. Retain the compatible integral-lattice action needed here. Test A₁: orders 2=2·1; A₂: 12=6·2, with trivial intersection and the nontrivial diagram involution outside W. The gap must not demand the signed cover lifts, which this roadmap owns.

## R03 (P1) — The regular-fibre prerequisite is assigned to the wrong supplier

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:691–693`: “independent LieGroupoidsPoisson G0.1 regular-fibre-product prerequisite”.

**Claim:** This is supplier drift, not an unimplemented but correctly declared contract. The supplied LieGroupoidsPoisson head explicitly excludes this construction from G0.1 and imports it from SmoothBundlesConnections B1.0. The accompanying reference to LieGroups Layer 6's early floor also does not describe Layer 6 on main, which concerns maximal tori.

**Witness:** `TauCetiRoadmap/LieGroupoidsPoisson/README.md:299–303` assigns regular fibres and transverse fibre products to SmoothBundlesConnections B1.0. Main `TauCetiRoadmap/SmoothBundlesConnections/README.md:268–290` states their carrier, transversality, tangent kernel and projection API.

**Repair:** Cite SmoothBundlesConnections B1.0 directly for regular fibres and transverse fibre products, B1.1 for principal-bundle comparisons and B1.4 for the closed-subgroup quotient. Remove the obsolete G0.1/Layer-6 attribution. On two identity maps of ℝ the fibre product is the diagonal, tangent `{(v,v)}`, dimension 1=1+1−1. For two squaring maps at 0, derivative ranges sum to 0, not ℝ; the crossing `{x²=y²}` is excluded by the supplier's transversality hypothesis.

## R04 (P2) — Forty-one admitted data declarations remain in companions

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63–64`: “OrderedPlane n ≃ₜ ℂ × CenteredPlane n := sorry”; analogous constructions occur in five other companions.

**Claim:** All scoped Lean files are subject to the acceptance rules. Suggested is repaired, but the companions still admit bases, group and Lie structures, actions, equivalences and a model constructor. Proof fields inside admitted data records are included. Dependent definitions do not make these legal headline statements.

**Witness:** Direct declaration counts: IntegralRational 3; SignedADE 11; FoldingADE 12; CoverLift 5; SpectralWeyl 9; ChevalleyModel 1. Suggested, OrbitGeometry and BruhatCoordinate contain none. Total: 41.

**Repair:** Delete the admitted data and dependent surrogate interfaces. Keep only simple, fully defined native-carrier objects needed for headlines; state existence/property results propositionally, or name the missing construction in the module docstring. Preserve the centering restriction n>0: at n=2, `(1,3) ↦ (2,(−1,1))` and the inverse returns `(1,3)`; at n=0 the configuration space is a singleton while the proposed product has a ℂ factor. Suggested's existential cover-kernel equivalence illustrates the permitted form.

## R05 (P2) — The model interface still admits zero root vectors

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23–46`: `SCRealizationInput` and the admitted `canonicalSCInput`; the only theorem is the conjugation equation at lines 72–77.

**Claim:** This is not an acceptance statement of the promised normalized simply connected realization. The record packages constructor operands but does not tie them to the full Chevalley frame. The repaired README's full-frame requirements do not become hypotheses of this record or its canonical inhabitant.

**Witness:** In A₁ choose the standard representation on ℚ², lattice ℤ², h=diag(1,−1), weights ±1 and e₊=e₋=0. Every field holds; all root points equal I. The closure is Gₘ of dimension 1, not SL₂ of dimension 3.

**Repair:** Remove the surrogate and its admitted constructor. Keep the full-frame/root-datum/pinning and change-of-choice endpoints in the README, and name them as unstatable until their native carriers suffice, as Suggested already does for the model. The actual frame law `[e₊,e₋]=h` rejects this witness: 0≠diag(1,−1). In the intended model the two root points at parameter 1 are nonidentity elementary unipotents; the conjugation equation alone merely reads I=I for the wrong model.

## R06 (P3) — Normalize the eight companion import lists

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`: `import TauCetiRoadmap.ReductiveGroups.SignedADETargets`.

**Claim:** Companion imports include roadmap modules, Mathlib submodules, or omit the required leading `import Mathlib`. The successful Suggested gate does not exempt these separately scoped files.

**Witness:** `SignedADETargets.lean:1–10` imports a roadmap module and seven Mathlib submodules; `ChevalleyModelTargets.lean:1–3` has no Mathlib import; `BruhatCoordinateTargets.lean:1–5` consists of Mathlib submodule imports.

**Repair:** Use one leading `import Mathlib`, then only the individual pinned TauCeti modules actually needed. Consolidate the few necessary headline definitions instead of importing roadmap modules. A scratch consolidation with native imports and isolated local scopes elaborated successfully; recheck the retained files after removing admitted-data dependencies.

## R07 (P3) — Delete definition expansions and worked Checks from acceptance files

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204–207`: `rationalDistributionAction_apply`; also `ChevalleyModelTargets.lean:72–77` and the small matrix calculations in `BruhatCoordinateTargets.lean`.

**Claim:** These are API expansions, native specializations or README Checks, not headline theorems. Keeping them in companions does not satisfy the no-padding rule.

**Witness:** The distribution-action theorem closes with `rfl` in the scratch probe. The conjugation statement specializes `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241`.

**Repair:** Delete it from `Suggested.lean` if carried there, and delete the padding from companion acceptance files; retain useful formulas as README API/Checks with the exact native citation. Do not prove it in place. On the weight-three Gₘ line both action expressions are 3m; in SL₂, diag(2,1/2) conjugates x₊(1) to x₊(4). These calculations test imported constructions, not new endpoints.

## R08 (P3) — Complete the remaining target shape and mathematical docstrings

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:424–426`: “Hopf ideals ↔ closed subgroup schemes”; lines 442–445: “over a perfect field, or suitable hypotheses”.

**Claim:** The rewritten sample sections now have locators, APIs and discriminating Checks, but Layer 3 still supplies neither these per-definition requirements nor an exact component-group hypothesis. Other early blocks remain broad bullet catalogues. Companion docstrings retain illustrative/process language and computational deliverables; the source manifest is absent.

**Witness:** The Hopf-ideal bullet has no locator or three Checks; the component-group bullet does not specify “suitable hypotheses”. `FoldingADETargets.lean:310` requires “exact-word certificates”. Suggested's missing-carrier paragraph does not identify the signed ADE/folding endpoints.

**Repair:** Give each retained definition its API, exact source locator and at least three discriminating Checks; state the precise component-group theorem and its hypotheses. Reuse the native Hopf-ideal object. For k[t,t⁻¹], test (t−1), (t²−1), and the nonexample (t−2) over ℚ: their counit values are 0, 0 and −1. In characteristic 2 the second quotient is nonreduced μ₂. Complete the sources manifest using the existing source keys/statuses; normalize retained module/declaration docstrings, explicitly name missing signed ADE/folding carriers, and replace certificate deliverables with mathematical generation/Serre/isomorphism assertions.

## Verified sound

All ten scoped files were read in full, including unchanged passages, after the repository README and CONTRIBUTING. Main ReflectionInvariantTheory and NilpotentOrbits supplied shape comparisons. The head is correct, the outside-folder diff is empty, and no PR file was changed. The existing programme is preserved; the defects are repairable.

### Disposition of the nine previous findings

The previous findings were checked first, against these present-head passages.

| Previous finding | Current passage and disposition |
|---|---|
| R01, FCO cycle | README:3008 now says “comparing their complex points via §§3A.5 and 11.0”; SpectralWeylTargets:137 still says “lower FCO dictionary”. **Partly repaired**; current R01. |
| R02, admitted data | ChevalleyModelTargets:46 still ends “:= by sorry”; the companion data count remains 41. **Not repaired**; current R04. |
| R03, weak constructor | ChevalleyModelTargets:15–16 still says “only packages the native constructor operands”. **Not repaired in the companion**; current R05. The stronger README frame is retained. |
| R04, missing statable headlines | Suggested:129 states `compact_complexPoints`; :283 states `permutation_extension_nonsplit`. **Repaired**. |
| R05, tangent duplication | README:151–169 imports the native bracket, differential, adjoint and cotangent maps; §2.1 asks for scheme comparisons. **Repaired** for the identified overlap. |
| R06, inverse on analytic germs | README:2857–2868 now states “Prove c is an isomorphism” and “D(f)=Σᵢvᵢ∂ᵢf(e)”. **Repaired**; exp(t), t² and coordinate rescaling tests below distinguish the required inverse. |
| R07, companion imports | CoverLiftTargets:1 still imports SignedADETargets. **Not repaired**; current R06. |
| R08, padding | IntegralRationalTargets:204 retains `rationalDistributionAction_apply`. **Not repaired**; current R07. Suggested itself has no detected one-tactic padding. |
| R09, shape/sources | §§1.1, 2.1, 4.1–4.3 and 11.0 now have targeted locators and Checks; README:444 retains “suitable hypotheses” and FoldingADETargets:310 “exact-word certificates”. **Partly repaired**; current R08. |

No supplied repair report settles any of these as “not actionable in this package”. R02 and R03 above are additional supplier defects found by resolving the citations afresh.

### Gate, elaboration, binders and padding probes

The worker's gate is **OK**, with all counters zero, including build, dependencies, admitted data, imports, stray files and outside-folder changes. Manual companion and supplier findings remain.

An independent `lake env lean` run on Suggested succeeded with only **8** admitted-theorem warnings. A scratch copy with fully qualified `#check @name` for **all 27 declarations** also elaborated. The supplied listing had unqualified-name errors; the fresh successful run was used instead. All 27 signatures were compared with the README. No binder change is needed: orbit theorems retain algebraic closure, smooth affine finite-type G and finite-type separated X; global closed-orbit existence retains nonemptiness; compactness retains properness; the lift-kernel theorem retains centrality; PBW retains the full frame/basis/root-pairing data; nonsplitting retains n≥2.

The one-tactic probe tried `simp`, `rfl` and `infer_instance` on **96 admitted theorem declarations**: Suggested 8, IntegralRational 8, SignedADE 16, FoldingADE 23, CoverLift 6, ChevalleyModel 1, OrbitGeometry 17, SpectralWeyl 17, BruhatCoordinate 0. The scoped native-import consolidation elaborated. `rationalDistributionAction_apply` closed with `rfl`; the conjugation wrapper closes with one `simpa` using the native lemma and unfolding its wrappers/torus character (R07). Tactic failure is not a truth certificate. Preliminary scratch scope/import failures are not attributed to the submitted module.

The required dependency command returned:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Every `*Needs:*` line was read. The surviving companion cycle and the two inaccurate supplier-section references require manual correction despite this mechanical result. No undeclared gap was treated as an authorized contract.

### Seeded sources and additional checks

All sources were requested through the sources service. Source IDs below refer to its line-numbered legal extractions; no source passage is copied into this report.

- **§1.1:** the [1985 MPIM Jantzen preprint](https://archive.mpim-bonn.mpg.de/id/eprint/607/1/preprint_1985_9.pdf), I.3.3–I.3.9, printed pp. 53–60 (`jantzen` lines 1507–1707), supplies induction, reciprocity and enough injectives. I.4.7, p. 73 (lines 1994–2020), and I.4.14–I.4.16, pp. 77–79a (lines 2102–2168), support cofree acyclicity and the Hochschild complex. The chapter assumes a flat group scheme (lines 1857, 1923–1924); it does not require flat coefficients. The README now cites this edition, so the previous 2003-pagination issue is repaired. For the general bialgebra-map equalizer, the counit and coassociativity directly verify that evaluation and `(u⊗1)ρ` are inverse; this extra generality is not silently attributed to a subgroup-only formula. Some displayed formulas in this scan's extraction are incomplete; their signs were also computed directly below.
- **§2.1:** [Milne 2017](https://www.jmilne.org/math/Books/iAG2017.pdf), 10.14, p. 190 (`milne` lines 7960–7983), gives the scheme-kernel tangent statement; Theorem 10.23, p. 193 (lines 8076–8091), gives Lie functoriality; §§10.28–10.29, pp. 195–196 (lines 8143–8174), give the invariant-derivation comparison. The revised locators now reach these results. Proposition 1.37, p. 18 (`milne` lines 1115–1126), supplies the smooth dimension criterion. The μₚ and SL₂ tests retain nonsmooth kernels and the correct bracket coefficient.
- **§4.1:** Milne Theorem 9.11, pp. 168–169 (`milne` lines 7065–7110), and Theorem 9.18, p. 170 (lines 7194–7214), support the unique commuting factorization and its representation-independent group form over perfect fields. §§9.19–9.21, p. 171 (lines 7215–7224), support functoriality. The imperfect-field obstruction at lines 7161–7180 is respected by the README's geometric-only assertion there. Commuting products and extension after passing to an algebraic closure preserve the two defining properties and hence the unique factors.
- **§4.2:** Milne Proposition 12.3, pp. 231–232 (`milne` lines 9630–9664), Theorems 12.8–12.9, pp. 233–234 (lines 9689–9736), Remark 12.5, p. 232 (lines 9665–9680), and Definition 12.14, p. 236 (lines 9760–9773), support the group-algebra construction, contravariant maps/exactness, smoothness criterion and torsion-free torus criterion. The finite-generation convention is retained. Exactness is fppf exactness, not surjectivity on k-points.
- **§4.3:** Milne Definitions 12.14/12.17, pp. 236–237, Theorem 12.18, pp. 237–238 (`milne` lines 9760–9897), Theorem 12.23 and Corollary 12.25, p. 240 (lines 9932–9984), support separable splitting, continuous Galois modules and purely inseparable invariance of morphisms. The norm-one example, 12.27, p. 241 (lines 9988–10005), confirms the −1 Galois action. The perfect pairing is asserted for tori, not for μₚ. The native equivalence's perfect-field assumption is accurately distinguished from the planned arbitrary-field extension.
- **§11.0:** [SGA 1 XII](https://arxiv.org/abs/math/0206203), Theorem/Definition 1.1, printed pp. 239–240 (`sga1` lines 9394–9410), gives the stronger completed-local-ring comparison. Modulo squared maximal ideals it supplies exactly the cotangent isomorphism now named in the README. The construction at §§1.1–1.2, pp. 239–241 (lines 9394–9471), includes nonreduced and nonseparated locally finite-type complex schemes. Proposition 3.1, pp. 244–245 (lines 9594–9638), supports smooth/étale/separated comparisons; Proposition 3.2(v), pp. 245–247 (lines 9639–9698), supports properness under finite type, using Chow's lemma. Serre GAGA §2 no. 5, pp. 8–9 (`gaga` lines 293–344), supports the classical affine topology; it is not substituted for the broader SGA statement.
- **Other headlines:** Milne 1.65–1.66, pp. 26–28 (`milne` lines 1461–1514), supports locally closed orbits and dimension-drop/minimal-orbit arguments, with the README's component/reduction adapters. Milne 17.96–17.98, p. 383 (lines 15752–15781), supports Lang–Steinberg and connected finite-field H¹ triviality. Inverting the input matches the g⁻¹F(g) convention. [Conrad](https://math.stanford.edu/~conrad/papers/luminysga3.pdf), Theorems 6.1.16–6.1.17, pp. 196–197 (`conrad` lines 8159–8182), supports existence and the pinned classification over a nonempty base. This does not certify every proposed all-base-ring chart proof step.
- **Additional formula checks:** Gros–Kaneda v2, pp. 1–2 (`gros-kaneda` lines 27–92), retains the full reductive group and the corner μ₀Dist(G)μ₀; its auxiliary missing-projector slip is recorded below. Dudas–Michel Proposition 8.9, p. 32 (`dudas-michel` lines 1456–1485), was checked with its common-torus/Levi hypotheses and factor order. The unidentified “ambiguous divisibility phrase” at README:2710 has no exact source locator and remains uncertified.

### Pinned objects and ownership

Object searches used the roadmap grep/show tools, main (including Completed), the board package inventory, supplied sibling folders and both pinned libraries. The 26 unresolved-name leads in the worker's citation output are not 26 findings: the local names are declared, and `Gassmann.almostConjugate_iff_permutation_equiv` resolves on main at `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:372–383`. The section-level drifts in R02/R03 survive the resolver's broader name search.

Representative declarations opened at the pins, with their actual limits:

| Object | Pinned declaration, file and line | Scope retained |
|---|---|---|
| Proper group commutativity | `isCommMonObj_of_isProper_of_geometricallyIntegral`, `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132` | Proper and geometrically integral over a field; proper alone is insufficient. |
| Affine dictionary | `hopfSpec.fullyFaithful`, `essImage_hopfSpec`, `Mathlib/AlgebraicGeometry/Group/Affine.lean:187,482` | Affine group schemes and commutative Hopf algebras. |
| Tangent vectors | `derivationLinearEquivTangentKer`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Basic.lean:650` | Dual-number tangent kernel with counit coefficients. |
| Bracket | `Derivation.instBracketCounitAlgebra`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Lie/Basic.lean:120` | Convolution commutator D*E−E*D. |
| Differential | `derivationCompLieHom`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Lie/Map.lean:129`; identity :163, composition :172 | Contravariant bialgebra input, covariant tangent map. |
| Adjoint | `Derivation.adRepresentation`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Adjoint.lean:177` | Linear point action; no standalone analytic atlas. |
| Cotangent duality | `Derivation.cotangentLinearEquiv`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Cotangent.lean:261` | Augmentation cotangent dual, with explicit scalar structure. |
| Algebraic stalk comparison | `cotangentLinearEquivZariski`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Scheme.lean:46`, generator equation :55 | Field-valued augmentation point; algebraic, not holomorphic, stalk. |
| Local inverse | `AnalyticAt.exists_openPartialHomeomorph`, `TauCeti/Analysis/Analytic/Inverse.lean:105` | Complete source and invertible continuous derivative; satisfied in finite-dimensional complex charts. |
| Holomorphic analyticity | `DifferentiableOn.analyticOnNhd_of_finiteDimensional`, `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:275` | Open domain, finite-dimensional complex source, complete codomain. |
| Native Jordan factors | `Point.jordanDecomposition`, `TauCeti/Algebra/AlgebraicGroup/Representation/JordanDecomposition/Basic.lean:98`; Naturality :67, ScalarExtension :63, Commuting :142 | Perfect coefficient fields; no imperfect-field rational-factor assertion. |
| Diagonalizable equivalence | `DiagonalizableGroup.schemeEquivalence`, `TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Equivalence.lean:138` | Contravariant equivalence over a field. |
| Diagonalizable points/exactness | `schemePointsMulEquiv`, `TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Scheme/Points.lean:296`; `isShortExact_mapDomainBialgHom`, `TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Exact.lean:69` | Points over commutative rings; converse exactness theorem additionally assumes a nonzero base. |
| Torus lattices | `characterLatticeFunctor_isEquivalence`, `TauCeti/Algebra/AlgebraicGroup/Torus/CharacterLattice/Equivalence.lean:53` | Perfect-field hypothesis at :36. |
| Torus duality | `instCharacterCocharacterPairingIsPerfPair`, `TauCeti/Algebra/AlgebraicGroup/Torus/Cocharacter/Basic.lean:52` | Arbitrary field, geometric lattices. |
| Closed subgroup tangent | `quotientLieHom`, `lieSubalgebra`, `quotientLieEquiv`, `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Tangent.lean:64,115,254` | Derivations annihilating the Hopf ideal. |
| Quotient sheaf | `CommHopfAlgCat.fppfQuotientSheaf`, `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Basic.lean:154` | Sheafification, not general representability. |
| Integral generated subring | `kostantForm`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/Form.lean:124`; generator membership :179,185 | Does not itself supply the full-frame PBW endpoint. |
| Torus/root conjugation | `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241` | Exactly the weight-vector/root-eigenvalue equation used in R07. |
| Root pairing | `RootPairing`, `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81`; `RootDatum` :102 | Perfect pairing is part of the native object; finite generation is not silently inferred from a bare datum. |

These **20 object checks** distinguish native constructions from new scheme/analytic adapters. Main supplier sections checked include SchemeAndStackFoundations §§0.3, 0.7, 0.29, 1.1, 1.14–1.18, 2.6 and 4.12; ModularCurves §§0E–0F (lines 386–430); RootSystems Layers 1–6, excluding the nonexistent 4A; LieHighestWeight Layers 3–4 and 7 (Chevalley restriction at lines 980 onward); IntegralLattices' rationalization/ADE lattice conventions, including its completed roadmap; LieGroups Layers 6–8 (lines 383–442); SmoothBundlesConnections B1.0/B1.1/B1.4; AlgebraicTopology's based van Kampen/CW interfaces; DGFloer Layer 1 item 2 (native fibration LES, contract lines 130–148); ReflectionInvariantTheory §§1–4; and GroebnerGeometry G5 (line 394 onward). AlgebraicVectorBundles supplies generic bundle language; SchubertGeometry and NilpotentOrbits are consumers of the orbit/flag adapters, not prerequisites for orbit existence. FormalConnectionsOpers and LieGroupoidsPoisson were checked at their supplied heads as above.

The supplied RootSystemsPartII head explicitly consumes ReductiveGroups §9A.1b (`TauCetiRoadmap/RootSystemsPartII/README.md:57–59`); its orbit-sum root combinatorics is distinct from the signed integral fixed Lie lattice here. In A₃ its distinct-sum fold has root-row entries −2,−1. ReductiveGroups uses these numbers for H rows of the projected-root fold: the carriers differ, as the row below computes. README:2046–2053 explicitly separates their root/coroot maps. Group-derived root data, integral realization, quotient representability, full-torus PBW and spectral adapters remain distinct local constructions. Searches found no cross-folder reuse of Suggested's fully qualified declaration names; copies of this same roadmap in other checkouts are not separate owners. Open pull requests without supplied files were not independently audited; no absence claim is made about them, including the companion's ComplexComparisonPartII comparison reference.

### Headline inventory and acceptance coverage

The README's principal endpoints are: orbit local closedness, boundary dimension drop and closed-orbit existence; proper complex-point compactness and smooth comparisons; Lang–Steinberg/finite-field exactness; Bruhat/reductive structure and relative root-datum classification; full reductive integral PBW and pinned model/change of choice; signed ADE, folding and cover lifts; rational highest-weight/Steinberg/Peter–Weyl theory; finite-arrangement and spectral Weyl monodromy, including the braid extension.

Suggested states eight headlines: four orbit theorems, compactness, the character-kernel equivalence with its actual twist formula, integral PBW, and braid-extension nonsplitting. Its docstring identifies missing carriers for the pinned model, highest-weight classification, regular-semisimple spectral quotient, full smooth atlas and general scheme-Frobenius/connectedness comparison. The added compactness and braid statements repair the previous missing-statable-endpoint finding. The absent signed ADE/folding carrier explanation belongs with the docstring repair in R08; admitted companion encodings are not a substitute. No new one-tactic padding was detected among Suggested's eight statements.

### Computed adversarial pass

The retained rows cover the six sampled sections, headline theorems and finding witnesses, including negative controls; the remaining per-target ledger is omitted for length. Finite tests are not proofs. “Model” denotes intended mathematics, not evaluation of admitted data. All-field/all-prime scope is retained.

| Statement | Instances tried | Computed values on the two sides / negative control | Result; change |
|---|---|---|---|
| Rational invariants, §1.1 | Trivial Hopf algebra; M=ℤ/2 | d⁰=0,d¹=id,d²=0; H⁰=ℤ/2,H¹=H²=0 | No coefficient-flatness needed. |
| Cofree acyclicity | H=A; N=ℤ/2 over ℤ | N⊗H=N; positive cohomology 0 on both descriptions | Nonflat control passes. |
| Coefficient permutation | Gₘ weight 1 | d⁰(1)=1⊗(t−1); transported value (t−1)⊗1 | No extra minus sign. |
| Induction equalizer | Identity H→H; zero M | ρ identifies equalizer with M; for M=0 both are 0 | Identity and empty cases pass. |
| Induction/reciprocity | Trivial subgroup of C₂ | Ind ℤ=ℤ²; swap matrix [[0,1],[1,0]]; Hom-adjunction evaluation at identity | Two delta basis vectors retained. |
| Induction inversion | Gₘ weight 1 | F(t)=t; f(t)=t⁻¹; F(1)=f(1)=1 | Inverse character distinguished. |
| Tangent kernel | Trivial group; Gₐ | Dimensions 0 and 1; dual-number elements 1 and εv | Native carrier agrees; previous duplication repaired. |
| Tangent bracket, §2.1 | E₁₂,E₂₁ in sl₂ | EF−FE=diag(1,−1); reversed bracket diag(−1,1) | Correct; source factor 2 rejected. |
| Tangent dimension | μₚ in char p | Lie dimension 1 versus scheme dimension 0 | Smoothness necessary and present. |
| Differential and kernel | Frobenius on Gₘ | d(t↦tᵖ)=p=0; kernel tangent dimension 1 | Geometric point kernel alone misses μₚ. |
| Differential composition | Gₘ powers 2 and 3 in char 0 | d(t⁶)=6; product 2·3=6 | Native composition suffices. |
| Adjoint action | SL₂ diag(2,1/2) | E↦4E,F↦F/4,H↦H | Matches native convolution Ad. |
| orbit_locallyClosed | Gₘ on A¹ | D(t) open; {0} closed | Both locally closed; none. |
| boundary_dimension_lt | Gₘ on A¹ | 0<1; for x=0, ⊥<0 | Strict inequality includes closed orbit. |
| exists_closed_orbit_in_closure | Gₘ on P¹, x=[1:1] | Closure P¹ contains {0} and {∞}, each dimension 0 | Existence, not uniqueness. |
| exists_closed_orbit | Trivial action on a point; empty X | One closed orbit versus zero rational points | Nonemptiness binder excludes empty X. |
| compact_complexPoints | P¹ versus A¹ | Sphere compact; integer sequence in ℂ unbounded | Now stated in Suggested:129; omission repaired. |
| Smooth chart transition | P¹ at z=2 | w=1/2; dw/dz=−1/4 | Reciprocal sign fixed. |
| Étale/local inverse comparison | Square map at 1 and 0 | Derivatives 2 and 0; inverse derivative 1/2 only at 1 | Invertibility excludes branch point. |
| Smoothness control | Node xy=0 at origin | Tangent dimension 2, branch dimension 1 | One-dimensional smooth chart fails. |
| Second countability | Finite disjoint union; uncountable disjoint points | Finite basis union countable; uncountably many singleton opens need uncountably many basis elements | Finite-type qualifier retained. |
| Jordan decomposition, §4.1 | g=[[2,1],[0,2]] over ℚ | g_s=2I, g_u=I+(1/2)E₁₂; product [[2,1],[0,2]] | Revised Check recomputed. |
| Bruhat root partition | A₂,w=s₁ | H roots {α₂,α₁+α₂}; J roots {α₁}; counts 2+1=3 | Correct complementary set. |
| Upper U₃ coordinates | a=2,b=3,c=7 | Complement-first correction c−ab=1; wrong sign gives 13 | Factor order matters. |
| Bruhat orbit differential | (X,Y) in H×J | Derivative X−Y; inverse J-coordinate changes to X+Y | Signs track inversion. |
| Rank-one Gauss factors | a=b=1,t=2 | x₋(1/2)diag(2,1/2)x₊(1/2)=[[2,1],[1,1]] | Denominator 1+ab=2 nonzero. |
| Gauss open-locus exclusion | a=1,b=−1 | 1+ab=0 | No division by zero permitted. |
| Lang surjectivity | Gₐ/F₂; a²+a+1=0 | F(a)−a=a²+a=1 | Geometric preimage, not F₂-point surjectivity. |
| Lang connectedness | Constant C₂,F=id | Every g⁻¹F(g)=1; image size 1≠2 | Disconnected control excluded. |
| Lang torus convention | Gₘ/F₃, i²=−1 | i⁻¹F(i)=i²=−1 | Inverting input matches source convention. |
| Lang H¹ consequence | Trivial group; constant C₂ | H¹=1 versus Hom(procyclic,C₂)=C₂ | Connected case only. |
| Full root datum | Root-free rank 1; A₁ | Group dimensions 1+0=1 and 1+2=3 | Central torus not omitted. |
| Central isogeny on rational points | SL₂→PGL₂ over ℚ | diag(2,1) determinant class 2 has no rational square root | Scheme-surjectivity not point-surjectivity. |
| Relative pinning | GL(R⊕L), L nontrivial invertible | Root line is L or L⁻¹, not globally R | No unjustified global root generator. |
| Weil restriction/imperfect base | Purely inseparable K/k degree p | Res Gₘ dimension p; geometric unipotent part dimension p−1 | Pseudo-reductive distinction retained. |
| Signed lattice pairing | A₂ Gram [[2,−1],[−1,2]] | Norms α,β,α+β are 2,2,2 | Positive shell contains six roots. |
| Signed roots, rank zero | Empty diagram | Lattice 0, root set ∅, Lie rank 0 | No invented rank-one case. |
| Epsilon cocycle | A₂, α<β | ε(α,β)=1, ε(β,α)=−1 | Commutator sign −1. |
| Opposite epsilon | A₂, γ=α+β | ε(γ,−γ)=−1 | Unnormalized opposite bracket sign detected. |
| Cover group law | A₂ simple lifts | Product lifts α+β with sign +1; reverse with sign −1 | Central C₂ records commutator. |
| Sign inclusion/projection | Rank-zero cover | Cover has 2 elements; quotient 1; kernel size 2 | Exact central extension survives rank 0. |
| Root-line quotient | One root lift pair e,τe | Relation τe=−e leaves one ℤ generator | Not two independent root lines. |
| Signed root bracket | xα=E₁₂,xβ=E₂₃ | [xα,xβ]=E₁₃ | Positive-root convention passes. |
| Signed opposite bracket | xγ=E₁₃,x−γ=−E₃₁ | Bracket −diag(1,0,−1) | Epsilon factor required. |
| Jacobi signed ADE | α,β,−α−β | Cartan sum Hα+Hβ−Hα+β=0 | Three terms cancel. |
| Normalized opposite vectors | Same γ, normalize negative sign | [E₁₃,E₃₁]=diag(1,0,−1) | Normalization changes −Hγ to Hγ. |
| Integral ADE basis | A₁; A₂ | Ranks 1+2=3 and 2+6=8 | Cartan plus root basis, not roots alone. |
| Full Cartan replacement | Root-free Y=ℤ² | Carrier rank 2; bracket identically 0 | Central directions retained. |
| Full frame map | A₁ correct versus zero roots | [e,f]=h versus 0≠h | R05 wrong model excluded by true frame. |
| Character kernel equivalence | Q=ℤ, χ(n)=(−1)ⁿ | (s,n)↦(s(−1)ⁿ,n); χ² gives identity | Specified twist rules out arbitrary equivalence. |
| Nonabelian lift control | Q₈→C₂² | i↦−i,j↦j,ij↦−ij; products preserved | Centrality supports nonabelian extension. |
| Trivial quotient lift kernel | Q=1 | Hom(1,C₂) and lift kernel both singleton | No spurious automorphisms. |
| Root monodromy/fixed vector | A₂ simple orbit and highest root | Simple orbit sum Eα+Eβ fixed; highest root has monodromy −1 | No integral highest-root fixed vector. |
| Signed cycle kernel | One negative cycle | ker(2:ℤ→ℤ)=0; ker(2:F₂→F₂)=F₂ | Integral base change not automatic. |
| Fixed integral basis | A₂ flip | One Cartan orbit + two positive-sign root orbits = rank 3 | Characteristic-2 fixed dimension becomes 5. |
| Orbit normalization d,k | A₂ adjacent pair | d=1,k=2; nonadjacent pair has d=2,k=1 | Adjacency correction retained. |
| Folded sl₂ triple | A₂ fixed e,f,h | [e,f]=h,[h,e]=e; E=e,F=2f,H=2h gives [H,E]=2E | Integral sublattice index 4. |
| Folded Cartan | A₃ reversal | [[2,−2],[−1,2]] | Short/long orientation recorded. |
| A₄ folded Cartan | Outer then middle orbit | [[2,−1],[−2,2]]; lengths 1 and 1/2 | Adjacent middle orbit differs. |
| Exceptional D₄ triality | 24 roots | 6 fixed roots +6 length-3 root orbits +2 Cartan =14 | G₂ dimension; generation separately required. |
| Exceptional E₆ involution | 72 roots | 24 fixed roots +24 paired orbits +4 Cartan =52 | F₄ dimension; count not proof of isomorphism. |
| Folded generation control | Set all folded E,F to 0 | Generated Lie algebra 0, intended G₂ dimension 14 | Serre relations alone insufficient. |
| Full Cartan fixed kernel | Order-3 matrix [[0,−1],[1,−1]] | det(γ−I)=3; Smith diagonal 1,3 | ℤ kernel 0, F₃ kernel dimension 1. |
| Fixed base change | Same over ℚ versus F₃ | Kernel dimensions 0 versus 1 | Invertibility/flatness condition needed. |
| integral_pbw | Root-free rank 1 | Basis binom(h,n); h²=2 binom(h,2)+h | Spanning and independence not assumed in frame. |
| PBW straightening | A₁ | ef=fe+h; h e=e(h+2) | Bracket signs determine reorder coefficients. |
| Specialized PBW | A₁ root direction over F₂ | e·e=0 but basis element e⁽²⁾ remains nonzero | Divided-power basis not ordinary polynomial basis. |
| Distribution action | Gₘ weight 3 | D(t³)m=3m; tensor contraction 3m | R07 rfl padding. |
| Weight action in char 3 | Same weight 3 | 3m=0 | Characteristic reduction retained. |
| SC realization input | A₁ with e±=0 | Weights ±1 span ℤ, every root eigen-equation 0=0 | Wrong model passes; R05. |
| Canonical coordinate closure | Wrong versus standard A₁ input | Gₘ dimension 1 versus SL₂ dimension 3 | Admitted choice cannot test classification. |
| Root and torus points | Standard A₁,u=1,s=2 | x₊=[[1,1],[0,1]], t=diag(2,1/2) | Wrong root input gives I. |
| Torus-root conjugation | Same; zero-root control | tx₊(1)t⁻¹=x₊(4); zero-root input I=I | Native specialization and weak constructor test. |
| Integral root chart | F₂[ε]/ε² | x₊(ε)≠I, parameter ε recovered | Field-point-only comparison inadequate. |
| Frobenius distributions | p=2, E⁽¹⁾,E⁽²⁾ | Images 0 and E⁽¹⁾ | Divisibility by p checked. |
| Frobenius kernel size | Gₘ and SL₂,p=2 | Distribution dimensions 2 and 8 | Full rank and root counts retained. |
| Toral idempotent μ₀ | Gₘ,p=2, weights 0,1 | μ₀=1+H; actions 1 and 0 | Projects to p-divisible weights. |
| Corner splitting unit | Same weight 1 | φ(1)=μ₀ acts 0, full algebra identity acts 1 | Corner unit not full unit. |
| Contraction nonmonoidality | Weights 1,p−1 | Each contracts to 0; tensor weight p contracts to weight 1 | No tensor-equivalence overclaim. |
| Highest-weight classification control | SL₂,char 2,degree 2 | Sym² dimension 3; simple square span dimension 2 | Weyl/dual-Weyl/simple distinguished. |
| Binary forms | SL₂,char 3,degree 4 | Binomial coefficients (1,1,0,1,1); simple span dimension 4 of 5 | Characteristic-dependent dimensions retained. |
| Steinberg representation | SL₂ highest weight p−1 | Dimension p; at p=2 dimension 2 | Small prime included. |
| Dual convention | Gₘ weight 1 | Ordinary dual weight −1; contravariant dual weight 1 | Borel/duality distinction necessary. |
| Peter–Weyl coefficients | Gₘ, tⁿ | Left/right weights (−n,n); Δtⁿ=tⁿ⊗tⁿ | Regular-action convention fixed. |
| Nonsplit coefficient control | Real rotation representation | End_G(V)=ℂ, real dimension 2, not ℝ | Split/algebraically closed hypotheses matter. |
| Analytic tangent inverse, §11.0 | Gₐ at 0 | D(t)=1 implies intended D(exp t)=1,D(t²)=0; the new cotangent/coordinate inverse assigns all three values | Cotangent comparison now supplies this inverse. |
| Analytic unit derivative | Gₘ at 1 | D(t)=1,D(t⁻¹)=−1; product derivative 1−1=0 | Quotient-rule sign correct. |
| Group analytic bracket | SL₂ | [E₁₂,E₂₁]=diag(1,−1), right-invariant sign opposite | Left-invariant convention consistent. |
| Center homeomorphism first component | n=2,(1,3) | First coordinate 2=centroid | Model; R04 removes admitted data. |
| Center homeomorphism second component | Same | Centered tuple (−1,1), sum 0 | Model; not arbitrary equivalence. |
| Center inverse | c=2,w=(−1,1) | w+c=(1,3) | Inverse checked; n=0 product fails. |
| Plane/disc comparison | z=0; real z=1 | Images 0,1/√2; inverse of 1/√2 is 1 | Denominators positive on specified domains. |
| Plane braid comparison | n=0,1,2 | π₁ values 1,1,ℤ; native braid groups same | Model of admitted comparison. |
| Pure-cover map | n=2 | π₁ map m↦2m; pure subgroup 2ℤ | Inclusion, not identity on ℤ labels. |
| Braid nonsplitting | n=2 | 2a=0 forces a=0; section needs a odd | Now stated in Suggested:283; omission repaired. |
| Braid boundary case | n=0,1 | Permutation quotient 1, identity section exists | n≥2 necessary. |
| Braid multiplication direction | Adjacent transpositions in S₃ | s₁s₂=(123),s₂s₁=(132) | Two-term witness detects opposite order. |
| Invariant quotient | sl₂ toral coordinate t | χ(tH)=t²; full quotient ℂ smooth, regular base ℂˣ | Discriminant complement required. |
| Central invariant factor | Root-free Gₘ | Lie ℂ, W=1, invariant ring ℂ[t] | Central degree-one coordinate retained. |
| Cameral fibre | sl₂,χ=4 | Toral choices 2H,−2H; Weyl fibre size 2 | Actual pullback data. |
| Cameral product map | g=1,t=2H | ([1],2H)↦(2H,2H) | Model of specified map, not arbitrary equivalence. |
| Cameral right W-action | Rank 1 representative n | ([g],t)↦([gn],−t); n²=−I∈T | Action squares to identity on cosets. |
| Normalizer splitting control | SU₂ Weyl lift | n order 4; W element order 2 | No group section assumed. |
| Spectral differential | sl₂ at H | [E,H]=−2E,[F,H]=2F; torus direction identity | Invertible; R01 preserves this input. |
| Spectral projectors | A=diag(1,−1) | P₊=(A+I)/2=diag(1,0),P₋=diag(0,1); product 0,sum I | Simple-spectrum denominators nonzero. |
| Homogeneous fibre | SL₂/T | Retracts onto S²; π₁=0; Gₘ/T point | All global forms use flag/bundle argument. |
| Spectral π₁ comparison | sl₂ regular locus→ℂˣ | Both π₁=ℤ; projection sends generator to generator | Connected simply connected fibre suffices. |
| Arrangement carrier | A₁; empty roots | ℂˣ versus ℂʳ | Empty case contractible, no braid generator. |
| Arrangement freeness | A₁,z=2 | Reflection sends 2 to −2≠2 | Fixed point 0 excluded by root equation. |
| Arrangement quotient | A₁ | 2 and −2 both map 4 under z² | Cover degree 2. |
| Arrangement Artin map | A₁ | ℤ→C₂, m↦m mod 2 | Kernel 2ℤ matches complement π₁. |
| Finite braid lengths | B₃ short/long; G₂ | Relations lengths 4 and 6 | All-length-3 presentation rejected. |
| Weyl scalar extension | A₁ real→complex | Reflection −1 maps to −1 | Root/coroot action transport respects sign. |
| Arrangement monodromy | Rank-one loop once around 0 | Lift from 1 ends −1; Weyl output −1 | Rank-one inversion invisible; next row tests it. |
| Root monodromy direction | S₃ endpoint w=(123) | Ordinary output w⁻¹=(132), not (123) | Opposite-group convention retained. |
| Coroot transport | Dual pair α,y with α(y)=1 | Inverse/dual transport keeps pairing 1 | Wrong simultaneous unadjusted action need not. |
| Central Lie factor π₁ | Gₘ reductive group | Lie regular locus ℂ, π₁=0; group ℂˣ has π₁=ℤ | Lie theorem not group-element theorem. |
| Hopf ideal conditions | ℚ[t,t⁻¹], (t−1), (t²−1), (t−2) | Counits 0,0,−1; first two quotients have group identity, last does not | R08 adds discriminating Checks. |
| Quotient Hopf unit ideal | I=(1) over nonzero k | ε(1)=1≠0; quotient 0 cannot have a counit to k | Excludes unit ideal. |
| Identity/component group | Gₘ; constant S₃ | Component cardinalities 1 and 6; G° dimensions 1 and 0 | R08 must state exact finite-étale hypotheses. |
| Induction composition, §1.1 | 1⊂C₂⊂C₄, trivial ℤ-module | Composite induced rank 2·2=4; direct induced rank 4 | Transitivity on the intended carrier. |
| Coface signs, §1.1 | Trivial H, M=F₂ | d⁰=0, d¹=1, d²=0 modulo 2; H¹=ker(1)/0=0 | Signs retain acyclicity at p=2. |
| Tangent naturality, §2.1 | Gₘ power 3 over F₃ | d(t³)=3=0; Lie kernel μ₃ has dimension 1 | p=3 does not justify discarding the scheme kernel. |
| Adjoint differential, §2.1 | SL₂, H and E₁₂ | [H,E₁₂]=2E₁₂; derivative at s=1 of s²E₁₂ is 2E₁₂ | Algebraic and infinitesimal actions agree. |
| Geometric Jordan, §4.1 | k=F₂(a), g=[[0,1],[a,0]], b²=a | g_s=bI, g_u=b⁻¹g; product g; (g_u−I)²=0; b∉k | Rational factors not asserted over imperfect k. |
| Jordan identity uniqueness | Trivial group and g=1 in Gₘ | Required parts (1,1); (2,1/2) has nonunipotent second factor | Defining properties exclude arbitrary factors. |
| Jordan small-characteristic control | I+E₁₂ over F₂ | g²=I; g_s=I, g_u=g≠I | Finite order does not imply semisimple. |
| Jordan commuting product | 2(I+E₁₂),3(I+2E₁₂) over ℚ | Product 6(I+3E₁₂); factor products 2·3=6 and (I+E)(I+2E)=I+3E | Componentwise law uses commutation. |
| Jordan functoriality | determinant of [[2,1],[0,2]] | det g=4; det g_s=4, det g_u=1 | Character sees the semisimple factor. |
| Diagonalizable trivial case, §4.2 | M=0 and M=ℤ | D(0) dimension 0, D(ℤ) dimension 1; Hom(0,Rˣ) singleton, Hom(ℤ,Rˣ)=Rˣ | Rank zero included. |
| Smoothness criterion, §4.2 | M=ℤ/2 over F₂ and F₃ | Multiplication by 2 has kernel size 2; by 3 kernel size 1; tangent dimensions 1 and 0 | Smoothness false/true respectively. |
| Diagonalizable contravariance | ℤ --2→ ℤ, parameter t=3 over ℚ | Induced point is 3²=9; identity of characters would give 3 | Direction and nontrivial power fixed. |
| Exactness as sheaves | Gₘ --2→ Gₘ over ℚ | Fibre over 2: no ℚ-point, two ℚ(√2)-points; kernel μ₂ has order 2 | Rational surjectivity not claimed. |
| Torus pairing, §4.3 | χ=3, λ=−2 on Gₘ | χ∘λ(t)=t⁻⁶; pairing −6=3·(−2) | README convention agrees with native pairing. |
| Pairing naturality | f(t)=t², χ=3, λ=−2 | ⟨6,−2⟩=−12=⟨3,−4⟩ | Pullback/pushforward directions checked. |
| Rank-zero torus duality | X*=X_*=0 | Hom(0,ℤ)=0; comparison is the unique 0→0 bijection | Perfect pairing does not require positive rank. |
| Multiplicative-type torsion | μₚ in char p | X*=ℤ/p, X_*=0; dual of ℤ/p into ℤ is 0 | Perfect lattice pairing is restricted to tori. |
| Nonsplit torus fixed characters | Norm-one torus over ℝ | Geometric X*=ℤ; invariants solve n=−n, hence n=0 | Real characters do not recover geometric rank. |
| Galois pairing invariance | Same torus, m=3,n=−2 | (−3)·2=−6=3·(−2) | Both lattices transform. |
| Multiplicative-type negative control | Gₐ versus D(0) | Character groups both 0; dimensions 1 versus 0 | Character group alone does not define multiplicative type. |
| Purely inseparable torus morphisms | k=Fₚ(s), k′=Fₚ(s^(1/p)), split Gₘ | Hom before and after is ℤ; exponent 2 remains 2 | No new fractional-exponent morphism. |
| Cotangent comparison, §11.0 | Gₐ at 0 | c([t])=[t], c([t²])=0; rescaled map sends [t] to 2[t] | Specified regular-germ map excludes rescaling. |
| Analytic coordinate independence | u=2t, f=exp(t) at 0 | Old coefficient/derivative 1·1=1; new 2·(1/2)=1 | Repaired inverse passes. |
| Analytic denominator restriction | Gₘ, t⁻¹ at 1; 1/t at 0 on Gₐ | ε(t)=1 gives derivative −1; ε(t)=0 forbids the latter fraction | No division by zero. |
| Transverse fibre product | f=g=id on ℝ | ker(v−w)={(v,v)}, dimension 1=1+1−1 | R03 repoints to SBC B1.0. |
| Nontransverse control | f=g=x² at 0 | df=dg=0; rank 0<1; x²=y² gives two crossing lines | Supplier hypothesis excludes it. |
| Based-complement contract | A₁ | Aut order 2, W order 2, base stabilizer order 1; 2=2·1 | R02 supplies missing contract, not a new signed-cover owner. |
| Based-complement product | A₂ with diagram swap δ | Aut order 12=6·2; δs₁δ⁻¹=s₂; δs₁=s₂δ≠s₁δ | Semidirect, not direct, product required. |
| Full Cartan and base stabilizer | Root-free rank-one integral datum | W=1, datum automorphisms ±1 of order 2 | Integral central action must be retained separately. |
| Lang excluded q=1 | Identity on Gₘ | g⁻¹F(g)=1 for all g, image singleton | q=1 is not a positive power of a prime. |
| Fold convention transport | A₃ outer orbit, then middle | Projected norms 1,2: H-row matrix [[2,−2],[−1,2]], root-row transpose; distinct-sum norms 4,2: root-row matrix [[2,−2],[−1,2]] | Same numbers encode different dual pairings; maps kept separate. |


The table retains **151 evaluated rows** from the 230-row pass. These tests preserve small primes, nonreduced objects, central torus factors, rank zero, disconnected orbit carriers and nontrivial map conventions. They do not certify the 41 admitted data constructions.

## Not verifiable

- **Nine unreadable original works:** Brieskorn, Salvetti, Conrad–Gabber–Prasad, SGA 3, Dipper–Du, Carter, Lang, Steinberg and Gassmann. Legal sources-service searches returned no full text or reached Cambridge, De Gruyter, JSTOR or AMS landing pages without a readable authorized copy. Their requested locators and attempts are recorded together in the missing-reference record. Milne and Conrad support several corresponding endpoints, but do not verify the pagination or every proof step in those originals. The successful Jantzen institutional fetch resolves its initial failed title search; it is not still requested.
- **Uncertified publisher texts:** Waterhouse, Borel, Springer, Humphreys, Serre's finite-group representation book and Howlett–Lehrer resolved to paywalled/uncertified citations. Their internal locators are not certified here, and those settled statuses have not been converted into new requests.
- **Scan limitations:** some displayed formulas in the Jantzen extraction are incomplete. The surrounding propositions and hypotheses were read, and the relevant coface, induction and inversion formulas were independently tested above; exact visual transcription of every displayed formula is not claimed.
- **Unidentified source discrepancy:** README:2710 does not identify the source and passage meant by its ambiguous-divisibility comment. It cannot be registered as an erratum from that wording alone.
- **Admitted constructions:** formula-level examples test intended objects; they do not evaluate nonexistent Lean bodies. General existence/classification theorems do not independently certify every proposed integral closure/chart construction. R04/R05 give the acceptance consequence.
- **Open ownership:** supplied sibling folders were used; open revisions of existing roadmaps were not promoted to suppliers. Open pull requests without supplied files were not independently audited. The ComplexComparisonPartII C−1.1 reference in OrbitGeometryTargets:19 remains unverified against an authorized supplied copy, and is not treated as proof of ownership.
- This review is complete with a needs-changes verdict. Missing texts do not suspend that verdict or the concrete repairs above.

## Source issues

- **Misprint** in milne at §10b, Example 10.7, printed p. 188 (milne line 7903): the source says the quadratic commutator coefficient is twice AB−BA; it should be AB−BA; affects the proof.
- **Misprint** in gros-kaneda at Lemma 1.1(iii), printed p. 2, arXiv v2 (gros-kaneda line 92): the source says the shifted binomial image has no final projector; it should be multiplied by μ₀, including when b=0; affects a stated result.
- **Misprint** in dudas-michel at Proposition 8.9 proof, printed p. 32 (dudas-michel line 1477): the source says the second factor of U∩Q is U∩Q again; it should be U∩V; affects the proof.
