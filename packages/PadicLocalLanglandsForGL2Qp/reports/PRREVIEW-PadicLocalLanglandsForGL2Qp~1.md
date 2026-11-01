# Review of PadicLocalLanglandsForGL2Qp (pull request #1312 at 92e93dd)

**Verdict:** needs changes

## R01 (P1) — Own the global inputs needed by the promised endpoints

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:2293`, also lines 1433, 2334, 2467 and 2491. The decisive restriction is “This target does not construct the global patched data from the local block objects.”

**Claim:** Sections 6.3 and 6.5 assume globalization, an actual patched module, local-type comparisons, component support and generic multiplicities. Their Needs lines point back to those assumptions, without an earlier owner or a declared gap. The supercuspidal comparison in §4.2 and nonzero Drinfeld map/global de Rham comparison in §6.9 have the same problem. These are valid conditional deductions, but they leave the all-residual and geometric endpoints without a construction of their essential inputs. Naming a possible local proof in §4.2 does not supply its inputs or supply the patching and uniformization results elsewhere.

**Witness:** At p=2, r̄=1⊕1 is excluded by §6.4. The lift 1⊕ε makes the weight-{0,1}, trivial-type ring nonempty; §6.5 still requires unowned patched data. TUNG21B line 1791 gives the unconditional endpoint.

**Repair:** Add exact existence and comparison targets, with hypotheses, proof inputs and named earlier owners, for the globalizations, patched modules, component/multiplicity comparisons, and nonzero geometric maps. If their global suppliers need this roadmap's local core, keep that core here and move the global-dependent endpoints to a Part II after those suppliers; do not add an upward dependency. Restore an unconditional all-residual cycle endpoint once those constructions are available. The repaired route must cover the scalar dyadic example above and the p=3 cyclotomic-extension case. Replacing the patched module by zero must fail support, and replacing a rank-one module by two copies must fail generic multiplicity. Those tests give respectively cycle coefficients 0, 1 and 2; support alone cannot supply the missing equality. Similarly, §6.9 must construct a nonzero map, not merely prove consequences of one. Source witnesses: TUNG21A lines 172, 720–758; TUNG21B lines 1356–1379, 1779–1794; DLB17 lines 999–1007, 1063–1074.

## R02 (P2) — Remove the unnecessary dyadic exclusion from the trianguline endpoint

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:1641`, with the related limitation at line 567: “p ≠ 2 where Colmez's trianguline classification is used”.

**Claim:** Section 4.8 cites COLMEZ14LA but restricts its trianguline classification to odd primes. That paper works with an arbitrary prime and treats p=2 explicitly. A separate unnamed dyadic classification leaves less than the cited result and the all-prime scope promised by the roadmap.

**Witness:** At p=2 take characters trivial on units with δ₁(2)=2, δ₂(2)=1/2. Then u=1, w=0, s∈S_ng⊂S_irr, and δ_s has weight −1. COLMEZ14LA lines 249–274, 326 cover this case.

**Repair:** Use the all-prime classification and exact sequences of COLMEZ14LA Propositions 0.2–0.5 and Theorem 0.7; remove the exclusion and the unnamed separate dyadic obligation. Retain the older paper only for the claims at its actual generality. Add the displayed dyadic parameter as a Check: valuations sum to 0, u=1>0, w=0 is not a positive integer, δ_s(2)=4, and its weight −1 excludes every x^k with k≥0. Thus the generic exact sequence applies without dividing by 2. The paper's standing prime convention is at COLMEZ14LA line 78 and its explicit dyadic discussion at line 405.

## R03 (P3) — Correct the Kisin deformation-comparison proof locator

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:1950`: “use the representability and closed-immersion argument of Kisin §1.6”.

**Claim:** The cited KISIN09 §1.6 constructs families used in multiplicity bounds. It is not the representability/deformation-comparison argument described here. The distinction between Krull dimension and module rank is correct, but does not fix this locator.

**Witness:** KISIN09 line 1232 bounds the dimension of V(U). KISIN10 lines 511–541 instead give full faithfulness and relative representability; lines 612–648 give component containment and the determinant-dependent comparison.

**Repair:** Add Kisin, *Deformations of G_Qp and GL₂(Q_p) representations*, Astérisque 330 (2010), 511–528, and cite §2.2–§2.3, Lemmas 2.5–2.6, Proposition 2.8, Corollary 2.9 and §2.3.2 for the steps they actually prove. Explicitly retain the determinant identity and any further input needed for the full functor isomorphism; do not upgrade component containment to that isomorphism. Keep NAKAMURA23 Theorem B.20 as the stated comparison, and KISIN09 Lemma 1.6.6 only as a dimension input. Test the repaired route on Artinian coefficients: k[t]/(t³)→k[t]/(t²) has one geometric point on each side and tangent dimension 1 on each side, but lengths 3 and 2. Point and tangent comparisons alone do not establish the desired functor isomorphism.

## R04 (P3) — Remove the raw anchors rejected by the gate

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:75`, and the other explicit anchor lines.

**Claim:** The supplied head gate fails `residue` on 114 raw HTML anchors. Every other reported gate count, including build, dependency check and outside-folder changes, is zero.

**Witness:** Line 328 contains the explicit `support-cycles` anchor; the gate reports `residue=114` and `FAIL`.

**Repair:** Delete the raw anchors and retarget their links to the corresponding Markdown heading identifiers. In particular, the §0.5 link must still land on “0.5 Module cycles, specialization and multiplicity”. Rerun the gate; acceptance requires `residue=0` and a passing result.

## R05 (P3) — Keep proposed API names and Check labels out of the acceptance-test namespace

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:366`, especially lines 370–373, and analogous API lists throughout the file.

**Claim:** Backticked proposed declarations such as `GL2Qp.weylElement_sq` are presented as this roadmap's API, although Suggested.lean declares only four names. The roadmap form permits such names only when they actually occur in Suggested.lean. The intended mathematical API belongs in prose; adding hundreds of easy declarations to the Lean file would create padding.

**Witness:** README line 371 names `GL2Qp.weylElement_sq`; Suggested.lean contains only the polynomial theorem, two SmoothTorsion predicates, and the finite-length theorem. Squaring the displayed Weyl matrix gives I₂ directly.

**Repair:** Rewrite undeclared API entries as mathematical prose and remove purported Lean labels from Checks, retaining the formulas and their discriminating examples. Keep the four genuine declaration names. For the witness, retain “the Weyl element squares to the identity” and the signed-Weyl negative control in the README; add no theorem to Suggested.lean. At p=2 the two squares are still I₂ and −I₂ over ℚ₂, so the Check remains discriminating.

## R06 (P3) — Point the cycle foundations to the correct section and statement kinds

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:332` and line 334: “Paškūnas 2015 §2.1” and “Theorems 2.42–2.44”.

