# Review of ReductiveGroups (pull request #1332 at f6cb101)

**Verdict:** needs changes

## R01 (P1) — The FormalConnectionsOpers dependency still closes a cycle

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:2788–2789`, “via FCO's lower analytification dictionary”; also lines 2805 and 2863.

**Claim:** Moving the dictionary into §11.0 has not removed the reverse supplier edge. Layer 11 still explicitly consumes FormalConnectionsOpers, which consumes this roadmap. The contract requires one direction between roadmaps, even when individual layers admit a finer ordering.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:240–252`, at the supplied open head, imports ReductiveGroups Layers 0–9, including its tangent, reductive, integral and quotient constructions. The two directed edges therefore form a cycle of length two.

**Repair:** Make §3A.5/§11.0, using the pinned analytic inverse theorem, the complete lower supplier for these group comparisons. Replace all three remaining FCO inputs by those local targets and make FormalConnectionsOpers consume that owner. Preserve the actual differential `(X mod t,Y) ↦ [X,t]+Y`: for SL₂ at H its root coefficients are −2 and 2 and its toral coefficient is 1. This repair preserves the local-isomorphism test without a reverse dependency. Moving the roadmap in the order does not remove the cycle.

## R02 (P2) — Forty-one companion data declarations still contain admissions

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63–64`, “OrderedPlane n ≃ₜ ℂ × CenteredPlane n := sorry”; analogous constructions in five other companions.

**Claim:** The Lean form rules apply to every scoped file. The repair removed admitted data from Suggested, but retained admitted bases, actions, equivalences, structure laws and the constructor family elsewhere. Declarations using those values remain disallowed acceptance substitutes.

**Witness:** Counts by file: IntegralRational 3; SignedADE 11; FoldingADE 12; CoverLift 5; SpectralWeyl 9; ChevalleyModel 1. Suggested, OrbitGeometry and BruhatCoordinate have zero. This count includes admissions in data-record proof fields.

**Repair:** Delete admitted data and their dependent substitute interfaces. Retain only simple definitions with complete bodies needed for headline theorems; express genuine existence/property results propositionally on native carriers, or name the missing carrier in the module docstring. For centering at n=2, `(1,3) ↦ (2,(−1,1))` and the inverse returns `(1,3)`; n=0 has one configuration but the proposed product has a ℂ factor. Preserve n>0 if this comparison is retained. The existing cover-kernel existential in Suggested demonstrates the permitted form.

## R03 (P2) — The simply connected operands still admit the zero-root model

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23–46`, “SCRealizationInput”; lines 72–77 test only torus conjugation.

**Claim:** This record and its admitted canonical inhabitant do not state the promised normalized integral realization. The docstring acknowledges that arbitrary operands need not realize the root datum; the file nevertheless uses them as its only model-construction acceptance material.

**Witness:** For A₁ use ℚ², ℤ², h=diag(1,−1), the standard representation and weights ±1, but e₊=e₋=0. All record fields hold. Root points are I and the closure is the one-dimensional torus, not three-dimensional SL₂.

**Repair:** Remove this substitute. Keep the actual full-frame/root-datum/pinning and change-of-choice endpoints in the README, and state them only when their native carriers suffice; otherwise list them as unstatable, as Suggested now does. The corrected frame must exclude the witness by `[e₊,e₋]=h`: its two sides are 0 and diag(1,−1) for the wrong model. The intended root maps at 1 are the two nonidentity elementary unipotents. The conjugation equation alone gives I=I on the wrong model.

## R04 (P2) — Statable endpoints remain outside the acceptance module

**Location:** `TauCetiRoadmap/ReductiveGroups/Suggested.lean:15–19`, “complex-points properness and smooth-chart comparisons lack the classical-topology functor”.

**Claim:** The obstruction applies to the full analytic functor/atlas, but not to the properness-to-compactness endpoint already stated using a few real definitions in the companion. The native braid-extension nonsplitting endpoint is also absent from Suggested and is not listed as unstatable.

**Witness:** `OrbitGeometryTargets.lean:178–201` defines the classical topology with `generateFrom` and states `compact_complexPoints` and `hausdorff_complexPoints`. `SpectralWeylTargets.lean:108–110` states nonsplitting entirely with native braid groups and homomorphisms, without admitted data.

**Repair:** Include the compactness headline and its necessary simple topology definitions in Suggested, and include the native nonsplitting endpoint of §11A. Keep the full smooth-atlas/analytic comparison separately listed as unstatable. Test compactness on P¹(ℂ), with A¹(ℂ) as the nonproper control; for n=2 the braid extension is ℤ→ℤ/2, where a section would require an odd integer a with 2a=0. Only a=0 satisfies the latter equation. Do not replace either endpoint by a weaker check.

## R05 (P2) — Layer 2 re-plans native tangent and differential infrastructure

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:318–328`, “Define its bracket using invariant derivations and the differential of a group homomorphism”.

**Claim:** The counit-derivation bracket, Lie-hom differential, identity/composition laws and point adjoint action already exist at the pin. Layer 2 must distinguish its new scheme/tangent and algebraicity comparisons from those constructions, rather than commission them again.

**Witness:** `TauCeti/Algebra/AlgebraicGroup/Tangent/Lie/Basic.lean:120` defines the convolution bracket; `Tangent/Lie/Map.lean:129,163,172` supplies `derivationCompLieHom` and its identity/composition equations. `Tangent/Adjoint.lean:177` supplies `Derivation.adRepresentation`.

**Repair:** Cite those exact declarations in scope/supplier contracts and remove the duplicate construction/API promises. Retain the scheme tangent comparison, scheme-kernel dimension statement, algebraicity and differential-of-Ad adapters with their own hypotheses. The native bracket evaluates on E₁₂,E₂₁ to diag(1,−1), and Frobenius on Gₘ has differential 0 with one-dimensional Lie(μₚ); neither convention nor the nonsmooth kernel information is lost by reuse.

## R06 (P2) — The fraction rule does not specify the inverse on analytic germs

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:2661–2665`, “The restriction from germ derivations to H is inverted by D(a/s)”.