**Claim:** The module-cycle discussion is in §2.2, while the later summary is §2.6; item 2.43 is a remark. Theorem 2.42 is a conditional cycle criterion with projectivity, equidimensionality and generic Hom hypotheses, not a replacement for the general cycle foundations.

**Witness:** PASKUNAS15 line 427 starts §2.2; lines 429 and 446 give Lemma 2.23 and Proposition 2.24. Line 658 starts §2.6; line 695 labels 2.43 a remark.

**Repair:** Cite §2.2, Lemma 2.23 and Proposition 2.24 for lattice independence and reduction of module cycles; cite §2.6, Theorem 2.42, Remark 2.43 and Theorem 2.44 individually for their actual uses. Keep the Stacks locators for general affine cycles and Hilbert–Samuel polynomiality. This distinction matters on A=k[[x,y]]/(xy): A has cycle [(x)]+[(y)], while its two branch modules have distinct cycles but the same multiplicity 1. The general definition computes those cycles without satisfying an unstated representation-theoretic criterion.

## R07 (P3) — Give the family definition three discriminating Checks

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:1117` and lines 1127–1130.

**Claim:** Section 3.6 defines the family natural submodule by an inverse limit, but has only two Checks. The second merely asks that raw and saturated quotients be distinguished, without computing either. This misses the required three discriminating Checks for a definition.

**Witness:** The two bullets test S=O and say “Specialisation of a raw quotient is distinguished from its saturated torsion-free quotient.” Neither tests a genuinely varying family or failure of finite freeness.

**Repair:** Keep the identity-base test and add explicit varying-coefficient and excluded-input tests. For S=O[[t]], the unramified rank-two family with Frobenius diag(1+t,1) has traces 2 and 2+ϖ under t↦0 and t↦ϖ. In contrast, S⊕S/(t) has rank 1 away from t=0 and fibre dimension 2 at t=0, so it is excluded by finite freeness. Make the saturation warning numerical: O/ϖ has length 1, while its quotient by torsion is 0. These tests distinguish coefficient variation, rank jumps and saturation without claiming an unproved general base-change identity.

## Verified sound

The whole README and Suggested.lean were read. The review covers the 15 seeded targets, the two Lean headline theorems, the other headline families listed below, the dependencies and ownership boundaries, and the counterexamples in the findings. The condensed adversarial table retains 86 rows covering the seeded targets, headline families and finding witnesses. Computed tests below are tests of statements and conventions, not substitutes for proofs of the deep theorems. Conditional statements are identified as conditional; a successful boundary test does not certify a missing construction.

The checked head is 92e93dd2e8863770a8cd4155185e8e9bab0ed620. The diff outside this roadmap folder is empty and the worktree is unchanged. The supplied gate has precisely one failing rule: `residue=114`; its `build`, `depcheck`, `stray-files`, `outside-folder`, `sorry-data`, `set_option` and other reported rule counts are 0. A separate elaboration of Suggested.lean completed successfully with only its two `sorry` warnings. Both individual Tau Ceti imports exist and were usable at the pins. No unsupported import, admitted data, arbitrary Prop stand-in, computational algorithm or copied source passage was found.

The required dependency command returned:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

There is no reported UPWARD or CYCLE line. This checks named edges; it does not resolve the unnamed prerequisites in R01.

The four elaborated signatures were compared with the README and checked on a scratch copy. No section binder was lost. In particular, the polynomial theorem retains Noetherianity, finite generation, I≤m and finite length of M/IM; the representation theorem retains the finite compatible p-adic coefficient extension, smooth-discrete action, torsion, central character, admissibility and finite generation over the group algebra. One-tactic probes with `simp`, `rfl` and `infer_instance` did not close either theorem. Object searches found no single pinned theorem that directly supplies either conclusion. No Lean padding finding is made.

The README's headline results are: analytic/Schikhof duality and analytic-vector/completion theorems (§0.1, §§2.4–2.5); filtered-period equivalence and continuous deformation/type-ring representability (§§0.2–0.4); shared Hilbert–Samuel polynomiality (§0.5); canonical lattices and trianguline classification (§§1.3–1.7); local admissibility/finite length and mod-p classification (§§2.2, 2.6–2.8); Montreal reconstruction, family stability and all-prime correspondence (Layer 3); algebraic/analytic-vector comparisons, filtration independence, unitary completions and Artinian de Rham density (Layer 4); blocks, projective envelopes, deformation comparisons, centres and type rings (Layer 5); Breuil–Mézard, local multiplicity, block finiteness, Jacquet–Langlands and Breuil–Strauch comparisons (Layer 6). The two presently statable headline theorems are stated. Suggested.lean lines 23–87 name the missing carrier families for the others. The pinned cycle carrier by itself does not make the representation/deformation cycle theorem statable. The two simple predicates are used by the finite-length theorem, rather than being replacement headlines.

**Seeded source verification (15 targets).** Page numbers below refer to the versions identified in the README, not silently to a differently paginated publication. The sources service located 41 source IDs, including supporting texts and the Kisin paper needed for R03. Only inspected locators are certified here.

| Seeded target | Locator and text inspected | Outcome |
| --- | --- | --- |
| 0.1 Analytic functions, distributions, Banach duality | ST03 Theorems 5.1–5.2, pp.29–30, lines 1144–1221; Theorem 7.1, p.38, line 1515; ST02 Theorem 3.5, p.15, line 547 | Compactness, discretely valued coefficients, the underlying ℚ_p-analytic group in faithful flatness, and finite coefficients for compact Schikhof lattices are retained. The F-analytic quotient is not incorrectly asserted faithfully flat. |
| 0.5 Cycles and multiplicities | PASKUNAS15 §2.2, lines 427–460; §2.6, pp.16–17, lines 658–709; STACKS-00K8 line 6555 | Module-relative polynomiality is supported via A/ann(M). The section/statement-kind errors are R06. Flatness and ambient-dimension cautions are necessary. |
| 2.4 Algebraic vectors | COLMEZ10 Proposition VI.2.4, p.142, line 8757; ST03 Theorem 7.1, p.38, line 1515 | The algebraic decomposition has a smooth admissible finite-length factor; density concerns analytic vectors, not automatic algebraic density. |
| 2.5 Universal unitary completions | CD14 Theorem 0.2, p.4, line 128; Proposition 0.6 and Theorem 0.7, p.6, lines 215–224 | The universal completion of the analytic vectors is the original admissible unitary Banach representation; the coherent-lattice conditions are not discarded. |
| 3.6 Family stability | COLMEZ10 §II.2.4, pp.60–61, lines 3178–3230; II.3.3 and II.3.6, pp.63–64, lines 3266, 3319 | The coefficient/free-module hypotheses, stability and surjection onto the saturated fibre are supported. The stronger raw-quotient identification is not certified; see Not verifiable. |
| 4.2b Algebraic filtration independence | COLMEZ10 VI.6.41–VI.6.43, pp.189–190, lines 10921–10962 | Independence concerns fixed underlying period data and weights. Algebraic independence and analytic-quotient independence are separate assertions. |
| 4.4 Henniart types | PASKUNAS16 §2.C, pp.21–22, lines 957–981; BREUIL-MEZARD Appendix A, A.1.4–A.1.5 and A.3, lines 5331–5366, 5503 | Infinite-dimensional smooth irreducibility and the scalar-inertia crystalline/noncrystalline distinction are retained; dyadic uniqueness is not assumed. A determinant misprint in PASKUNAS16 is recorded below. |
| 4.6 Completions | CDP14 Theorem 1.3 and footnote 5, p.2, lines 72–96 | Empty, singleton and projective-line completion sets are distinct cases. Fixed weights do not select a filtration. The supercuspidal global input is R01. |
| 4.10 Artinian de Rham density | CDNKISIN §4.1, Theorem 4.1, pp.13–15, lines 469–544 | Absolute irreducibility of the residual characteristic-zero representation, fixed determinant, distinct weights and the actual finite coefficient algebra are retained. |
| 5.7 Deformations of atoms | EMERTON-LG Assumption 3.3.1 and Theorem 3.3.2, p.24, lines 1215–1233; NAKAMURA23 B.18–B.22, pp.98–99, lines 4288–4315; KISIN10 §2.2–§2.3, pp.523–526, lines 511–650 | The split extension is included in the exclusion, and fixed central character ψ corresponds to MF determinant ψε⁻¹. The proof-route locator is R03. |
| 6.3 Odd-prime cycles | TUNG21A Theorem 1.2, p.4, line 172; Proposition 4.4/Remark 4.5/proof, pp.13–14, lines 714–758 | Generic multiplicity is required in addition to support. Corollary 4.6 follows after the theorem and is not used circularly. The unconstructed inputs are R01. |
| 6.5 Dyadic cycles | TUNG21B Lemma 5.3.2/Theorem 5.3.3, lines 1356–1379; Theorem 8.0.1/Corollary 8.0.2, p.38, lines 1779–1794 | The conditional deduction has the correct support/rank inputs; its missing unconditional construction is R01. Scalar residual representations are genuinely included in the source. |
| 6.6 Local inequality | KISIN09 Hypothesis 1.2.6, line 469; Lemma 1.6.6, line 1232; Proposition 1.7.13/Corollary 1.7.14, pp.673–674, lines 1688–1705; GEE-KISIN14 Appendix B.1–B.2, p.38, lines 1800–1827 | The residual exclusion, lattice hypothesis, Krull-dimension interpretation and corrected scalar multiplicities are retained. No scalar-case formal smoothness is claimed. |
| 6.9 Drinfeld comparison | DLB17 Theorems 1.2/1.4, pp.4–6, lines 154–232; Theorems 5.1/5.4, lines 999–1074; §§9–11, pp.45–64, lines 1888–2717 | Equivariant-Hom multiplicity spaces, the operator identity, density-to-surjectivity hypotheses, two-chart injectivity and scalar ambiguity match the source. The nonzero map/global comparisons remain R01. |
| 6.10 Local modularity inputs | DP22 Theorems 1.4–1.5 and proofs, p.4, lines 140–160, compared with §§6.1–6.6 | The p=3 and scalar p=2 cases cannot be routed through generic-block results. The separate p=2 potentially Barsotti–Tate Kisin paper is correctly distinguished from KISIN09. The roadmap's conditional rows still have R01's limitation. |

**Pinned library audit.** The following native declarations and their hypotheses were opened, rather than inferred from names. Paths beginning Mathlib/ and TauCeti/ below are relative to the respective pinned library roots.

| Pinned file and line | Declaration inspected and consequence |
| --- | --- |
| `Mathlib/RepresentationTheory/Continuous/TopRep.lean:31` | `TopRep` supplies continuous linear operators; it does not by itself assert joint continuity of the group action. The Lean theorem adds `TauCeti.IsSmoothDiscrete`. |
| `Mathlib/Algebra/Module/Torsion/Basic.lean:177` | `Submodule.torsionBy` is the kernel of scalar multiplication; the admissibility definition uses the actual torsion of invariants. |
| `Mathlib/RingTheory/Length.lean:30`, line 92 | `Module.length` takes values in ℕ∞; `length_ne_top_iff` relates finiteness to `IsFiniteLength`. The polynomial theorem asserts finite length before applying `.toNat`. Additivity at line 168 and the field-dimension comparison at line 292 were also inspected. |
| `Mathlib/RingTheory/LocalRing/Defs.lean:30` | `IsLocalRing` extends `Nontrivial`; the zero ring is not an unnoticed input to the polynomial theorem. |
| `Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44` | `AlgebraicGeometry.AlgebraicCycle` is the locally finitely supported cycle carrier. It does not supply the required noetherian-affine dimension grading or the representation-theoretic specialization theorem. |
| `Mathlib/NumberTheory/Padics/Measure/AmiceTransform.lean:76`, line 157 | The Amice transform exists with its stated coefficient hypotheses; the opened equivalence is the ℤ_p one. Neither is a locally analytic distribution-space construction. |
| `Mathlib/NumberTheory/Padics/Measure/Monoid.lean:98` | `dirac_mul_dirac` supplies the bounded-measure convolution identity; the analytic distribution target must extend it, not redeclare a measure algebra. |
| `TauCeti/NumberTheory/LocalField/AbsoluteRamificationIndex.lean:63` | `TauCeti.FinitePadicExtension` includes a finite algebra structure and compatible valuation extension. The Lean theorem therefore covers finite ramified extensions, not just ℚ_p. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean:272` | `TauCeti.IsSmoothDiscrete` includes discreteness and open stabilizers. It rules out arbitrary-topology stand-ins. |
| `TauCeti/CategoryTheory/Injective/Envelope.lean:63`; `TauCeti/CategoryTheory/Projective/Cover.lean:111` | Essential monomorphisms/epimorphisms exist as general categorical inputs; these do not construct the particular smooth block envelopes. |
| `TauCeti/Topology/Algebra/Module/Compact.lean:294` | `IsCompactModule` records topological addition, continuous scalar action, compactness and total disconnectedness. It must not be read as an unmentioned separation axiom. |
| `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`; `Module.lean:344` in the same directory | `completedGroupAlgebra` is the inverse-limit carrier; `IsCompactModule.completedGroupAlgebraModule` constructs the action with its compact-module hypotheses. An infinite-residue coefficient ring cannot be treated as compact merely because it is discretely valued. |