**Claim:** This formula extends a derivation to the algebraic local ring H at the identity. It does not yet construct the promised inverse on the holomorphic local ring. §3A.5 constructs topology and charts but does not state the algebraic/analytic cotangent comparison used by this step.

**Witness:** For Gₐ at 0, H=ℂ[t], the analytic local ring is ℂ{t}; exp(t) is a holomorphic germ but is not a fraction a(t)/s(t). The displayed rule assigns it no value. Its required derivative is 1.

**Repair:** Name and prove the map on cotangent spaces `m_alg/m_alg² → m_an/m_an²` and its isomorphism, then dualize to construct the inverse on all germs. In smooth coordinates specify `D(f)=Σ vᵢ∂ᵢf(e)` and prove independence of coordinates. SGA 1 XII, Theorem 1.1, pp. 239–240, supplies the stronger completed-local-ring comparison (`sga1` lines 9399–9410). On Gₐ this sends exp(t) to 1 and t² to 0; on Gₘ it sends t⁻¹ to −1 at 1. Keep the fraction rule as a compatibility equation.

## R07 (P3) — Normalize imports in all eight companions

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`, import of `TauCetiRoadmap.ReductiveGroups.SignedADETargets`; other companion headers have the same class of defect.

**Claim:** Companion files import roadmap modules, individual Mathlib modules, or omit the required leading `import Mathlib`. A passing gate for Suggested does not exempt them.

**Witness:** `SignedADETargets.lean:1–10` imports another roadmap module and seven Mathlib submodules. `ChevalleyModelTargets.lean:1–3` has no Mathlib import. `BruhatCoordinateTargets.lean:1–5` consists of Mathlib submodule imports.

**Repair:** For every retained acceptance file use one leading `import Mathlib`, followed only by the individual pinned TauCeti modules actually used. Consolidate the few necessary headline definitions instead of importing roadmap modules. A scratch consolidation using native imports elaborated; the repaired Suggested header already elaborates. Recheck the actual retained files after removing the admitted-data dependencies.

## R08 (P3) — Remove API and check padding from the acceptance files

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204–207`, `rationalDistributionAction_apply`; also `ChevalleyModelTargets.lean:72–77` and the small matrix checks in `BruhatCoordinateTargets.lean`.

**Claim:** These are definition expansions, existing-library specializations or worked Checks, not headline theorems. The companion acceptance files retain the material removed from Suggested.

**Witness:** On a scratch copy, `rationalDistributionAction_apply` closes with `rfl`. The torus conjugation signature specializes `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, at `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241`.

**Repair:** Delete it from `Suggested.lean` and from companion acceptance files; keep useful formulas as README API/Checks with the native citation. Do not prove the padding in place. On the weight-three Gₘ line, both distribution-action expressions are 3m; in SL₂, diag(2,1/2) conjugates x₊(1) to x₊(4). These are valid checks of the imported constructions, not new endpoints.

## R09 (P3) — Complete the remaining locators, Checks and timeless form

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:685–699`, definitions of diagonalizable groups and tori; `README.md:322`, “Milne, Chapter 10, §§a–b”; §11.0 has no source locator.

**Claim:** The opening structure is repaired, but early target blocks still lack individual exact locators, APIs and three discriminating Checks per definition. The tangent locator covers only part of its claims. The bibliography still has no sources manifest. Companion docstrings retain illustrative/process and computational-certificate language.

**Witness:** Layer 4 gives two examples for several definitions and no theorem/page locators. Milne's differential Lie-hom theorem is 10.23, p. 193 (`milne` lines 8076–8091), outside §§a–b. `FoldingADETargets.lean:310` requires “exact-word certificates”.

**Repair:** Supply per-target hypotheses, locators, API and three discriminating Checks; complete the source manifest using the existing stable keys and distinguish inaccessible editions. For tori use Gₘ (lattice ℤ), the real norm-one torus (Galois action −1), and μₚ (nonreduced, hence not a torus). Cite Milne 10.14/10.23/10.28–10.29 where used and an actual analytic comparison source for §11.0. Replace the certificate requirement by generation/Serre/isomorphism targets. Remove “former … survive” at README:2297 and update every retained module/declaration docstring to the required mathematical form.

## Verified sound

This review read all ten scoped files, compared the previous eleven findings first, and then reviewed the entire repaired folder. The required repository README and CONTRIBUTING were read, with main-branch ReflectionInvariantTheory and SchemeAndStackFoundations used for shape comparisons. No outside-folder change appears in `origin/main...HEAD`; no PR file was edited. The programme builds on the existing ReductiveGroups work, so its existence on main is not itself grounds to reject the folder. The repairable defects above give **needs changes**, not rejection.

### Previous findings, checked against this head

| Previous finding | Current passage and disposition |
|---|---|
| R01, properness | README:80–86 now says “proper geometrically integral group scheme over a field”. **Repaired**; S₃ is explicitly excluded. |
| R02, reciprocal supply | README:26 assigns Lang/cohomology locally; README:2788–2789 still says “FCO's lower analytification dictionary”. **Partly repaired**; current R01. |
| R03, admitted data | Suggested:149 now states “∃ φ” with its evaluation equation, but ChevalleyModel:46 still ends “:= by sorry”. **Partly repaired**; current R02. |
| R04, constructor substitute | ChevalleyModel:15–16 still says the record “only packages the native constructor operands”. **Not repaired** in the companion; the full README frame is improved. Current R03. |
| R05, missing headlines | Suggested:65,74,83,93 now contains the four orbit headlines; :237 has integral PBW. **Partly repaired**; compactness and braid nonsplitting remain outside the acceptance module (R04). |
| R06, generic descent | README:16–18 says “Generic descent is supplied by SchemeAndStackFoundations … and ModularCurves”. **Repaired** for this identified overlap; the group-specific representability work remains. R05 is a different native-object overlap. |
| R07, roadmap blob links | Supplier citations now use roadmap sections; gate reports `blob=0`. **Repaired**. Pinned library source links are not roadmap links. |
| R08, imports | Suggested:1 is now “import Mathlib”; CoverLift:1 still imports another roadmap module. **Partly repaired**; R07. |
| R09, padding | The old Suggested wrappers are gone; IntegralRational:204 still has `rationalDistributionAction_apply`. **Partly repaired**; R08. |
| R10, form/locators/Checks | Summary and the required main headings are present; Layer 4 still consists of broad bullets. **Partly repaired**; R09. |
| R11, computational deliverables | README:1824 now asks for “Serre relations”; FoldingADE:310 retains “exact-word certificates”. **Partly repaired**; residual covered by R09. |