Object searches covered locally analytic distributions/coadmissibility, Schikhof duality, filtered periods, deformation rings, module length/Hilbert–Samuel polynomials, compact induction, Montreal/trianguline objects, cycles and Jacquet–Langlands. No pinned implementation of the missing headline carriers was identified. Searches included the main roadmap repository, package material, the available supplied sibling checkouts, and the roadmap service's open-head search. No second declaration with one of this file's four fully qualified names was identified.

**Cross-roadmap resolutions and ownership.** Main-branch examples PadicFunctionalAnalysis and PadicMeasuresIwasawaAlgebras were read for shape as well as content. All Needs lines of the reviewed README were read. The principal consumed contracts resolve as follows; consumer citations below are ownership evidence, not added supplier edges.

| Object | Resolved roadmap contract and witness |
| --- | --- |
| Nonarchimedean Banach stages and bounded measures | `TauCetiRoadmap/PadicFunctionalAnalysis/README.md:595`, §3.4 and Layers 0–4; `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:888`, §§1.6–1.7, and §§2.2, 5.2. These supply Banach stages/compact inverse systems, not the manifold strong-dual construction. |
| Smooth representations and induction | `TauCetiRoadmap/SmoothRepresentationsOfLocalGroups/README.md:801`, SR.0.4; SR.0d.1 at 1594, SR.2.1 at 1835, SR.3.2 at 2627. Admissibility, categorical foundations and right-translation induction are supplied there. |
| Raw and normalized Weil–Deligne theory | The same supplier, SR.5.2, lines 4380, 4451, 4557 and 4585: raw fields, dual monodromy, Frobenius semisimplification, normalized correspondence. This roadmap's §1.7 is a convention comparison, not a second raw carrier. |
| Étale/Robba modules, ψ, rank-one cohomology, Sen data | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:496`, §1.0; §§2.2–2.6 at 889–988, §3.5 at 1281, §5.6a at 1951, §§7.1–7.5 at 2256–2424. Field/coefficient and radius hypotheses remain part of the contract. |
| Period rings, differential equations and period boundaries | PadicPeriodRings §§4.1–4.3, at `TauCetiRoadmap/PadicPeriodRings/README.md:416`; NoncommutativeAndEquivariantIwasawa §F.6, at `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:3735`. The latter owns the general boundary; §4.1a supplies its Colmez presentation and adjunction. |
| Polynomial laws and Cayley–Hamilton algebra | IntegralHeckeAndGaloisDeterminants §§0.1–0.5 and 1.1–1.3, 1.5; `TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants/README.md:592`, 1864, 1914, 2201, 2537. Continuous local residual completions and block comparisons are the new objects here. |
| Complete local geometry and cycles | SchemeAndStackFoundations §§0.16, 0.20–0.21, 4.2 and 5.1; `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1099`, 1302, 1394, 5110, 6567. The existing field-finite-type cycle grading is narrower than §0.5's noetherian-affine module grading. |
| Local fields, Galois groups and reciprocity | ClassFieldTheory Layers 5, 7–9, including `TauCetiRoadmap/ClassFieldTheory/README.md:920`, 1312, 1433, 1505; the completed LocalFieldsRamification and LocalGaloisGroups layer contracts and ProfiniteCohomology Layers 0–2. Arithmetic reciprocity is converted explicitly before Colmez's character convention is used. |
| Analytic and duality ownership | LocallyAnalyticDistributions explicitly imports §0.1 at `TauCetiRoadmap/LocallyAnalyticDistributions/README.md:177`; CompletedCohomologyPartII imports §§0.1, 0.3 at `TauCetiRoadmap/CompletedCohomologyPartII/README.md:135`. These are downstream extensions; no duplicate foundation is commissioned on their common domain. |
| Rational filtered-period ownership | FiniteFlatGroupsAndIntegralPadicHodgeTheory imports §0.2 at `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:86` and its R07.3/R07.4 targets; PadicHodgeTheory does likewise at `TauCetiRoadmap/PadicHodgeTheory/README.md:668`, 708. Integral and geometric extensions remain distinct. |
| Continuous representing pairs and shared Hilbert–Samuel objects | DeformationAndDerivedPatchingAlgebra's ownership paragraph at `TauCetiRoadmap/DeformationAndDerivedPatchingAlgebra/README.md:15` and its §§2.7, 3.11–3.12; LocalGaloisDeformationRings F.2.3–F.2.11; ArithmeticGaloisDuality D7.1 at `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:4940`. These consume the shared construction, rather than choose another polynomial or universal lift on the common domain. |
| Compact types and transfer | `TauCetiRoadmap/GL2AutomorphicRepresentationsAndTransfer/README.md:63`, 66, 303 and R16.2.9 at 782 separate this roadmap's type occurrence/Jacquet–Langlands construction from the consumer's unicity and automorphic applications. |

These resolutions support placing the shared foundations here despite the roadmap's specialized title. There is no evidence that the folder re-plans a main-branch roadmap; the repairable verdict is therefore needs changes, not rejected. Unavailable sibling files and the source limits are listed below rather than treated as absent mathematics.

**Computed adversarial tests.** In the table, “retain” means the computation agrees with the stated restriction/convention. It is not a claim that this finite calculation proves the whole theorem. Rows separating a correct object from a plausible wrong model explicitly give both outputs. Zero/boundary tests are recorded here as evidence, not proposed as Lean declarations.

| Statement | Instances tried | Computed value(s) | Other side / wrong model | Result; change |
| --- | --- | --- | --- | --- |
| Conventions: Weyl and arithmetic characteristic | p=2,3; w=(0 1;1 0) | w²=I, det(w)=−1 | Signed Weyl square=−I, including over ℚ₂; reduction mod 2 alone identifies the signs | Retain characteristic-zero convention; R05 prose repair. |
| Conventions: cyclotomic character | p and u∈ℤ_p× | ε(p)=1, ε(u)=u | The character x gives x(p)=p≠1 | Retain the unit/uniformizer distinction. |
| 0.1 LA and its dual | Point; empty manifold | LA=L, dual=L, evaluation=id; empty gives 0 and 0 | A nonzero dual on the empty manifold would give dimension ≥1 instead of 0 | Retain. |
| 0.1 Convolution and order | H=ℤ_p, a=1,b=2; H=S₃, g=(12),h=(23) | δ₁*δ₂=δ₃; δ_g*δ_h=δ_(123) | Reversed convolution gives δ_(132) on S₃ | Retain; nonabelian test fixes order. |
| 0.1 F-analytic versus ℚ_p-analytic | Quadratic F/ℚ_p and its nonidentity embedding σ | Difference quotient in direction a is σ(a) | F-linear derivative would give aσ(1)=a; choose σ(a)≠a | Retain quotient distinction. |
| 0.1 Distributions versus bounded measures | Amice logarithm, n=p^r | Coefficient norm of 1/n is p^r, unbounded as r→∞ | A bounded measure has one finite coefficient bound | Retain; no identification with measure carrier. |
| 0.1 Coadmissibility | H={1}, L^n and infinite discrete direct sum | Finite-stage rank n; infinite sum has rank ∞ | Coadmissible over D({1},L)=L requires finite rank | Retain. |
| 0.1 Compact coefficient hypothesis | L=completed maximal unramified extension of ℚ_p | O_L/p=algebraic closure of 𝔽_p, infinite discrete | A compact discrete quotient must be finite | Retain analytic generality, reject compact-lattice shortcut. |
| 0.1 Schikhof/contragredient character | One-dimensional unitary character ζ | Dual action on f is ζ(g)⁻¹f; bidual is ζ(g) | Using ζ on both dualizations gives the wrong evaluation equivariance unless ζ²=1 | Retain inverse character. |
| 0.1 Full-group lattice | sl₂(L), g=diag(p,1) | Ad(g)^nE₁₂=p^nE₁₂; Ad(g)^nE₂₁=p^(−n)E₂₁ | The second norm is p^n, unbounded; a stable bounded lattice requires a uniform bound | Retain the full-G model condition. |
| 0.1 Analytic vectors | Trivial Banach L; zero representation | Π^an=L, completion=L; zero gives 0 | Arbitrary proper analytic subspace cannot replace the orbit-map definition | Retain; dense-proper C(ℤ_p,L) case also distinguished in prose. |
| 0.2 Tate twist and weak admissibility | Rank-one ℚ_p(1) | Filtration jump −1, φ=p⁻¹, t_H=t_N=−1; Hodge–Tate weight +1 | φ=1 with jump −1 gives t_N=0≠−1 | Retain signs. |
| 0.2 Weak-admissibility inequality | Rank-one φ=1 with filtration jump +1 | t_N=0, t_H=1 | Equality required: 1≠0 | Correctly excludes this filtered module. |
| 0.2 Monodromy normalization | φ=diag(1,p), N(e₂)=e₁ | Nφ(e₂)=p e₁=pφN(e₂) | Reversing the p factor gives p⁻¹e₁ | Retain Nφ=pφN. |
| 0.2 Rank zero and extension normalization | Zero filtered module; ramification degree e=2 | Dimensions and Hodge/Newton totals 0; normalized monodromy scales by 1/2 | Retaining unnormalized N after an e=2 comparison doubles its nonzero matrix entry | Retain zero object and stated comparison normalization. |
| 0.4 Framed dimensions | Rank n=3, [K:ℚ_p]=1 | Unrestricted 9+3=12; fixed determinant 8+3=11 | Rank-two substitutions would give 5 and 4 | Retain arbitrary-rank foundation. |
| 0.4 Distinct/repeated labelled weights | n=2, K=ℚ_p | Distinct-weight framed dimensions 5/4; removing three framing variables gives 2/1 | Repeated weights remove the one-dimensional flag contribution: 4/3 framed | Retain labelled-weight dependence. |
| 0.4 Nonreduced type criterion | A=L[ε]/ε², unramified Frobenius 1+ε | Reduction is 1; actual Frobenius differs from 1 by nonzero ε | Testing only closed points records 1 on both models | Retain finite-algebra criterion. |
| 0.5 / Lean polynomial: zero and field | M=0; A=k, I=0, M=k^r | Lengths 0 and r for all n; polynomials 0 and r | Two rational polynomials agreeing at all n≫0 have difference with infinitely many roots, hence 0 | Retain uniqueness and zero case. |
| 0.5 / Lean polynomial: DVR | A=O, M=O, I=(ϖ), n=0,1,2 | Lengths 1,2,3; P(n)=n+1 | Using I^n gives 0,1,2 | Retain the n+1 indexing. |
| 0.5 / Lean polynomial: module-relative ideal | A=k[[x,y]], M=A/(y), I=(x) | Length M/I^(n+1)M=n+1; √I=(x) | Maximal ideal is (x,y), so I is not m-primary in A | Retain generality; no unnecessary ring-primary assumption. |
| 0.5 Cycle lengths | M=O/ϖ² | Coefficient at the closed point=2 | Dimension of M⊗k=1 | Retain localized length. |
| 0.5 Cycle versus multiplicity | A=k[[x,y]]/(xy), its two branches | z₁(A)=[(x)]+[(y)]; each branch multiplicity=1 | Branch cycles [(x)] and [(y)] are unequal despite 1=1 numerically | Retain; R06 locator repair. |
| 0.5 Ambient localization and formal variables | k[[t]]→k((t)); add three variables | Intrinsic dimensions 1→0, ambient generic component stays dimension 1; formal extension 1→4 | Relative dimension 0 does not make intrinsic dimensions equal | Retain explicit dimension rule. |
| 0.5 Flat specialization | A=O/ϖ versus A=O | First generic fibre 0, special fibre k, cycle 1; second is flat and specializes to cycle 1 | Specializing the first generic cycle yields 0≠1 | Retain O-flatness. |
| 1.3 Rank-two Tate dual | Weights a,b; diagonal characters α,β | V∨(1) has characters χ/α,χ/β and weights 1−a,1−b | V⊗(χ/det V) gives χ/β,χ/α, the same multiset | Retain twist, with pairing rather than an unmarked basis equality. |
| 1.4 ψ and projector | φ(1)=1; basis term 1+T | ψφ(1)=1; ψ(1+T)=0; (1−φψ)(1)=0 | Identity projector would send 1 to 1 | Retain. |
| 1.4 Nonabsolute irreducibility | Unramified ℚ₃-representation, Frobenius (0 −1;1 0) | Characteristic polynomial X²+1 irreducible over ℚ₃; inertia trivial; D^nr has rank 2 | “Irreducible implies D^nr=0” gives 0≠2 | Roadmap's stronger condition retained; source issue below. |
| 1.6 Étale/irreducible parameter boundary | u>0, w=u versus w>u, finite ℒ | First is ordinary and reducible; second lies in semistable irreducible region | Dropping the strict inequality admits the ordinary boundary | Retain the separate strata. |
| 1.6 and 4.8 dyadic parameter | δ₁(2)=2, δ₂(2)=1/2, unit values 1 | u=1,w=0, valuation sum 0; δ_s(2)=4, weight −1 | p≠2 rejects this valid generic s although source permits it | R02: remove exclusion. |
| 1.6 Crystalline parameter involution | (δ₁,δ₂)↦(x^wδ₂,x^(−w)δ₁) | New weight difference w; applying twice returns (δ₁,δ₂) | Swapping without the powers changes the labelled parameters | Retain. |
| 2.1 Smooth torsion admissibility | Trivial O/ϖ^m, compact open H, exponent n+1 | H-invariants unchanged; torsion length min(m,n+1) | Infinite direct sum of k has infinite invariant dimension | Retain finite invariants and positive exponents. |
| 2.2 / Lean finite-length theorem | Trivial O/ϖ²; trivial L/O; zero | Group-algebra lengths 2, ∞, 0; L/O has finite ϖ^n-torsion length n | L/O is not finitely generated, so it does not satisfy hfg | Retain hfg; admissibility alone is insufficient. |
| Lean central-character predicate | Trivial X=k, ζ=1; nontrivial residue scalar ζ(a) | First gives v=v; second at v=1 gives 1=ζ(a), false when ζ(a)≠1 | Zero X satisfies every scalar character, as it should | Retain real predicate and zero-object behavior. |
| 2.4 Locally algebraic factor | Weights (0,1), (0,3) | Sym^0 dimension 1; Sym² dimension 3 | Sym^(b−a) would give dimensions 2 and 4 | Retain b−a−1. |
| 2.5 Universal completion | Unit norm character; scalar action by p | First completion is L; second has no nonzero unitary quotient | Bounded invariant lattice would contain p^(−n)v with norms p^n, impossible for v≠0 | Retain possibility of zero completion. |
| 2.6 Principal series/Steinberg | Ind_B^G(1⊗1), constants | Constant subrepresentation dimension 1; quotient is St | Identifying the whole induced representation with St loses the constants | Retain exact sequence and induction order. |
| 2.7 Exceptional Hecke cases | λ=1, r=0 versus r=p−1 | At r=0: St subobject, character quotient; at r=p−1: reverse extension | At p=2 the labels remain 0 and 1 although 1=−1 in the residue field | Retain separate exceptional labels. |
| 3.2 Montreal functor | Character, Steinberg twist, supersingular | Galois dimensions 0,1,2 respectively | A dimension-preserving functor would already fail on a nonzero character | Retain finite-dimensional kernel. |
| 3.4 Reconstruction quotient | Finite-dimensional character object | Montreal image 0 although original representation is nonzero | Reconstruction without removing the finite-dimensional ambiguity gives nonzero=0 | Retain stated kernel/cokernel qualifications. |
| 3.5 Saturation | O-module quotient O/ϖ | Raw quotient has length 1; torsion-free saturation quotient is 0 | Commuting “raw” and “saturated” blindly identifies 1 with 0 | Retain distinction; this is a module test, not a constructed Colmez fibre. |
| 3.6 Family base and fibre | S=O, id; S=O[[t]], Frobenius diag(1+t,1) | Identity gives D_s=D; t=0,ϖ give traces 2,2+ϖ | S⊕S/(t) has generic rank 1 but special dimension 2, so is not finite free | Boundary agrees; stronger raw specialization remains uncertified; R07 adds varying-family Checks. |
| 3.7 Reconstruction of rank two | V of dimension 2 and its Tate dual | dim V=dim V∨(1)=2; double Tate dual is V | Forgetting the dual gives a different determinant: det(V∨(1))=χ²/det V | Retain the actual dual identification. |
| 3.8 Nonordinary correspondence | Rank-one character versus rank-two absolutely irreducible V | Dimensions 1 and 2; first outside stated Galois domain | Zero and character Banach objects cannot be inverse images in this bijection | Retain precise domain; not an all-Banach equivalence. |
| 3.9 Deformation comparison | k[t]/t³→k[t]/t² | Geometric points 1/1; tangent dimensions 1/1; lengths 3/2 | Isomorphism would preserve length | Retain schematic/functor comparison; repair locator R03. |
| 4.2 Algebraic-vector criterion | Non-de Rham V; de Rham weights (0,1) | First Π^alg=0; second Alg dimension 1 and Π^alg=LL(V) | Analytic density alone would incorrectly infer nonzero algebraic vectors in the first case | Retain criterion; supercuspidal identification still R01. |
| 4.2b Filtration independence | Same D_pst, weights (0,2), two admissible lines | Algebraic factors both Sym¹, dimension 2, with the same smooth LL factor | Distinct filtration lines can give distinct Π; equality of Π is not the conclusion | Retain algebraic-only comparison. |
| 4.3 Double-root crystalline completion | p=2, φ=2⁻¹(1 1;0 1), Fil⁰=Le₂, jumps 0,−2 | t_H(D)=t_N(D)=−2; sole stable line Le₁ has t_H=−2<t_N=−1 | Scalar φ=2⁻¹I makes Le₂ stable with 0>−1, violating weak admissibility | Retain nonsplit raw lift and all-prime nonspecial theorem. |
| 4.4 Scalar-inertia types | Trivial inertial type, Steinberg versus unramified principal series | σ^cr=1; σ is finite Steinberg of dimension p; St has K-fixed dimension 0 | Treating σ=σ^cr would confuse dimensions p and 1 and the N=0 test | Retain separate crystalline type; dyadic dimensions 2 and 1 still differ. |
| 4.4 Algebraic weight and reduction | w=(0,1), scalar determinant twist | Algebraic factor dimension 1; twist multiplies each scalar by its specified character | Omitting determinant twist keeps dimension 1 but changes central values | Retain occurrence plus character, not dimension alone. |
| 4.6 Completion classification | Supercuspidal fixed period module, lines Le₁ and Le₂ | Two distinct filtration points in ℙ¹(L); same weights and algebraic factor | A singleton indexed only by weights identifies these two points | Retain filtration family; R01 for comparison input. |
| 4.6 Raw versus semisimple period lift | Regular Jordan versus scalar double-root φ | Both have trace 2α, determinant α²; eigenspace dimensions 1 and 2 | Traces alone do not select the raw lift | Retain regular nonsplit lift before weak admissibility. |
| 4.8 Generic/special induction | δ_s=x^0 and x^1 | Special algebraic dimensions 1 and 2; k=0 with unitary determinant forces u=0 | S_irr requires u>0, so the k=0 formal induction test is not an extra irreducible parameter | Retain this distinction; R02 for p=2. |
| 4.9 Self-extension criterion | Π⊕Π with Π^alg≠0 | Algebraic vectors are Π^alg⊕Π^alg, strictly larger than the first summand; de Rham extension splits | A non-de Rham extension has only the original Π^alg by the stated criterion | Retain exact context and fixed determinant. |
| 4.9 Two topologies for density | The p=5 Jordan crystalline example | t_H=t_N=−2; unique stable line has −2<−1; trianguline= true | P-finite vectors are Banach-dense but not analytically dense in this case | Retain nontrianguline condition for analytic density. |
| 4.10 Artinian Sen test | A=L[ε]/ε², Θ=diag(ε,1−ε) | tr Θ=1 but Θ(Θ−1)=−εI≠0 | diag(0,1) has the same residual weights and trace but Θ(Θ−1)=0 | Retain full Artinian de Rham condition, not just reduced weights. |
| 4.11 Quotient independence | Fixed supercuspidal data, lines ℒ₁≠ℒ₂ | Quotient Π^an_ℒ/Π^alg_ℒ is the same; extension parameters remain two distinct lines | Identifying entire analytic representations would erase the extension class | Retain quotient-only assertion. |
| 5.1 Blocks | A simple π and a simple in a distinct block | Hom(π,π) contains id≠0; cross-block Hom=0 | A single indiscriminate block would fail this orthogonality test | Retain Ext-linked, not dimension-linked partition. |
| 5.2 Exceptional block sizes | Scalar/cyclotomic exceptional blocks at p=2,3,5 | Numbers of listed irreducibles are 2,4,3 respectively | Treating p=3 as the generic odd-prime list loses one constituent | Retain prime-by-prime lists. |
| 5.3 Envelope endomorphisms and sides | P⊕P, matrix units E₁₂,E₂₁ | E₁₂E₂₁=E₁₁; E₂₁E₁₂=E₂₂ | They are unequal; replacing right End(P)-modules by left ones silently reverses products | Retain opposite-ring convention. |
| 5.4 Degree-two pseudodeterminant | Characteristic 2, identity matrix | Trace=0, determinant=1 | Formula dividing trace data by 2 is undefined and cannot recover determinant | Retain determinant law. |
| 5.5 Contravariant Banach equivalence | Inclusion L→L² into first coordinate | Dual is projection (a,b)↦a | Covariant inclusion has source L, not L² | Retain the opposite category and postcomposition direction. |
| 5.5 Projective sum versus single envelope | End(P)=R, End(P⊕P)=M₂(R) | Matrix algebra has four R-basis elements; R has one | Identifying the full block algebra with an individual deformation ring changes rank 4 to 1 | Retain individual-envelope restriction. |
| 5.6 Centre identity | g=diag(2,3) in characteristic zero | g+det(g)g⁻¹=diag(5,5)=tr(g)I | Omitting determinant gives diag(5/2,10/3) | Retain Cayley–Hamilton normalization. |
| 5.6 Infinitesimal centre | A=k[ε]/ε² | ε acts by 0 on the residual simple k, but ε·1=ε≠0 on A | Testing central identity only on simples misses this action | Retain whole-block quantification. |
| 5.7 Deformation determinant | Central ψ, MF convention | det MF=ψε⁻¹; switching to Colmez V=MF(ε) gives determinant ψε | Using ψε on MF introduces an extra ε² | Retain; R03 locator. |
| 5.7 Residual exclusion | p=3, r̄=1⊕ω | It is the split member of the excluded (1 *;0 ω) shape | Reading the exclusion as nonsplit only would admit it | Retain explicit split exclusion. |
| 5.10 Cycle identity at lowest weight | Weights (0,1), trivial crystalline type | Only trivial-weight multiplicity is 1; formula reduces to z(R^cr/ϖ)=C_triv | Adding the Steinberg type introduces a different constituent | Retain crystalline/noncrystalline separation. |
| 5.10 Empty ring and positivity | Type ring 0; effective cycles with nonnegative coefficients | Left cycle=0; every positively weighted nonzero component would give coefficient ≥1 | Cancellation cannot make a positive coefficient zero | Retain effectivity; zero ring is allowed here. |
| 5.11 Generic multiplicity criterion | Module R versus R² on one reduced component | Supports equal; generic lengths 1 and 2 | Required ring-cycle coefficient is 1 in both comparisons | Retain rank-one comparison; support alone insufficient. |
| 6.1 Local BM multiplicity | Exceptional peu-ramified versus generic case | Source's exceptional coefficient 2 versus generic coefficient 1 | A uniform multiplicity-one assertion loses a factor 2 | Retain exceptional case and p≥5, End=k. |
| 6.2 Split non-scalar cycles | r̄=1⊕ω, p≥5 | Displayed three-prime formula has coefficient a_(p−3,1) at 𝔭₁, a_(0,0)+a_(p−1,0) at 𝔭₂, a_(p−1,0) at 𝔭₃ | One scalar cycle cannot encode the three coefficients separately | Retain both residual orientations and versal/framed conventions. |
| 6.3 Conditional odd-prime cycle deduction | One-component R; M=0,R,R² | Generic cycle coefficients 0,1,2 | Ring cycle coefficient 1; support only rejects 0, not 2 | Conditional argument consistent; R01 constructs the actual rank-one input. |
| 6.4 Dyadic generic blocks | σ in/out of the specified K-socle | Corresponding C_σ is multiplicity 1/nonzero versus 0 | Scalar semisimplification is not a generic block supplied by this theorem | Retain p=2 generic restriction. |
| 6.5 Conditional scalar dyadic case | r̄=1⊕1, crystalline lift 1⊕ε | Type ring nonempty; p=2, residual ε=1 | §6.4 gives no theorem for this block; replacing patched data by zero gives coefficient 0 | R01 must supply the actual dyadic construction. |
| 6.6 Corrected scalar multiplicities | Nontrivial ramified, nontrivial unramified, split | μ=1,2,4 respectively | Uniform nontrivial value 1 fails on the second; speculative split value 2 fails on the third | Retain published correction. |
| 6.6 Framing | One-dimensional special-fibre cycle plus 3 variables | Dimension 1→4; multiplicity e→e | Multiplying e by 3 would be wrong | Retain dimension shift without multiplicity change. |
| 6.7 Finiteness equivalences | N=0; finite direct sum of one residual simple | Hom modules, cosocle and reduction have length 0; for n copies, length n | Infinite direct sum has infinite cosocle and fails the finite condition | Retain finite generation, not arbitrary pseudocompact size. |
| 6.7 Characteristic-zero category | Π⊕Π at an absolutely irreducible Galois point | Special fibre consists of two copies, multiplicity 2 | Identifying every object with the single irreducible would collapse 2 to 1 | Retain finite-length module category. |
| 6.9 Jacquet–Langlands sign | d=1,m=1; d=2,m=1; d=2,m=2 | Character signs (−1)^(md−m) are +1,−1,+1 | Uniform sign −1 fails in the first and third cases | Retain general transfer and quaternionic specialization. |
| 6.9 Multiplicity space | X=ρ⊗L^r with dimρ=d>1 | dim Hom_D×(ρ,X)=r; dim e_ρX=dr | Identifying Hom with projector image inserts an extra factor d | Retain equivariant-Hom topology and evaluation tensor factor. |
| 6.9 Filtration annihilator | M=Le₁⊕Le₂, ℒ=Le₁ | ℒ^⊥=Le₂*; quotient dimension 1 | Choosing Le₁* instead pairs nontrivially with e₁ | Retain dual line and exact-sequence orientation. |
| 6.9 Resolvent normalization | z=3,x=0,y=1 | (z−x)⁻¹(z−y)⁻¹=1/6 | ((z−x)⁻¹−(z−y)⁻¹)/(x−y)=(1/3−1/2)/(−1)=1/6 | Retain sign. |
| 6.9 Nonzero map and scalar uniqueness | Φ=0; Φ an isomorphism; 2Φ | Zero image=0, not dense in nonzero target; ratio of the latter two maps is scalar 2≠0 | A zero scalar cannot compare isomorphisms | Retain local deduction; R01 supplies existence. |
| 6.9 Injectivity from both charts | Kernel section (z₁,z₂), infinite t-divisibility of it and w-transform | First test gives z₁=0; second gives z₂=0; pair=(0,0) | First test alone permits (0,z₂) | Retain two-chart argument and length-two smooth comparison. |
| 6.10 Case selection | p=3 cyclotomic extension; p=2 scalar residual | Eligible all-residual rows are respectively (3) and Tung part of (4) | Generic p≥5 rows give no result in either case | Conditional routing correct; R01 remains necessary. |

## Not verifiable

- **KISIN08**, *Potentially semi-stable deformation rings*: §0.4 cites Theorem 2.7.6, Corollary 2.7.7, author p.23; Theorems 3.3.4 and 3.3.8, pp.29–30; Errata E.4, p.34. The author DVI is unsupported by the source service, the alternate author PDF returned 404, and the AMS landing page was inaccessible. The type-ring and dimension statements at those precise locators are not certified. A same-key entry records the attempts in `needs-references.toml`.
- **MAZUR89**, *Deforming Galois representations*: §0.4's §§1.1–1.3, published pp.385–437. The cited author-copy fetch stalled and was terminated; the legacy author URL returned 404. No extracted text was obtained. A same-key entry records the attempts in `needs-references.toml`. This did not prevent checking the Lean statements, supplier ownership or the seeded targets against the other sources.
- **Section 3.6's raw-fibre identification:** COLMEZ10 Proposition II.2.15, line 3211, supplies a natural surjection to the saturated fibre. The surrounding construction and stability theorem were read, but I did not certify the stronger assertion that the unsaturated family quotient specializes isomorphically to the unsaturated fibre quotient. The module test in the table is only a warning against commuting saturation with fibres, not a counterexample to this particular family. No false-theorem finding is inferred merely from this limit.
- Ownership was searched through the available main/package/open-head material. Some enumerated sibling paths were unavailable, including the supplied SmoothBanachRepresentations checkout; ownership against an unavailable copy is not certified. Search results for roadmaps beyond the supplied snapshot were not used as new supplier obligations.
- The table records computed examples and negative controls, not proofs of all infinite-dimensional equivalences or every source's internal proof. Section 2.9's external counterexample constructions were not reconstructed. No mathematical defect is asserted solely from this lack of reconstruction.

## Source issues

- **Misprint** in PASKUNAS16 at §2.C, author p.21: the source says the type ring fixes determinant ψ; it should be ψε, consistent with its inertia condition and introduction; affects a stated result.
- **Error** in KISIN09 at (1.1.6), printed p.647: the source assigns multiplicity one to both nontrivial scalar extensions and suggests two for the split case; it should distinguish ramified 1, unramified nontrivial 2, split 4; affects a stated result; corrected in print at GEE-KISIN14 Appendix B.1, author p.38.
- **Gap** in KISIN09 at (1.7.5), printed p.671: the source promotes a generic isomorphism/homeomorphism onto its image to a closed immersion; it should allow nonreduced fibres and delete the resulting formal-smoothness claim; affects the proof; corrected in print at GEE-KISIN14 Appendix B.1, author p.38.
- **Error** in KISIN09 at Lemma (1.7.4), printed p.670: the source omits the prescribed residual character on the selected line; it should require G_Qp to act through ω₁ on that residual line; affects a stated result; corrected in print at GEE-KISIN14 Appendix B.2, author p.38.
- **Error** in KISIN09 at Corollary (1.7.14), printed p.674: the source restricts the exceptional clause to split representations; it should also include nonsplit representations with scalar semisimplification; affects a stated result; corrected in print at GEE-KISIN14 Appendix B.1, author p.38.
- **Error** in COLMEZ10 at §II.3.1, author p.62: the source infers vanishing of the unramified part from ordinary irreducibility in rank two; it should require absolute irreducibility or the relevant inertia-invariant vanishing; affects a stated result.
- **Misprint** in DLB17 at Proposition 11.10, author pp.63–64, line 2695: the source reverses the divisibility equation defining v′; it should read v=u⁺v′, as used immediately afterward; affects the proof.