No supplied repair report marked these findings “not actionable in this package”; no settled non-actionability decision is being reopened.

### Gate, elaboration and probes

The supplied gate at this head is **OK**: every reported counter is zero, including build, dependency, imports, admitted data, stray files and outside-folder changes. There is therefore no gate failure to invent. Manual checks of the separately scoped companions yield R02/R07/R08 despite that output.

Independent `lake env lean` elaboration of Suggested succeeded with only the six admitted-theorem warnings. A scratch copy with `#check @name` for each of its **22 declarations**, using their full namespace, also elaborated. No required binder was lost. The orbit statements retain algebraic closure, affine/smooth/quasi-compact G, finite-type/quasi-compact/separated X; the unconditional existence statement retains nonemptiness. Centrality remains explicit on the cover-kernel theorem. The full frame, basis and root-pairing hypotheses remain on integral PBW. No type changes were made.

The one-tactic scratch pass tried `simp`, `rfl` and `infer_instance` on all **94 admitted theorem declarations** across the nine files (6, 8, 16, 23, 6, 1, 17, 17, 0 respectively for Suggested, IntegralRational, SignedADE, FoldingADE, CoverLift, ChevalleyModel, OrbitGeometry, SpectralWeyl, BruhatCoordinate). Its scoped native-import consolidation elaborated. `rationalDistributionAction_apply` closed by `rfl`. Direct library inspection identifies the conjugation specialization and explicit reflexive/native-lemma wrappers as further padding. Failure of the other tactic attempts is not a truth certificate. Scratch import/consolidation failures encountered before the successful scoped run are not reported as failures of the submitted module.

The required dependency command returned:

```text
depcheck: 204 roadmaps, 1481 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The explicit two-way edge in R01 survives that mechanical result. All `*Needs:*` lines were read; no undeclared supplier gap has been treated as an authorized gap.

### Source sample and additional locator checks

- **§1.1, rational cohomology and induction.** The legal 1985 MPIM Jantzen preprint was read at I.3.3–I.3.7, printed pp. 53–58 (`jantzen` lines 1507–1645), I.3.9, p. 60 (lines 1688–1707), and I.4.14–I.4.16, pp. 77–79a (lines 2102–2161). It supports flat group-scheme comodules, cofree acyclicity and the induction/cohomology constructions, including coefficients that need not be flat. The README's 2003 page numbers **were not verified**; they are not the pages of this preprint. The general bialgebra-map cotensor adjunction was also checked directly using counit/coassociativity: forward evaluation and `(u⊗1)ρ` are inverse. The subgroup/function-convention source is not silently credited with that more general wording.
- **§2.1, tangent Lie algebra.** In [Milne's 2017 text](https://www.jmilne.org/math/Books/iAG2017.pdf), §§10a–b cover tangent vectors and the initial bracket discussion (`milne` lines 7803–7959, pp. 186–190). The kernel statement is 10.14 (lines 7960–7983, p. 190); Lie functoriality is Theorem 10.23 (lines 8076–8091, p. 193); derivations/invariant derivations occur in 10.28–10.29 (lines 8143–8174, pp. 195–196). Thus the given §§a–b locator is incomplete, rather than evidence that the entire section is false. The coefficient-2 slip in the source is recorded below; the README uses the correct bracket.
- **§11.0, group-specific analytic dictionary.** There is no locator attached to its claimed inverse. The quotient rule was tested on t⁻¹ and the bracket on SL₂; R06 isolates the additional analytic-germ step. The cited lower §3A.5 source was read: SGA 1 XII Theorem/Definition 1.1 and §1.2, pp. 239–241 (`sga1` lines 9394–9471), covers general locally finite-type complex schemes, including nonreduced and nonseparated cases. Proposition 3.1, pp. 244–245 (lines 9594–9638), covers the smooth/étale/separated comparisons. Proposition 3.2(v), pp. 245–247 (lines 9639–9698), includes finite type and proves properness using Chow's lemma. Its completed-local-ring assertion provides a precise route for the missing cotangent comparison. Serre GAGA §2 no. 5, pp. 8–9 (`gaga` lines 293–344), supports the classical affine-chart topology for varieties; it alone is not the source for arbitrary nonreduced schemes.
- **Orbit headlines.** Milne 1.65(b), pp. 26–27 (`milne` lines 1461–1503), gives locally closed equivariant images and explicitly applies this to orbit maps. Proposition 1.66 and its proof, pp. 27–28 (lines 1504–1514), give the dimension-drop/minimal-closed-orbit argument. The README's componentwise and reduction adapters are needed for its disconnected/nonreduced action-space generality; the Lean hypotheses do not assume irreducibility of G or reducedness of X.
- **Lang and the integral endpoint.** Milne 17.96–17.98, p. 383 (`milne` lines 15752–15781), gives Steinberg surjectivity, field-Frobenius surjectivity and H¹ triviality. Inverting the input converts the source convention to g⁻¹F(g). [Conrad's Theorems 6.1.16–6.1.17](https://math.stanford.edu/~conrad/papers/luminysga3.pdf), pp. 196–197 (`conrad` lines 8159–8182), give existence and the pinned isomorphism-category equivalence over a **nonempty** base. They certify those endpoints, not every proposed integral chart proof step.
- **Frobenius splitting.** [Gros–Kaneda v2](https://arxiv.org/abs/1712.06835), pp. 1–2 (`gros-kaneda` lines 27–67), explicitly treats general reductive groups with a split integral form and the corner μ₀Dist(G)μ₀. The README retains the corner unit and central torus; the omitted μ₀ in one auxiliary source formula is recorded below.
- **Flagged source discrepancies.** README:2521's “ambiguous divisibility phrase” does not identify a checkable passage. It is not certified or attributed to a source as an error. No literal unverified-locator list or sources manifest is present to supply a more exact locator.

### Ownership and pinned-object audit

Object searches used the roadmap index, main checkout, board package inventory and supplied sibling checkouts, then opened the relevant declarations/sections. The 21 unresolved-name leads in the worker's citation report were not treated as 21 missing suppliers: many are roadmap-local names or prose identifiers. In particular the Gassmann interface resolves on main.

Concrete pinned declarations opened include:

| Object | Declaration and pinned file/line | What it supplies / limit |
|---|---|---|
| Proper groups | `isCommMonObj_of_isProper_of_geometricallyIntegral`, `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132` | Proper + geometrically integral over a field, not proper alone. |
| Affine dictionary | `hopfSpec.fullyFaithful`, `essImage_hopfSpec`, `Mathlib/AlgebraicGeometry/Group/Affine.lean:187,482` | Affine group schemes/Hopf algebras; no reductive classification. |
| Tangent carrier | `derivationLinearEquivTangentKer`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Basic.lean:650` | Counit derivations and dual-number tangent kernel. |
| Bracket | `Derivation.instBracketCounitAlgebra`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Lie/Basic.lean:120` | Convolution commutator, with its actual sign. |
| Differential | `derivationCompLieHom`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Lie/Map.lean:129` | Bialgebra-map differential; identity :163, composition :172. |
| Adjoint | `Derivation.adRepresentation`, `TauCeti/Algebra/AlgebraicGroup/Tangent/Adjoint.lean:177` | Pointwise convolution adjoint representation; not itself the full analytic comparison. |
| Closed subgroup tangent | `quotientLieHom`, `lieSubalgebra`, `quotientLieEquiv`, `TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Tangent.lean:64,115,254` | Tangents annihilating the Hopf ideal and their native Lie subalgebra. |
| Quotient sheaf | `CommHopfAlgCat.fppfQuotientSheaf`, `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Basic.lean:154` | Sheafification for a normal Hopf ideal; no universal representability result. |
| Integral form | `kostantForm`, `dividedPower_mem_kostantForm`, `ringChoose_mem_kostantForm`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/Form.lean:124,179,185` | Native generated subring and generator membership; these do not assert the new full-frame PBW theorem. |
| Torus/root conjugation | `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241` | Exact equation under the weight-vector and root-weight hypotheses. |

Resolved supplier contracts include SchemeAndStackFoundations §§1.1, 1.14–1.18 (descent/torsors), §0.7 (dimension), §0.29 (Frobenius), §4.12 (Chow); ModularCurves §§0E–0F (main lines 386–430, effective affine/group descent and affine finite-presentation Weil restriction); RootSystems' abstract root/Coxeter and datum layers; LieHighestWeight Layer 7 (main lines 980–1078, Lie Chevalley restriction with its Killing/characteristic-zero setting); LieGroups Layer 8 (main lines 428–442, complex flag cells of complex dimension ℓ(w)); ReflectionInvariantTheory §§1–4 (finite-W invariants and the fixed central summand); InductionRestriction §2.1 (main lines 346–399, fixed-coset/Gassmann criteria); DGFloer Layer 1 item 2 (main supplier contract lines 130–148, actual fibration LES, not only a lifting predicate); and AlgebraicTopology's based van Kampen/CW route. The FormalConnectionsOpers supplier contract was reread at its supplied open head, giving R01.

The ownership distinctions that remain mathematically substantive are: group-derived root data versus abstract root data; full integral group realization versus a Lie presentation; scheme quotient representability versus the existing quotient sheaf; the general full-torus PBW endpoint versus the native generated subring; and group invariant/spectral adapters versus Lie and finite-reflection invariant algebra. The local movement of Lang, rational cohomology and the group analytic comparison is recorded by the repaired scope; the surviving reverse FCO edge must still be removed. No collision was found for the fully qualified names of Suggested's 22 declarations in the copies searched. Ownership against open pull requests **without supplied files** was not checked; in particular no verdict about a competing ComplexComparisonPartII open-head ownership claim is inferred here.

### Headline inventory

The README's endpoints are orbit local closedness, boundary dimension drop and closed-orbit existence; classical complex-point compactness/smooth comparisons; Lang–Steinberg and finite-field exactness; reductive structure/Bruhat and relative root-datum classification; the full reductive integral PBW and pinned model/change-of-choice theorem; signed integral ADE/folding and cover-lift kernel; rational highest-weight/Steinberg/Peter–Weyl theory; and finite-arrangement/spectral Weyl monodromy, including the braid extension.

Suggested now states the four orbit theorems, the character-kernel equivalence with its actual twist formula, and full integral PBW. Its module docstring names missing carriers for the general pinned model, highest-weight classification, spectral comparison, analytic charts and Lang. That is a valid way to record genuinely unavailable carriers. R04 concerns the compactness and native braid statements that do not have those obstructions. The extensive admitted carrier encodings in companions do not make their endpoints statable under the acceptance rules.

### Computed adversarial pass

Each row records concrete evaluations, not a claim that finite tests prove the general theorem. “Model” means the intended mathematical construction was evaluated; an admitted Lean data body itself cannot be evaluated and is subject to R02. Characteristic/base-ring restrictions in the statement are retained. The table covers the seeded sample, headline results, all layers and the objects touched by findings.

| Statement | Instances tried | Computed values on the two sides / negative control | Result; change |
|---|---|---|---|
| Proper ⇒ commutative with geometric integrality | Constant S₃; trivial group | (12)(23)=(123) versus (132); trivial commutator 1=1 | S₃ excluded; old R01 repaired. |
| Hopf multiplication convention | GL₂ coordinate x₁₂ | Δx₁₂=x₁₁⊗x₁₂+x₁₂⊗x₂₂; matrix product gives same two terms | Correct order; none. |
| Hopf antipode/counit | Gₘ, t | t·t⁻¹=1; ε(t)=1 | Polynomial ring without t⁻¹ fails; none. |
| Affine group/Hopf dictionary | Gₐ versus Gₘ | Primitive Δt=t⊗1+1⊗t versus group-like t⊗t | Distinct group laws retained; reuse native. |
| Flat quotient sheaf | Gₘ/μ₂ over ℚ | 2 has 0 square roots in ℚ and 2 in ℚ(√2) | Point-surjectivity excluded; none. |
| Faithful representation | Gₘ standard character; trivial character | t↦t gives coordinate generator t; t↦1 gives image {1} | Closed immersion needs faithful/coefficient condition. |
| Rational invariants, §1.1 | Trivial Hopf algebra; M=ℤ/2 | d⁰=0,d¹=id,d²=0; H⁰=ℤ/2,H¹=H²=0 | No coefficient-flatness needed. |
| Cofree acyclicity | H=A; N=ℤ/2 over ℤ | N⊗H=N; positive cohomology 0 on both descriptions | Nonflat control passes. |
| Coefficient permutation | Gₘ weight 1 | d⁰(1)=1⊗(t−1); transported value (t−1)⊗1 | No extra minus sign. |
| Induction equalizer | Identity H→H; zero M | ρ identifies equalizer with M; for M=0 both are 0 | Identity and empty cases pass. |
| Induction/reciprocity | Trivial subgroup of C₂ | Ind ℤ=ℤ²; swap matrix [[0,1],[1,0]]; Hom-adjunction evaluation at identity | Two delta basis vectors retained. |
| Induction inversion | Gₘ weight 1 | F(t)=t; f(t)=t⁻¹; F(1)=f(1)=1 | Inverse character distinguished. |
| Tangent kernel | Trivial group; Gₐ | Dimensions 0 and 1; dual-number elements 1 and εv | Native carrier agrees; R05 reuse. |
| Tangent bracket, §2.1 | E₁₂,E₂₁ in sl₂ | EF−FE=diag(1,−1); reversed bracket diag(−1,1) | Correct; source factor 2 rejected. |
| Tangent dimension | μₚ in char p | Lie dimension 1 versus scheme dimension 0 | Smoothness necessary and present. |
| Differential and kernel | Frobenius on Gₘ | d(t↦tᵖ)=p=0; kernel tangent dimension 1 | Geometric point kernel alone misses μₚ. |
| Differential composition | Gₘ powers 2 and 3 in char 0 | d(t⁶)=6; product 2·3=6 | Native composition suffices. |
| Adjoint action | SL₂ diag(2,1/2) | E↦4E,F↦F/4,H↦H | Matches native convolution Ad. |
| Scheme subgroup kernel | Gₘ square map in char 2 | Kernel μ₂ has one geometric point, tangent dimension 1 | Do not replace subgroup scheme by points. |
| Orbit map | Gₘ scaling A¹,x=1 | g↦g; image D(t); identity gives 1 | Actual action map specified. |
| Orbit closure | Same x=1; x=0 | Closure A¹ versus {0} | Separates open and closed orbits. |
| Orbit boundary | Same two x | Boundary {0} versus ∅ | Set difference correct. |
| Orbit dimension | Same two x | Dimensions 1 and 0; empty boundary dimension ⊥ | No natural-number empty-dimension confusion. |
| orbit_locallyClosed | Gₘ on A¹ | D(t) open; {0} closed | Both locally closed; none. |
| boundary_dimension_lt | Gₘ on A¹ | 0<1; for x=0, ⊥<0 | Strict inequality includes closed orbit. |
| exists_closed_orbit_in_closure | Gₘ on P¹, x=[1:1] | Closure P¹ contains {0} and {∞}, each dimension 0 | Existence, not uniqueness. |
| exists_closed_orbit | Trivial action on a point; empty X | One closed orbit versus zero rational points | Nonemptiness binder excludes empty X. |
| Disconnected orbit control | C₂ swaps two reduced points | Orbit cardinal 2, dimension 0, boundary ∅ of dimension ⊥ | Connectedness not silently required. |
| Nonreduced orbit control | Trivial group on dual numbers | Underlying orbit one point, dimension 0; tangent dimension 1 | Orbit topology does not discard tangent distinction. |
| Minimal orbit closed | Gₘ on A¹ | Minimum orbit dimension 0 at 0; open orbit dimension 1 | Minimum is closed. |
| Classical point topology | A⁰,A¹, unit ideal | One point, usual ℂ, empty; 1/n→0 in ℂ | Discrete model excluded. |
| Reduction homeomorphism | Spec ℂ[ε]/ε² | Point counts 1=1; tangent dimensions 1≠0 | Topological, not smooth, comparison. |
| Hausdorff comparison | Separated A¹; doubled origin | Distinct ordinary points separate; the two origins have intersecting neighborhoods | Separatedness retained. |
| compact_complexPoints | P¹ versus A¹ | Sphere compact; integer sequence in ℂ unbounded | Statable endpoint omitted; R04. |
| Smooth chart transition | P¹ at z=2 | w=1/2; dw/dz=−1/4 | Reciprocal sign fixed. |
| Étale/local inverse comparison | Square map at 1 and 0 | Derivatives 2 and 0; inverse derivative 1/2 only at 1 | Invertibility excludes branch point. |
| Smoothness control | Node xy=0 at origin | Tangent dimension 2, branch dimension 1 | One-dimensional smooth chart fails. |
| Second countability | Finite disjoint union; uncountable disjoint points | Finite basis union countable; uncountably many singleton opens need uncountably many basis elements | Finite-type qualifier retained. |
| Closed orbit compactness | Gₘ on P¹ | {0} compact; open orbit ℂˣ noncompact | Closedness essential. |
| Projective restriction nonzero | Line spanned by v≠0 | Choose ℓ(v)=1, so evaluated section 1≠0 | Zero vector is excluded from projective point. |
| Diagonalizable groups | D(ℤ),D(ℤ/p) | Gₘ; μₚ with coordinate (t−1)ᵖ in char p | Finite group of characters need not give torus. |
| Character/cocharacter pairing | Gₘ, m=2,n=3 | t↦t⁶; pairing 6=2·3 | Integral convention fixed. |
| Nonsplit torus | Real norm-one torus | Complex character lattice ℤ, conjugation n↦−n | Not split ℝ-torus; R09 adds Check. |
| Unipotent definition | SL₂; U₂ | SL₂ has no nontrivial characters but dimension 3 semisimple; U₂ elements I+aE₁₂ | No-character converse excluded. |
| Jordan decomposition | diag(2,2)·(I+E₁₂) | Semisimple factor 2I, unipotent I+E₁₂, product [[2,2],[0,2]] | Commuting factors recombine. |
| Polynomial exp/log | N=E₁₂ | N²=0; exp N=I+N; log(I+N)=N | Characteristic-zero polynomial route passes. |
| Exp is not additive group isomorphism | Upper U₃ | [E₁₂,E₂₃]=E₁₃≠0; underlying Lie additive group commutator 0 | Variety comparison only. |
| Unipotent radical | GL₂ and upper Borel | Dimensions 0 and 1 respectively | Geometric reductivity distinguishes them. |
| Levi semidirect product | Weight-1 action of Gₘ on Gₐ | (1,2)(3,5)=(7,10); ignoring action gives (4,10) | Action retained. |
| Cohomological coboundary | b(t)=t−1, g=2,h=3 | 2b(3)−b(6)+b(2)=4−5+1=0 | Cocycle sign correct. |
| Complement conjugacy | L×Gₐ | Every central unipotent conjugator fixes the same complement | No unsupported uniqueness of conjugator. |
| Parabolic complement uniqueness | B⊂GL₂ with fixed T | C_U(T)=1; only unipotent conjugator preserving T is 1 | Qualified uniqueness passes. |
| Reductive vs linearly reductive | SL₂ in char 2 on Sym² | Total dimension 3; invariant squares submodule dimension 2 | Positive-characteristic semisimplicity excluded. |
| Bruhat root partition | A₂,w=s₁ | H roots {α₂,α₁+α₂}; J roots {α₁}; counts 2+1=3 | Correct complementary set. |
| Upper U₃ coordinates | a=2,b=3,c=7 | Complement-first correction c−ab=1; wrong sign gives 13 | Factor order matters. |
| Bruhat orbit differential | (X,Y) in H×J | Derivative X−Y; inverse J-coordinate changes to X+Y | Signs track inversion. |
| Positive contraction | A₁,2ρ∨ | Root exponent 2; z²a→0 at z=0 | Contracts positive root coordinate. |
| Bruhat cell parameter | GL₂ open cell | j(a)nB ↦ [a:1]; j(a)B stays [1:0] | Wrong coset representative detected. |
| Bruhat dimensions | GL₂ labels 1,s | Complex dimensions 0,1; real dimensions 0,2 | Length normalization passes. |
| Rank-one Gauss factors | a=b=1,t=2 | x₋(1/2)diag(2,1/2)x₊(1/2)=[[2,1],[1,1]] | Denominator 1+ab=2 nonzero. |
| Gauss open-locus exclusion | a=1,b=−1 | 1+ab=0 | No division by zero permitted. |
| Lang surjectivity | Gₐ/F₂; a²+a+1=0 | F(a)−a=a²+a=1 | Geometric preimage, not F₂-point surjectivity. |
| Lang connectedness | Constant C₂,F=id | Every g⁻¹F(g)=1; image size 1≠2 | Disconnected control excluded. |
| Lang torus convention | Gₘ/F₃, i²=−1 | i⁻¹F(i)=i²=−1 | Inverting input matches source convention. |
| Lang H¹ consequence | Trivial group; constant C₂ | H¹=1 versus Hom(procyclic,C₂)=C₂ | Connected case only. |
| Steinberg definition | Ordinary Frobenius; id on Gₘ | F¹ is Frobenius; identity has infinitely many fixed points | Positive-power condition excludes identity. |
| Parabolic intersections | Opposite Borels of GL₂ | Intersection T; U∩V=1 | Four-factor decomposition specializes correctly. |
| Common Levi dimensions | P=Q | Intersection P=L⋉U; redundant unipotent factors trivial | Identity comparison recovered. |
| Harish-Chandra averaging | U=C₂, coefficient ℚ | e=(1+u)/2; e²=(2+2u)/4=e | 2 invertible; char 2 excluded. |
| Induction dimension | S₃/C₂, trivial line | Index 3; induced dimension 3=3·1 | Native theorem is a Check. |
| Mackey double cosets | S₃,H=C₂ | Two double cosets; restriction dimensions 1+2=3 | Total dimension agrees. |
| Fixed-coset identity at 1 | S₃,H=C₂ | 3·2=6·1=6 | Both sides computed. |
| Fixed-coset identity at transposition | Same | 1·2=2·1=2 | Centralizer factor correct. |
| Fixed-coset identity at 3-cycle | Same | 0·2=3·0=0 | Empty intersection included. |
| Parabolic nonconjugacy control | GL₃(F₂), line and plane stabilizers | Both indices 7; plane stabilizer preserves no common line | Equal permutation data need not imply conjugacy. |
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
| Full frame map | A₁ correct versus zero roots | [e,f]=h versus 0≠h | R03 wrong model excluded by true frame. |
| Lift subgroup | Split C₂×ℤ extension, identity action | Kernel-fixing identity lies in subgroup; inversion of first factor fixes ±1 | Actual automorphisms, not free labels. |
| Lift projection | Pair (φ,a) | Projection of product ab equals product of projections ab | Definitional API, not headline. |
| Character kernel equivalence | Q=ℤ, χ(n)=(−1)ⁿ | (s,n)↦(s(−1)ⁿ,n); χ² gives identity | Specified twist rules out arbitrary equivalence. |
| Nonabelian lift control | Q₈→C₂² | i↦−i,j↦j,ij↦−ij; products preserved | Centrality supports nonabelian extension. |
| Trivial quotient lift kernel | Q=1 | Hom(1,C₂) and lift kernel both singleton | No spurious automorphisms. |
| Isometry lift restriction | A₂ diagram flip | α↦β,β↦α; pairing −1 remains −1 | Actual lattice action preserved. |
| Reversal sign | A₂ flip on α+β | Root fixed, coefficient −1; on each simple coefficient +1 | Unsigned permutation wrong. |
| Lift composition | A₂ flip twice | Nonsimple coefficient (−1)²=1; root returns | Order equation passes. |
| Signed action bracket | A₂ simple pair | φ([Eα,Eβ])=−Eα+β=[Eβ,Eα] | Sign necessary. |
| Fixed Lie subalgebra | Identity; minus on abelian rank 1 | Fixed rank 1; over ℤ minus-fixed rank 0 | Real equalizer definition. |
| Vertex orbits | A₃ reversal | {1,3},{2}, sizes 2,1 | Full orbit lengths distinguish normalization. |
| Root-cycle coefficient | A₂ highest root | c₀=1,c₁=−1,c₂=1 | Recursion tracks sign. |
| Root monodromy/fixed vector | A₂ simple orbit and highest root | Simple orbit sum Eα+Eβ fixed; highest root has monodromy −1 | No integral highest-root fixed vector. |
| Signed cycle kernel | One negative cycle | ker(2:ℤ→ℤ)=0; ker(2:F₂→F₂)=F₂ | Integral base change not automatic. |
| Fixed integral basis | A₂ flip | One Cartan orbit + two positive-sign root orbits = rank 3 | Characteristic-2 fixed dimension becomes 5. |
| Orbit normalization d,k | A₂ adjacent pair | d=1,k=2; nonadjacent pair has d=2,k=1 | Adjacency correction retained. |
| Folded sl₂ triple | A₂ fixed e,f,h | [e,f]=h,[h,e]=e; E=e,F=2f,H=2h gives [H,E]=2E | Integral sublattice index 4. |
| Folded Cartan | A₃ reversal | [[2,−2],[−1,2]] | Short/long orientation recorded. |
| A₄ folded Cartan | Outer then middle orbit | [[2,−1],[−2,2]]; lengths 1 and 1/2 | Adjacent middle orbit differs. |
| Full cyclic sum | A₅ reversal, fixed middle vertex | Sum over order-2 action gives 2e_middle, orbit sum gives e_middle | Stabilizer divisor essential. |
| Exceptional D₄ triality | 24 roots | 6 fixed roots +6 length-3 root orbits +2 Cartan =14 | G₂ dimension; generation separately required. |
| Exceptional E₆ involution | 72 roots | 24 fixed roots +24 paired orbits +4 Cartan =52 | F₄ dimension; count not proof of isomorphism. |
| Folded generation control | Set all folded E,F to 0 | Generated Lie algebra 0, intended G₂ dimension 14 | Serre relations alone insufficient. |
| Full Cartan fixed kernel | Order-3 matrix [[0,−1],[1,−1]] | det(γ−I)=3; Smith diagonal 1,3 | ℤ kernel 0, F₃ kernel dimension 1. |
| Fixed base change | Same over ℚ versus F₃ | Kernel dimensions 0 versus 1 | Invertibility/flatness condition needed. |
| Classical involution matrix | Alternating antidiagonal J, sizes 2,3 | Jᵀ=−J,J²=−I for 2; Jᵀ=J,J²=I for 3 | Parity checked. |
| Integral subring | Empty roots and torus | Generated subring of ℚ is ℤ | Rank-zero PBW retains unit. |
| Root divided powers | Single root, exponent 0,1,2 | e⁽⁰⁾=1,e⁽¹⁾=e,e⁽²⁾=e²/2; e·e=2e⁽²⁾ | Integral multiplication coefficient 2. |
| Full toral binomials | h=−1, degrees 0,1,2 | Values 1,−1,1 | Ordinary powers give wrong degree 2. |
| PBW exponent carrier | Rank zero | Each function out of empty index unique; product index singleton | One basis monomial 1. |
| Ordered integral monomial | A₁, exponents (1,1,1) | Product f·h·e, not e·h·f | Negative/torus/positive order fixed. |
| integral_pbw | Root-free rank 1 | Basis binom(h,n); h²=2 binom(h,2)+h | Spanning and independence not assumed in frame. |
| PBW straightening | A₁ | ef=fe+h; h e=e(h+2) | Bracket signs determine reorder coefficients. |
| Specialized PBW | A₁ root direction over F₂ | e·e=0 but basis element e⁽²⁾ remains nonzero | Divided-power basis not ordinary polynomial basis. |
| Integral product coefficients | Same e·e | Coefficient of e⁽²⁾ is 2 over ℤ, 0 over F₂ | Base change acts on coefficients. |
| Rational form comparison | Root-free rank 1 | ℚ-span of binom(h,n) equals ℚ[h] | Factorials invertible only after ℚ extension. |
| Hopf divided powers | Degree 2 | Δe⁽²⁾=e⁽²⁾⊗1+e⊗e+1⊗e⁽²⁾; S(e⁽²⁾)=e⁽²⁾ | No omitted middle term. |
| Identity ideal | Gₘ | I=(t−1), not (t) | Counit at 1 determines it. |
| Jet dual | Gₘ,n=0,1 | Quotient dimensions 1,2; basis 1,t−1 at n=1 | n+1 power correct. |
| Finite-order distributions | First derivative | D((t−1)²)=0,D(t−1)=1 | Order 1, not order 0. |
| Jet map injectivity | Functional a+b(t−1)↦b | Values on basis (0,1) recover the functional | Quotient surjectivity sufficient. |
| Jet preimage existence | Same derivative | n=1 preimage φ(a+b(t−1))=b | Intended map value recovered. |
| Distribution action | Gₘ weight 3 | D(t³)m=3m; tensor contraction 3m | R08 rfl padding. |
| Weight action in char 3 | Same weight 3 | 3m=0 | Characteristic reduction retained. |
| SC realization input | A₁ with e±=0 | Weights ±1 span ℤ, every root eigen-equation 0=0 | Wrong model passes; R03. |
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
| SL₂/N quotient | First column (a,c) | Origin excluded; quotient A²−{0}; global regular ring k[a,c] | Affinization is larger than quotient. |
| SL₂/N chart transition | a=c=1 | s_a=[[1,0],[1,1]],s_c=[[1,−1],[1,0]]; s_a n(−1)=s_c | u_c=u_a+1; sign fixed. |
| Scheme invariants control | Gₐ over F₂ on A¹ | x²−x fixed by F₂-points; coaction adds t²−t≠0 | Finite-point invariance too weak. |
| Analytic tangent inverse, §11.0 | Gₐ at 0 | D(t)=1 implies intended D(exp t)=1,D(t²)=0; fraction rule alone has no exp input | R06 adds cotangent comparison. |
| Analytic unit derivative | Gₘ at 1 | D(t)=1,D(t⁻¹)=−1; product derivative 1−1=0 | Quotient-rule sign correct. |
| Group analytic bracket | SL₂ | [E₁₂,E₂₁]=diag(1,−1), right-invariant sign opposite | Left-invariant convention consistent. |
| Ordered configuration | n=0; n=2 | (empty tuple) unique; (1,3) allowed,(1,1) excluded | Injectivity does real work. |
| Permutation action | Swap on (1,3) | Swap gives (3,1), square returns (1,3) | Inverse-index action correct. |
| Unordered quotient | n=2 | (1,3) and (3,1) one quotient point; cover fibre size 2 | Quotient, not discrete finite-set topology. |
| Plane basepoint | n=3 | Tuple (0,1,2), three distinct entries | Actual basepoint retained. |
| Centroid | n=2,(1,3); n=0 | 2; empty sum and totalized inverse give 0 | Product theorem still needs n>0. |
| Center homeomorphism first component | n=2,(1,3) | First coordinate 2=centroid | Model; R02 removes admitted data. |
| Center homeomorphism second component | Same | Centered tuple (−1,1), sum 0 | Model; not arbitrary equivalence. |
| Center inverse | c=2,w=(−1,1) | w+c=(1,3) | Inverse checked; n=0 product fails. |
| Plane/disc comparison | z=0; real z=1 | Images 0,1/√2; inverse of 1/√2 is 1 | Denominators positive on specified domains. |
| Plane braid comparison | n=0,1,2 | π₁ values 1,1,ℤ; native braid groups same | Model of admitted comparison. |
| Pure-cover map | n=2 | π₁ map m↦2m; pure subgroup 2ℤ | Inclusion, not identity on ℤ labels. |
| Braid nonsplitting | n=2 | 2a=0 forces a=0; section needs a odd | True native endpoint; R04. |
| Braid boundary case | n=0,1 | Permutation quotient 1, identity section exists | n≥2 necessary. |
| Braid multiplication direction | Adjacent transpositions in S₃ | s₁s₂=(123),s₂s₁=(132) | Two-term witness detects opposite order. |
| Simple spectrum | diag(1,3); diag(1,1) | Polynomials (X−1)(X−3) and (X−1)² | Second is not separable. |
| Spectrum continuity | diag(1+t,3−t) | Roots 1+t,3−t; collision at t=1 | Simple-spectrum open locus retained. |
| Affine point topology | Gₘ | Points ℂˣ, tangent ℂ; t↦t continuous | Native Hopf points with evaluation topology. |
| Maximal torus Lie | SL₂ diagonal torus | Toral dimension 1, Lie group dimension 3 | Actual subgroup, not free vector subspace. |
| Torus regular locus | tH in sl₂ | t≠0 centralizer Lie dimension 1; t=0 dimension 3 | Zero excluded. |
| Regular semisimple control | GL₂ diagonal versus E₁₂ | Centralizers Gₘ² versus Gₘ×Gₐ | Regular nilpotent is not semisimple. |
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

The table contains **199 evaluated rows**. Boundary and sign checks support the stated restrictions; they do not validate the 41 admitted data constructions. No good-prime-only replacement of the integral theory is proposed.

## Not verifiable

- **Jantzen's cited 2003 pagination:** the source service reached the AMS book page but supplied no readable published text. The legal MPIM 1985 preprint supports the corresponding constructions, with different pagination; exact published page matching remains uncertified.
- **Brieskorn and Salvetti:** the service's title searches did not produce a readable legal full text. GDZ/EuDML searches and Pisa institutional metadata (HTTP 403) did not resolve this. The finite-reflection-complement and face/chamber locators cannot be certified from those original texts.
- **Conrad–Gabber–Prasad, Dipper–Du, Carter, Lang, Steinberg and Gassmann:** service attempts reached Cambridge, De Gruyter, JSTOR or AMS landing pages, or returned no legal text. All nine outstanding entries, including Jantzen and the two arrangement sources, are retained together in the job's missing-reference record. Milne independently supports the Lang endpoint; it does not certify every statement in Lang's original paper.
- **Uncertified publisher texts:** Humphreys, Waterhouse, Borel, Springer, Serre's finite-group representation book and Howlett–Lehrer resolved only to paywalled/uncertified citations. They were not bypassed or treated as newly missing after that status. Their exact internal claims are not certified here.
- **Unidentified discrepancies:** the source punctuation/proof-announcement commentary and the ambiguous divisibility phrase do not specify exact source passages. They cannot be registered as source errors from that wording alone.
- **Admitted constructions:** their intended formulas were tested, but their Lean values do not exist computationally as specified bodies. General existence/classification references do not independently certify the proposed all-base-ring closure and chart construction. R02/R03 identify the acceptance consequence.
- **Open ownership:** checks use main and the supplied sibling files. Open pull requests without supplied files were not independently audited for ownership; no absence conclusion follows for them. Board reports and search hits were treated as leads, not authoritative replacement supplier statements.
- The legal-source sample, explicit computations and successful elaboration are evidence for the stated checks, not a formal proof of every endpoint. This review is finished with a needs-changes verdict and is not parked pending a source response.

## Source issues

- **Misprint** in milne at §10b, Example 10.7, printed p. 188 (milne line 7903): the source says the quadratic commutator coefficient is twice AB−BA; it should be AB−BA; affects the proof.
- **Misprint** in gros-kaneda at Lemma 1.1(iii), printed p. 2, arXiv v2 (gros-kaneda line 92): the source says the shifted binomial image has no final projector; it should be multiplied by μ₀, including when b=0; affects a stated result.
- **Misprint** in dudas-michel at Proposition 8.9 proof, printed p. 32 (dudas-michel line 1477): the source says the second factor of U∩Q is U∩Q again; it should be U∩V; affects the proof.
