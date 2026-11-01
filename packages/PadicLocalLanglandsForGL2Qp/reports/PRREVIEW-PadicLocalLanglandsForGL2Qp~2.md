# Review of PadicLocalLanglandsForGL2Qp (pull request #1312 at 845e537)

**Verdict:** needs changes

## R01 (P1) — Supply the existence inputs of the global-dependent endpoints

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:2166`, also §§4.2, 4.6, 6.5 and 6.9: “This target does not construct the global patched data from the local block objects.”

**Claim:** The previous R01 remains. Sections 6.3 and 6.5 assume globalization, an actual patched module, component support and generic multiplicity comparisons without an earlier owner or declared gap. Section 4.2's supercuspidal comparison and §6.9's nonzero global map and global de Rham comparison have the same problem. Their conditional deductions can be true while the promised all-residual and geometric endpoints remain unavailable. Calling the missing theorem an explicit input does not construct it. No repair report settling this finding as non-actionable was supplied.

**Witness:** At p=2, r̄=1⊕1 is excluded by §6.4. The crystalline lift 1⊕ε has weights {0,1}, trivial inertial type and determinant ε, so its type ring is nonempty. Section 6.5 still requires unowned patched data.

TUNG21B line 1791 states the all-residual result; lines 1356–1379 and 1779–1789 identify the support, multiplicity and automorphic inputs. TUNG21A lines 720–758 exhibit the analogous odd-prime deduction. CDP14 lines 80–96 distinguish the supercuspidal global comparison from the local cases. README line 2321 explicitly assumes the global data producing the nonzero Drinfeld map.

**Exact repair:** Add existence/construction targets with their hypotheses, routes and named earlier inputs for those globalizations, patched modules, multiplicity comparisons and nonzero geometric maps. If their suppliers consume this roadmap's local core, keep that core here and put the global-dependent endpoints in a Part II after those suppliers; do not add upward edges. The route must supply actual data for the scalar dyadic example and the p=3 cyclotomic-extension case. Test a reduced one-component ring with modules 0, R and R²: generic coefficients are 0, 1 and 2, whereas the ring coefficient is 1. Support excludes 0 but does not exclude R². For the geometric comparison, the zero map must fail the existence target, rather than merely fail a hypothesis of a later implication.

## R02 (P2) — Specify the missing axioms for compact-open restriction operators

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:502`, API at line 512: “a compatible φ splitting ψ” and “additivity for disjoint compact opens”.

**Claim:** The general (P(ℤ_p),ψ)-module is defined, but the additional “compatible” φ structure is not. Splitting ψ, continuity and the displayed covariance laws do not imply the asserted restriction calculus. The source's stronger (P(ℤ_p),φ,ψ)-module has essential annihilation and partition-of-unity axioms. The word “compatible” must not hide these hypotheses.

**Witness:** Take p=2, M=ℤ₂, trivial P(ℤ₂)-action and φ=ψ=id. All stated splitting/covariance conditions hold. Both residue-ball operators are id; additivity would give id=2id, hence 1=2.

COLMEZ10 lines 1676–1701 state the additional axioms before Proposition I.3.7, lines 1740–1743.

**Exact repair:** Define the additional structure with continuous linear φ, diagonal-unit commutation, φu(b)=u(pb)φ, ψu(b)φ=0 for b∈ℤ_p×, ψu(pb)φ=u(b), and Σ_{i=0}^{p−1}u(i)φψu(−i)=id. State the compact-open calculus on this structure, with the étale-module specialization supplied by the Frobenius decomposition. Keep the general mirabolic inverse-limit action on the weaker structure. The counterexample then fails both annihilation and partition: ψu(1)φ(1)=1 instead of 0, and the partition sum is 2 instead of 1. On the measure model, restriction of Dirac₀ to 2ℤ₂ and 1+2ℤ₂ gives Dirac₀ and 0, whose sum is Dirac₀. Add these positive and negative controls.

## R03 (P2) — Resolve the second owner of general local Jacquet–Langlands

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:2271`: “Construct the local Jacquet–Langlands correspondence in its general local form”.

**Claim:** The object search found another construction of the same common-domain correspondence in EndoscopicTransferAndUnitaryTraceComparison §4.7a. It specifies existence, bijectivity, the character identity and a global trace-formula proof, rather than importing this roadmap. The downstream ownership contracts here address other transfer consumers but omit this one. A direction reversal of the bijection does not make a different construction.

**Witness:** `TauCetiRoadmap/EndoscopicTransferAndUnitaryTraceComparison/README.md:1873` constructs the GL_r(D)↔GL_rd(F) bijection; line 1879 gives its existence proof. Both specialize at d=2,r=1 to trivial D×↔St₂ with character sign −1.

**Exact repair:** Record and coordinate one owner on the common finite-extension-of-ℚ_p domain. This roadmap is earlier (merge-order positions 28 and 132), so its general construction can remain the owner; the later §4.7a must import it by section, retaining only its trace-comparison applications and any genuinely additional assertions. Add that consumer to the ownership contract here. Preserve this roadmap's equal-characteristic and arbitrary-degree scope, and do not cite the later roadmap as a supplier. Verify the comparison on d=1 (identity, sign +1) and d=2,r=1 (Steinberg/trivial, sign −1), including inversion of the transfer direction. This finding uses the actual open-head text returned by the required roadmap service, not a remembered theorem or an absent section.

## R04 (P3) — Finish the undeclared API-name cleanup

**Location:** `TauCetiRoadmap/PadicLocalLanglandsForGL2Qp/README.md:395`: “`PadicChar` (with commutative topological coefficient ring)”. Further examples occur at lines 236, 271 and 852.

**Claim:** Previous R05 is partly repaired. Several backticked proposed Lean identifiers remain even though Suggested.lean contains only four declarations. In particular, `PadicChar`, `FilteredPhiNModule K`, `IsPeuRamifiee(ρ̄_c)` and the Check label `normalizerRep m₁ m₂ a` are not declarations of this acceptance test. The automatic name scan does not catch all such forms.

**Witness:** Suggested.lean declares only the polynomial theorem, two SmoothTorsion predicates and the finite-length theorem. Its character input is the native ContinuousMonoidHom; no PadicChar alias exists.

**Exact repair:** Replace these proposed names by prose describing the mathematical objects and remove purported Lean labels from Checks. Keep genuine library names and the four declared names. Do not add acceptance-test padding. For the character example retain ε(p)=1 and ε(u)=u, versus x(p)=p; for the normalizer retain the two distinct ordered characters in its restriction. These computations survive removal of the identifiers.

## Verified sound

The complete README and Suggested.lean were read, including the changed and unchanged passages. The review compares all seven previous findings, verifies the 15 new seeded source targets, checks both Lean headline statements and both supporting predicates, and records computed tests below. Computations test the stated hypotheses and conventions; they do not purport to prove the deep theorems. Conditional deductions are distinguished from existence of their inputs.

**Previous findings, checked before the full pass.**

| Previous finding | Passage in this head | Disposition |
| --- | --- | --- |
| R01, global inputs | §6.3: “This target does not construct the global patched data”; §6.9: “These global data are explicit hypotheses here.” | Not repaired; R01 above. |
| R02, dyadic trianguline exclusion | §1.6 uses the all-prime COLMEZ14LA classification; §4.8 includes the p=2 parameter with δ₁(2)=2 and δ₂(2)=1/2. | Repaired: u=1, w=0, determinant valuation 0; δ_s(2)=4 and weight −1. |
| R03, Kisin locator | §5.7: “use Theorem B.20 for the full stated residual range, which is wider than Corollary 2.9”. | Repaired. KISIN10 §§2.2–2.3 are now distinguished from KISIN09's dimension bound; the Artinian determinant identity is retained. |
| R04, raw anchors | §0.5 is a Markdown heading, with heading links; the gate reports “residue=0”. | Repaired; no failing gate rule. |
| R05, undeclared API names | §1.1 now says “The Weyl element squares to the identity”; §1.2 still says “PadicChar”. | Partly repaired; R04 above gives remaining concrete examples. |
| R06, cycle locators | §§0.5 and 5.11 distinguish “Lemma 2.23 and Proposition 2.24” from “Theorem 2.42, Remark 2.43 and Theorem 2.44”. | Repaired; the general cycle definition is not replaced by the representation-theoretic criterion. |
| R07, family Checks | §3.6 tests “traces 2 and 2+ϖ”, a module with a rank jump, and the torsion quotient. | Repaired: traces differ, generic/special ranks are 1/2 for the excluded module, and raw/saturated quotient lengths are 1/0. The stronger raw-fibre isomorphism is no longer claimed. |

**Gate, build and signatures.** HEAD is 845e537a8488fc1a50468ed2e459200aef77799f. The outside-folder diff is empty and git status is clean. The worker gate passes every rule, including build, dependency order, stray files, raw anchors, admitted data, imports, set_option, outside-folder changes and source material. Independent elaboration of Suggested.lean completed with exactly two sorry warnings. Both Tau Ceti imports were available; no auxiliary build was needed. A scratch copy containing explicit `#check @...` for all four declarations elaborated; no required binder disappeared. The polynomial statement retains finite generation, Noetherianity, locality, I≤m and finite length modulo I. The representation statement retains the compatible finite p-adic coefficient extension, smooth-discrete action, torsion, central character, admissibility and finite group-algebra generation.

The required dependency command returned:

```text
depcheck: 205 roadmaps, 1486 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. This validates named edges, not the unnamed existence inputs in R01 or duplicate ownership in R03. All Needs lines were read. The early envelope construction versus later deformation-ring identification, and the conditional completion criterion versus its later radius estimates, were checked separately rather than treating every later-section citation as a cycle.

A scratch probe tried `simp`, `rfl` and `infer_instance` individually as closing tactics for each of the two sorried theorems; none closed either. Native object searches found no single pinned theorem supplying either conclusion. No padding finding is made. No sorry'd data, free-Prop headline, set_option, computational algorithm or copied source passage was identified.

**Headline coverage.** The README's headline families are analytic/Schikhof duality and analytic-vector/completion results (§0.1, §§2.4–2.5); filtered-period equivalence and continuous deformation/type-ring representability (§§0.2–0.4); Hilbert–Samuel polynomiality (§0.5); canonical lattices, rank-two trianguline classification and normalization comparisons (Layer 1); local admissibility/finite length and mod-p classification (Layer 2); Montreal reconstruction, family stability and the all-prime correspondence (Layer 3); algebraic/analytic-vector comparisons, Kirillov models, completion classification, Artinian de Rham density and filtration independence (Layer 4); block/envelope/deformation/centre/type-ring comparisons (Layer 5); and Breuil–Mézard, multiplicity, block-finiteness, Jacquet–Langlands and Breuil–Strauch results (Layer 6).

The two headline statements expressible using the retained simple definitions are present. Suggested.lean's module docstring identifies the missing analytic, period, smooth-induction, continuous deformation, block and tower carriers for the other families. The existing algebraic-cycle carrier alone does not make the representation/deformation cycle theorem statable. The two actual predicates serve the finite-length theorem and are not substitute headlines.

**Seeded source verification: 15 targets.** Source IDs and line numbers refer to the legal text extractions obtained through the sources service. Pagination is that of the README's cited version; the Kisin comparison also uses the published Numdam pagination. Every reference-list work was requested; 37 of 38 were retrieved. Supporting texts were fetched separately. Only the inspected locators, not entire papers, are certified.

| Target | Locator and source lines read | Result |
| --- | --- | --- |
| 1.2 Characters | COLMEZ10 introduction §1, pp.5–6, lines 231–263; COLMEZ08TRI §0.1 | Geometric Frobenius, the minus degree, unitary extension and ε=x\|x\| agree. Commutativity is retained. |
| 1.5 Mirabolic inverse limit | COLMEZ10 Proposition 0.5, pp.9–10, lines 481–505; §I.3.3, pp.35–37, lines 1676–1757 | The generic inverse-limit action agrees; the stronger restriction calculus lacks the source's explicit extra axioms: R02. |
| 2.4 Algebraic vectors | COLMEZ10 Proposition VI.2.4, p.142, lines 8730–8777 | Algebraic/smooth decomposition and its representation-category hypotheses are retained. Analytic density does not imply algebraic density. |
| 4.1k Almost-de-Rham Kirillov model | COLMEZ10 VI.3.1, pp.149–150, lines 9156–9189; VI.5.6–VI.5.9, pp.167–168, lines 9910–10035 | Normalization to weights (0,k), dyadic torsion invariants, coefficients of (tx)^i, and the conditional algebraic inclusion agree. |
| 4.6 Unitary completions | CDP14 Theorem 1.3 and footnotes 4–5, p.2, lines 68–96 | Empty/singleton/projective-line cases and variable monodromy are distinguished. The supercuspidal identification still uses R01's missing input. |
| 4.10 Artinian de Rham density | CDNKISIN §4.1 Theorem 4.1, pp.13–15, lines 469–545; §4.2, pp.16–17, lines 545–624 | The actual finite local coefficient algebra, absolute irreducibility, fixed determinant and distinct weights are retained; reduced weights alone are insufficient. |
| 4.11 Filtration-independent quotient | COLMEZ10 VI.6.41–VI.6.44, pp.189–190, lines 10921–10984 | The quotient, not the entire analytic representation, is independent. Nonspecial two-copy and special cases are separated. |
| 5.6 Every-block local R=T | PASKUNAS-TUNG21 Theorems 1.1–1.4/Corollary 1.5, pp.2–4, lines 50–190 | Whole-block, torsion-free and rational statements are distinguished; p=2 retains the cokernel killed by 2, rather than an unjustified integral isomorphism. |
| 5.7 Deformation functors | KISIN10 Lemmas 2.5–2.6, Proposition 2.8, Corollary 2.9 and §2.3.2, pp.523–526, lines 511–650; NAKAMURA23 B.18–B.22, pp.98–99, lines 4250–4325 | Corrected route, residual exclusions and Artinian determinant identity. The larger comparison uses B.20 rather than component containment. |
| 5.8 Universal dual/envelope | NAKAMURA23 B.23–B.26, pp.100–103, lines 4358–4475; PASKUNAS16 §2.2, pp.8–16, lines 394–424, 505–524, 701–709; DLB17 §13, p.69, lines 2897–2908 | The p=3 input is a separate integral envelope theorem. The all-prime absolutely irreducible family is separate from odd-prime square-root splitting. |
| 5.14 BCDT implication | BCDT01 §1.3, Conjecture 1.3.1, published p.856/author p.12, lines 579–617; PASKUNAS15 Theorem 1.1 | The implication is explicitly conditional on weight/type and branch comparisons. Neither simple admittance nor acceptability is inferred merely from a nonzero ring. |
| 6.1 Paškūnas BM | PASKUNAS15 Theorem 1.1, pp.2–3, lines 30–125; Theorem 6.24, p.38, lines 1707–1729 | p≥5 and scalar endomorphisms are retained. In the peu-ramifié exception the Steinberg weight has multiplicity 2; the other nonzero weight has multiplicity 1. |
| 6.2 Split non-scalar BM | HU-TAN15 Theorem 1.3, p.4, lines 130–205; Theorems 5.11–5.12, pp.32–33, lines 1504–1518 | Distinct characters, p≥5, framed versus versal dimensions and the three-prime formula agree. |
| 6.5 Dyadic arithmetic-action deduction | TUNG21B Lemma 5.3.2/Theorem 5.3.3, p.28, lines 1356–1379; Theorem 8.0.1/Corollary 8.0.2, p.38, lines 1779–1794 | The conditional support-to-cycle deduction is supported. Its missing data are R01; the source's conclusion covers scalar residual cases. |
| 6.10 Modularity-input routing | DP22 Theorems 1.4–1.5 and proofs, p.4, lines 140–164 | The odd/dyadic split and distinct Kisin papers are correctly distinguished. The routing faithfully exposes, but does not discharge, R01. |

**Pinned declarations and scope.** Mathlib pin: 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti pin: a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The following twelve rows record opened native definitions/APIs; paths are relative to the respective library roots.

| File and line | What the native declaration includes, and what it does not |
| --- | --- |
| `Mathlib/RepresentationTheory/Continuous/TopRep.lean:31` | TopRep bundles continuous linear operators, not joint group-action continuity. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean:272` | IsSmoothDiscrete explicitly requires a discrete module and open stabilizers; line 367 supplies joint continuity. |
| `TauCeti/NumberTheory/LocalField/AbsoluteRamificationIndex.lean:63` | FinitePadicExtension supplies a finite ℚ_p-algebra with compatible valuation extension; ramified coefficient fields are allowed. |
| `Mathlib/Algebra/Module/Torsion/Basic.lean:177` | torsionBy is the kernel of scalar multiplication. The Lean predicate applies it to actual subgroup invariants. |
| `Mathlib/RingTheory/Length.lean:30`, line 92 | Module.length is ℕ∞-valued; length_ne_top_iff identifies finite length. The statement guards toNat against the infinite value. |
| `Mathlib/RingTheory/LocalRing/Defs.lean:30` | IsLocalRing extends Nontrivial. The zero ring cannot enter the polynomial theorem through an omitted hypothesis. |
| `Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44` | AlgebraicCycle is locally finitely supported functions on a scheme. This is not already the required module-cycle/type-ring comparison. |
| `Mathlib/NumberTheory/Padics/Measure/AmiceTransform.lean:76`, line 157 | amiceTransform is R-linear; amiceTransformEquiv has ℤ_p coefficients. The latter is not a general analytic-distribution equivalence. |
| `Mathlib/NumberTheory/Padics/Measure/Monoid.lean:98` | dirac_mul_dirac supplies convolution of bounded Dirac measures in multiplication order. |
| `TauCeti/CategoryTheory/Injective/Envelope.lean:63`; `TauCeti/CategoryTheory/Projective/Cover.lean:111` | Essential monos/epis are categorical predicates. They do not assert existence of the GL₂ envelopes. |
| `TauCeti/Topology/Algebra/Module/Compact.lean:294` | IsCompactModule records topological addition, continuous scalars, compactness and total disconnectedness; it does not add a hidden Hausdorff axiom. |
| `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`; `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Module.lean:344` | The completed-group-algebra carrier and compact-module action exist. They are consumed, not reconstructed by this roadmap. |

Object searches covered analytic distributions/coadmissibility, Schikhof duality, filtered periods, continuous deformation rings, Hilbert–Samuel polynomials, representation length, compact induction, Montreal/trianguline objects, cycles and Jacquet–Langlands. No pinned implementation making an omitted headline immediately statable was identified. Open-head Lean-name searches found this file's two theorem names and namespace only in this folder; no fully qualified declaration collision was identified.

**Supplier and ownership resolutions.** Main examples PadicFunctionalAnalysis and Completed/LocalGaloisGroups were read for shape. The following contracts were reopened at main where the roadmap exists there, or at the service's open head for a new roadmap. Line numbers below are repository-relative, excluding the service's identifying header. Downstream citations are ownership checks, not supplier edges.

| Contract | Resolved witness |
| --- | --- |
| Banach stages, Mahler/Amice theory, compact inverse limits | `TauCetiRoadmap/PadicFunctionalAnalysis/README.md:595`, §3.4; PadicMeasuresIwasawaAlgebras §§1.6–1.7, 2.2 and §5.2 at line 3367. Their compactness and coefficient restrictions are retained. |
| Smooth categories and induction | `TauCetiRoadmap/SmoothRepresentationsOfLocalGroups/README.md:801` (SR.0.4), 1594 (SR.0d.1), 1835 (SR.2.1). These do not replace GL₂'s local-admissibility theorem. |
| Raw/classical Weil–Deligne data | The same supplier at lines 4380, 4451, 4557 and 4585: raw fields, operations, Frobenius semisimplification and normalized correspondence. The arithmetic/geometric transport here remains an adapter. |
| Étale/Robba modules, ψ, field characters, Sen and triangulations | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:561` (§1.0), 1688 (§3.5), 2443 (§5.6a), 2790–2998 (§§7.1–7.5), together with §§2.2–2.6. This supplier changed since the previous review; its old line numbers were not reused. |
| Periods, semistabilization and continuous boundaries | PadicPeriodRings §§1.1–1.5, 4.1–4.3; `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:3735`, §F.6. The general boundary is supplied there; §4.1a here constructs the Colmez presentation. |
| Degree-two laws and algebraic Cayley–Hamilton quotient | `TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants/README.md:592`, 862, 1864, 2201, 2537, §§0.1–0.5, 1.1–1.3, 1.5. Continuous residual completion remains a separate target here. |
| Local geometry and cycle scope | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1099`, 1302, 1394, 5110, 6567, §§0.16, 0.20–0.21, 4.2, 5.1. Its finite-type geometric cycle theory does not replace module-relative polynomiality on arbitrary noetherian local rings. |
| Local fields and reciprocity | ClassFieldTheory Layers 5 and 7–9; LocalFieldsRamification Layers 0–3; LocalGaloisGroups Layers 0–3 and 5–7; ProfiniteCohomology Layers 0–2; ProfiniteProPGroups Layer 9; ReductiveGroupsPartII RG2.4. Arithmetic reciprocity is inverted before the Colmez formulas are used. |
| Analytic/duality consumers | LocallyAnalyticDistributions §§0.0–0.3 and 1.3 and CompletedCohomologyPartII F.1 expressly consume the common foundation here. Their broader analytic and derived constructions are additional work. |
| Filtered-period, fundamental-character and Serre-weight consumers | FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.3.1–3.3, R07.4.13, R07.5.5, R07.5.13, R07.5.15; PadicHodgeTheory §§3.4–3.5; ArithmeticGaloisRepresentations §2.3. Their common-domain objects import this roadmap; larger-domain extensions remain separate. |
| Representing pairs and cycles | DeformationAndDerivedPatchingAlgebra §§2.6–2.7, 3.11–3.12, 6.7; LocalGaloisDeformationRings F.2.3–F.2.11 and §§3.1–3.5; ArithmeticGaloisDuality D7.1. Universal-lift preservation and equality of eventual polynomial values fix their shared objects. |
| Types, transfer and arithmetic applications | GL2AutomorphicRepresentationsAndTransfer R16.2.9/R17.1.1 and LocalGaloisDeformationRings §2.26.1 import the common local type/transfer construction. EndoscopicTransferAndUnitaryTraceComparison §4.7a still separately constructs it: R03. |
| Completed cohomology/modularity consumers | CompletedCohomologyAndLocalGlobalCompatibility §§0.3, 2.1, 4.4–4.5, 4.10 and GL2ModularityLifting §§8–9 resolve as consumers. Their later global conclusions cannot silently become earlier inputs here. |
| Supplied newer open work | ScholzeFunctorAndModpCohomologyOfTheLubinTateTower uses this roadmap's smooth/block inputs, for example README lines 529 and 628. It does not supply the missing global construction for this roadmap. PadicExtensionFamilies was searched for overlapping period/deformation objects. |

The shared foundations can belong to this roadmap despite its specialized title: they precede their consumers, retain the general domains, and do not duplicate a main-branch roadmap. R03 is a repairable ownership conflict, not grounds to reject the whole scope.

**Computed adversarial tests.** Each row gives actual values or maps for the indicated statement and a comparison value. “Retain” means agreement on these instances, not a proof or certification of all source arguments. The 125-row table covers all 15 sampled targets, all headline families and every finding. Additional section-specific tests follow the general tests.

| Statement | Instances tried | Computed value(s) | Other side / wrong model | Result; change |
| --- | --- | --- | --- | --- |
| Conventions: Weyl and arithmetic characteristic | p=2,3; w=(0 1;1 0) | w²=I, det(w)=−1 | Signed Weyl square=−I, including over ℚ₂; reduction mod 2 alone identifies the signs | Retain characteristic-zero convention. |
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
| 0.5 Cycle versus multiplicity | A=k[[x,y]]/(xy), its two branches | z₁(A)=[(x)]+[(y)]; each branch multiplicity=1 | Branch cycles [(x)] and [(y)] are unequal despite 1=1 numerically | Retain; corrected source locators verified. |
| 0.5 Ambient localization and formal variables | k[[t]]→k((t)); add three variables | Intrinsic dimensions 1→0, ambient generic component stays dimension 1; formal extension 1→4 | Relative dimension 0 does not make intrinsic dimensions equal | Retain explicit dimension rule. |
| 0.5 Flat specialization | A=O/ϖ versus A=O | First generic fibre 0, special fibre k, cycle 1; second is flat and specializes to cycle 1 | Specializing the first generic cycle yields 0≠1 | Retain O-flatness. |
| 1.3 Rank-two Tate dual | Weights a,b; diagonal characters α,β | V∨(1) has characters χ/α,χ/β and weights 1−a,1−b | V⊗(χ/det V) gives χ/β,χ/α, the same multiset | Retain twist, with pairing rather than an unmarked basis equality. |
| 1.4 ψ and projector | φ(1)=1; basis term 1+T | ψφ(1)=1; ψ(1+T)=0; (1−φψ)(1)=0 | Identity projector would send 1 to 1 | Retain. |
| 1.4 Nonabsolute irreducibility | Unramified ℚ₃-representation, Frobenius (0 −1;1 0) | Characteristic polynomial X²+1 irreducible over ℚ₃; inertia trivial; D^nr has rank 2 | “Irreducible implies D^nr=0” gives 0≠2 | Roadmap's stronger condition retained; source issue below. |
| 1.6 Étale/irreducible parameter boundary | u>0, w=u versus w>u, finite ℒ | First is ordinary and reducible; second lies in semistable irreducible region | Dropping the strict inequality admits the ordinary boundary | Retain the separate strata. |
| 1.6 and 4.8 dyadic parameter | δ₁(2)=2, δ₂(2)=1/2, unit values 1 | u=1,w=0, valuation sum 0; δ_s(2)=4, weight −1 | The old odd-prime restriction would reject it; the present head includes it | Retain; dyadic repair verified. |
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
| 3.6 Family base and fibre | S=O, id; S=O[[t]], Frobenius diag(1+t,1) | Identity gives D_s=D; t=0,ϖ give traces 2,2+ϖ | S⊕S/(t) has generic rank 1 but special dimension 2, so is not finite free | Retain; all four family Checks and the saturated-fibre surjection now agree. |
| 3.7 Reconstruction of rank two | V of dimension 2 and its Tate dual | dim V=dim V∨(1)=2; double Tate dual is V | Forgetting the dual gives a different determinant: det(V∨(1))=χ²/det V | Retain the actual dual identification. |
| 3.8 Nonordinary correspondence | Rank-one character versus rank-two absolutely irreducible V | Dimensions 1 and 2; first outside stated Galois domain | Zero and character Banach objects cannot be inverse images in this bijection | Retain precise domain; not an all-Banach equivalence. |
| 3.9 Deformation comparison | k[t]/t³→k[t]/t² | Geometric points 1/1; tangent dimensions 1/1; lengths 3/2 | Isomorphism would preserve length | Retain; corrected Kisin locator verified. |
| 4.2 Algebraic-vector criterion | Non-de Rham V; de Rham weights (0,1) | First Π^alg=0; second Alg dimension 1 and Π^alg=LL(V) | Analytic density alone would incorrectly infer nonzero algebraic vectors in the first case | Retain criterion; supercuspidal identification still R01. |
| 4.2b Filtration independence | Same D_pst, weights (0,2), two admissible lines | Algebraic factors both Sym¹, dimension 2, with the same smooth LL factor | Distinct filtration lines can give distinct Π; equality of Π is not the conclusion | Retain algebraic-only comparison. |
| 4.3 Double-root crystalline completion | p=2, φ=2⁻¹(1 1;0 1), Fil⁰=Le₂, jumps 0,−2 | t_H(D)=t_N(D)=−2; sole stable line Le₁ has t_H=−2<t_N=−1 | Scalar φ=2⁻¹I makes Le₂ stable with 0>−1, violating weak admissibility | Retain nonsplit raw lift and all-prime nonspecial theorem. |
| 4.4 Scalar-inertia types | Trivial inertial type, Steinberg versus unramified principal series | σ^cr=1; σ is finite Steinberg of dimension p; St has K-fixed dimension 0 | Treating σ=σ^cr would confuse dimensions p and 1 and the N=0 test | Retain separate crystalline type; dyadic dimensions 2 and 1 still differ. |
| 4.4 Algebraic weight and reduction | w=(0,1), scalar determinant twist | Algebraic factor dimension 1; twist multiplies each scalar by its specified character | Omitting determinant twist keeps dimension 1 but changes central values | Retain occurrence plus character, not dimension alone. |
| 4.6 Completion classification | Supercuspidal fixed period module, lines Le₁ and Le₂ | Two distinct filtration points in ℙ¹(L); same weights and algebraic factor | A singleton indexed only by weights identifies these two points | Retain filtration family; R01 for comparison input. |
| 4.6 Raw versus semisimple period lift | Regular Jordan versus scalar double-root φ | Both have trace 2α, determinant α²; eigenspace dimensions 1 and 2 | Traces alone do not select the raw lift | Retain regular nonsplit lift before weak admissibility. |
| 4.8 Generic/special induction | δ_s=x^0 and x^1 | Special algebraic dimensions 1 and 2; k=0 with unitary determinant forces u=0 | S_irr requires u>0, so the k=0 formal induction test is not an extra irreducible parameter | Retain, including p=2. |
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
| 5.7 Deformation determinant | Central ψ, MF convention | det MF=ψε⁻¹; switching to Colmez V=MF(ε) gives determinant ψε | Using ψε on MF introduces an extra ε² | Retain; Artinian determinant comparison verified. |
| 5.7 Residual exclusion | p=3, r̄=1⊕ω | It is the split member of the excluded (1 *;0 ω) shape | Reading the exclusion as nonsplit only would admit it | Retain explicit split exclusion. |
| 5.10 Cycle identity at lowest weight | Weights (0,1), trivial crystalline type | Only trivial-weight multiplicity is 1; formula reduces to z(R^cr/ϖ)=C_triv | Adding the Steinberg type introduces a different constituent | Retain crystalline/noncrystalline separation. |
| 5.10 Empty ring and positivity | Type ring 0; effective cycles with nonnegative coefficients | Left cycle=0; every positively weighted nonzero component would give coefficient ≥1 | Cancellation cannot make a positive coefficient zero | Retain effectivity; zero ring is allowed here. |
| 5.11 Generic multiplicity criterion | Module R versus R² on one reduced component | Supports equal; generic lengths 1 and 2 | Required ring-cycle coefficient is 1 in both comparisons | Retain rank-one comparison; support alone insufficient. |
| 6.1 Local BM multiplicity | Exceptional peu-ramified versus generic case | Peu-ramifié Steinberg-weight coefficient 2; determinant-weight coefficient 1; generic nonzero coefficient 1 | A uniform multiplicity-one assertion loses a factor 2 | Retain exceptional case and p≥5, End=k. |
| 6.2 Split non-scalar cycles | r̄=1⊕ω, p≥5 | Displayed three-prime formula has coefficient a_(p−3,1) at 𝔭₁, a_(0,0)+a_(p−1,0) at 𝔭₂, a_(p−1,0) at 𝔭₃ | One scalar cycle cannot encode the three coefficients separately | Retain both residual orientations and versal/framed conventions. |
| 6.3 Conditional odd-prime cycle deduction | One-component R; M=0,R,R² | Generic cycle coefficients 0,1,2 | Ring cycle coefficient 1; support only rejects 0, not 2 | Conditional argument consistent; R01 constructs the actual rank-one input. |
| 6.4 Dyadic generic blocks | σ in/out of the specified K-socle | Corresponding C_σ is multiplicity 1/nonzero versus 0 | Scalar semisimplification is not a generic block supplied by this theorem | Retain p=2 generic restriction. |
| 6.5 Conditional scalar dyadic case | r̄=1⊕1, crystalline lift 1⊕ε | Type ring nonempty; p=2, residual ε=1 | §6.4 gives no theorem for this block; replacing patched data by zero gives coefficient 0 | R01 must supply the actual dyadic construction. |
| 6.6 Corrected scalar multiplicities | Nontrivial ramified, nontrivial unramified, split | μ=1,2,4 respectively | Uniform nontrivial value 1 fails on the second; speculative split value 2 fails on the third | Retain published correction. |
| 6.6 Framing | One-dimensional special-fibre cycle plus 3 variables | Dimension 1→4; multiplicity e→e | Multiplying e by 3 would be wrong | Retain dimension shift without multiplicity change. |
| 6.7 Finiteness equivalences | N=0; finite direct sum of one residual simple | Hom modules, cosocle and reduction have length 0; for n copies, length n | Infinite direct sum has infinite cosocle and fails the finite condition | Retain finite generation, not arbitrary pseudocompact size. |
| 6.7 Characteristic-zero category | Π⊕Π at an absolutely irreducible Galois point | Special fibre consists of two copies, multiplicity 2 | Identifying every object with the single irreducible would collapse 2 to 1 | Retain finite-length module category. |
| 6.9 Jacquet–Langlands sign | d=1,m=1; d=2,m=1; d=2,m=2 | Character signs (−1)^(md−m) are +1,−1,+1 | Uniform sign −1 fails in the first and third cases | Values agree; resolve duplicate construction in R03. |
| 6.9 Multiplicity space | X=ρ⊗L^r with dimρ=d>1 | dim Hom_D×(ρ,X)=r; dim e_ρX=dr | Identifying Hom with projector image inserts an extra factor d | Retain equivariant-Hom topology and evaluation tensor factor. |
| 6.9 Filtration annihilator | M=Le₁⊕Le₂, ℒ=Le₁ | ℒ^⊥=Le₂*; quotient dimension 1 | Choosing Le₁* instead pairs nontrivially with e₁ | Retain dual line and exact-sequence orientation. |
| 6.9 Resolvent normalization | z=3,x=0,y=1 | (z−x)⁻¹(z−y)⁻¹=1/6 | ((z−x)⁻¹−(z−y)⁻¹)/(x−y)=(1/3−1/2)/(−1)=1/6 | Retain sign. |
| 6.9 Nonzero map and scalar uniqueness | Φ=0; Φ an isomorphism; 2Φ | Zero image=0, not dense in nonzero target; ratio of the latter two maps is scalar 2≠0 | A zero scalar cannot compare isomorphisms | Retain local deduction; R01 supplies existence. |
| 6.9 Injectivity from both charts | Kernel section (z₁,z₂), infinite t-divisibility of it and w-transform | First test gives z₁=0; second gives z₂=0; pair=(0,0) | First test alone permits (0,z₂) | Retain two-chart argument and length-two smooth comparison. |
| 6.10 Case selection | p=3 cyclotomic extension; p=2 scalar residual | Eligible all-residual rows are respectively (3) and Tung part of (4) | Generic p≥5 rows give no result in either case | Conditional routing correct; R01 remains necessary. |

| 0.3 Coefficient-linear dual | O/ϖ and O/ϖ² | O-dual lengths 1 and 2; bidual lengths 1 and 2 | A field-valued dual of O/ϖ² kills ϖ and retains only length 1 | Retain L/O target and scalar structure. |
| 0.3 Fundamental characters | p=3, niveau 2→1 | Norm exponent (9−1)/(3−1)=4; ω₂⁴=ω₁ | Exponent 2 would not be the norm to 𝔽₃× | Retain norm and residue embeddings. |
| 0.3 Split Kummer class | c=0 | Unit-Kummer membership true; wild action trivial; restricted peu predicate false | “Trivial wild or peu” is true, agreeing with membership | Retain total/restricted distinction. |
| 1.1 Mirabolic multiplication | (a,b)=(2,1), (a′,b′)=(3,4) | Product (6,9) | Reversed affine order gives (6,7) | Retain semidirect-product order. |
| 1.2 Geometric character | μ₂ at p=3; ε at p and u | Geometric value 2, arithmetic value 1/2; ε(p)=1, ε(u)=u | Dropping the minus degree gives arithmetic value 2 | Retain normalization. |
| 1.2 Character-group commutativity | A=(1 1;0 1), B=(1 0;1 1) over 𝔽₃ | (AB)²=2I | A²B²=(2 2;2 1), unequal | Retain commutative coefficient ring; R04 removes only undeclared notation. |
| 1.5 Mirabolic action | δ₁, p=2, affine map x↦2x+1 | Pushforward δ₃; inverse shift has y₀=ψx₀, y₁=x₀ | Ignoring the recovered zeroth coordinate fails inverse compatibility | Retain generic inverse-limit action. |
| 1.5 Compact-open restriction | M=ℤ₂, trivial action, φ=ψ=id; U=2ℤ₂, V=1+2ℤ₂ | Res_U=Res_V=id; (Res_U+Res_V)(1)=2 | Res_(U∪V)(1)=1 | Fails; R02 supplies missing axioms. |
| 1.5 Repaired measure test | Dirac₀, same disjoint balls | Restrictions δ₀ and 0; sum δ₀ | Restriction to ℤ₂ gives δ₀ | Proposed repair passes; trivial model excluded. |
| 1.7 Reciprocity transport | Unramified parameter α=2 | Dual parameter α⁻¹=1/2; dual twice 2 | Merely renaming arithmetic as geometric leaves 2 instead of 1/2 | Retain explicit duality transport. |
| 2.3 Compact/discrete duality | Discrete k and zero | Dual k has length 1, bidual k; dual 0=0 | Infinite discrete direct sum dualizes to a product, not the direct sum | Retain compact product and arrow reversal. |
| 2.8 Weights and normalizer | ℓ=3, weights n=0,1,2; w_ℓ | Dimensions 1,2,3; 3·2=6 weight classes; w_ℓ²=−3I | Unsigned Weyl gives square I | Retain scalar parameter; R04 removes Check identifier. |
| 2.9 Larger-field exclusion | F=ℚ_(p³) versus ℚ_p | Degrees 3 and 1; F=ℚ_p predicate false/true | Applying the Q_p theorem to degree 3 drops its hypothesis | Domain check only; external counterexamples not reconstructed. |
| 3.1 Gluing | Pair of chart sections, overlap restriction r, Weyl w | Gluing requires r(z₂)=w(r(z₁)); (0,0) satisfies 0=0 | With r(z₁)=0 and r(z₂)≠0, product membership alone admits a nongluing pair | Retain overlap equation, not arbitrary product. |
| 3.3 Mod-p correspondence | (r,χ)=(1,1), p=5 | Inertia of ind(ω₂²) has exponents {2,10} modulo 24 | Replacing exponent r+1 by r gives {1,5} | Retain r+1 and determinant twist. |
| 3.6a Dyadic density | Two components, dense locus on just one | Closure covers 1 component; full space has 2 | Equality of these closed sets would require 1=2 components | Retain density on both components and coefficient descent. |
| 3.10 Twisted heart | ψz=cz, ψφ=id | ψ((1−cφ)z)=cz−cz=0 | Wrong eigenvalue ψz=z gives (1−c)z, nonzero for c≠1 and z≠0 | Retain eigenvalue c=δ(p)⁻¹. |
| 3.11 Analytic exact sequence | Scalar a, character δ | Dual scalar δ(a)⁻¹ times δ(a²)=δ(a) | Twisting without det gives δ(a)⁻¹δ(a)=1 | Retain determinant in dual twist. |
| 3.11 Compatible radius | p=5, δ=ε⁻¹, scalar unit 6 | Required value 1/6 | Using ε gives 6≠1/6 | Retain inverse central character. |
| 4.1 Algebraic factor | Weights (−1,1) | W=Sym¹⊗det⁻¹, dimension 2; scalar a acts by a⁻¹ | Omitting det twist gives scalar a | Retain determinant exponent. |
| 4.1k Normalization | Weights (1,2), twist by χ⁻¹ | Normalized weights (0,1), cyclic length 1 | Before twisting, period pieces have lengths 1+2=3 and invariant quotient dimension 2 | Retain normalized cyclic model. |
| 4.1k Coefficients | k=2, K(x)=xt·1_(ℤ_p×)(x) | (tx)-coefficient is indicator 1 on units; t-coefficient is x | At x=1 and 1+p^n the latter gives 1 and 1+p^n, unequal for every n | Retain (tx)^i; do not claim ordinary coefficients locally constant. |
| 4.1k Support | Constant 1 on ℚ_p×; indicator ℤ_p× | First support noncompact; second support compact | Compact model accepts only second; zero vector maps to zero function | Retain distinct ambient support conditions. |
| 4.1a Exponential versus finite classes | V=ℚ_p | D_dR/Fil⁰=0, exp image=0, H¹_e=0 | H¹_f has unramified dimension 1 | Retain H_e rather than H_f image. |
| 4.2a Filtration-free module | Two distinct lines in same 2-dimensional period space | Underlying N_rig and its action agree; line parameters remain 2 distinct points | Forgetting underlying period data would not determine that action | Retain fixed period data and distinct weights. |
| 4.5 Type lattice | k=2, trivial inertia, p=3 | σ dimension 3, σ^cr dimension 1 | A K-fixed-vector test sees dimension-1 type, not the dimension-3 type | Retain distinction; supercuspidal branch still R01. |
| 4.7 De Rham consequence | V with weights (0,1) versus (0,0) | Algebraic degree 0 and dimension 1 in first case | In second case b−a−1=−1: no such algebraic factor | Retain distinct-weight hypothesis; no natural-number truncation substitute. |
| 5.8 p=3 determinant variation | Character 1+e over L[e]/e² | Square root 1+e/2; square 1+e | At residue characteristic 2, dividing by 2 is unavailable integrally | Retain odd-prime splitting, separate all-prime family. |
| 5.8 Residual exclusions | Split χ₁⊕χ₂ with χ₁≠χ₂; p=3 pair 1,ω | End dimension 2, not 1; ω=ω⁻¹ | Both orientation exclusions exclude the 1,ω case | Retain Schur and orientation hypotheses. |
| 5.9 Removing Hom envelope | Free rank-one coefficient module; two copies | Hom(R,R)=R; Hom(R,R²)=R² | Replacing compact Hom by a constant one-dimensional space loses rank 2 | Retain actual dual and coefficient module. |
| 5.12 Type-ring point criterion | A=L[e]/e², Frobenius 1+e | Residue Frobenius 1; actual element 1+e≠1 | Reduced points alone see no difference | Retain finite-algebra point criterion and actual universal lift. |
| 5.13 BCDT dual weight | p=5, σ_(1,0), r̄=ind(ω₂²) | Galois exponents {2,10}; σ∨=σ_(1,−1) matches | Undualized label gives {20,4} modulo 24 | Retain dual labelling. |
| 5.14 Inertial versus extended type | Très ramifié 0→ω→r̄→1→0; a=±1 | Same inertia; quotient Frobenius is 1, requiring −a=1, so a=−1 | a=1 gives −1≠1 at odd p | Retain separate branch comparison hypothesis. |
| 5.14 Acceptability | O[[X]] versus O[[X,Y]] | Both nonzero; relative tangent dimensions 1 and 2 | Quotient of O[[T]] has tangent dimension at most 1 | Nonvanishing cannot imply acceptability. |
| 5.14 Effectivity deduction | Two nonnegative cycle coefficients 0,2 | Sum coefficient 2; nonzero iff at least one contributing positive coefficient | With coefficients 0,0 the sum is 0 | Conditional implication agrees; not a construction of the comparison hypothesis. |
| 6.0 Nongeneric cyclotomic extension | Nonsplit 0→ω→r̄→1→0 | Sub/quotient ratio ω; determinant ω; ζ=1 | Scalar or reversed shape is a different case | Retain special compact module and separate multiplicities. |
| 6.0a Reverse orientation | Nonsplit 0→1→r̄→ω→0, p≥5 | Ratio ω⁻¹; contragredient ratio again ω⁻¹ | Twisting leaves ratio unchanged, so cannot turn it into ω | Retain separate envelope route. |
| 6.8 Occurrence hypothesis | S=0; nonzero specialization N_x | First has M=0 and N_x=0; second has positive dimension | Omitting N_x≠0 would assert occurrence in the zero object | Retain nonzero characteristic-zero fibre. |
| R03 common transfer object | d=1; d=2,m=1 in both roadmaps | Identity/+1; trivial D×↔St₂/−1 in both | Inverting the bijection changes direction, not these objects or values | Duplicate common-domain construction; consolidate ownership. |


## Not verifiable

- **KISIN08**, *Potentially semi-stable deformation rings*: §0.4 cites Theorem 2.7.6, Corollary 2.7.7, Theorems 3.3.4 and 3.3.8, and Errata E.4. The cited author DVI was an unsupported document for the service; the corresponding author PDF URL returned 404. Searches also located Kisin's different ICM survey, which was not substituted for these theorem numbers. These exact locators remain uncertified and the same-key missing-reference entry is retained. This review is finished, not parked for the text.
- **Primary-source limits outside the seeded sample:** §2.9's nonadmissible/supersingular counterexample constructions were not reconstructed. Their degree restriction is tested in the table; this does not certify the internal constructions. LE19 Theorems 1.1–1.2 were subsequently read at lines 30–52 in arXiv v3: p>2, degree-three base and nonadmissibility agree. The exact endomorphism-ring equality quoted by CDN23 Remark 1.8 is stronger than the containment stated in Le’s Theorem 1.2; that strengthening was not independently reconstructed.
- The 37 retrieved reference-list texts are not 37 fully audited papers. The fifteen locator checks above, supporting witnesses and displayed computations delimit the source certification. In particular, computation on examples does not prove every infinite-dimensional equivalence or a missing globalization.
- Ownership checks use readable main/package/open-head material and the relevant supplied sibling checkouts. No claim of inspection is made for a supplied checkout absent from disk, nor is absence of such a checkout a mathematical finding. R03 instead uses a readable, identified open head returned by the roadmap service.

MAZUR89 is now legally available as a 53-page OCR extraction, unlike in the previous review; its Φ_p setup at lines 78–83 was read. SERRE72 was also retrieved from the author’s institutional archive: §1.3, Proposition 2, printed p.264, lines 211–249 gives the tame-root and norm construction. The previous raw-fibre-specialization uncertainty is also removed: §3.6 now keeps the saturated-fibre surjection and numerical saturation warning.

## Source issues

- **Misprint** in PASKUNAS16 at §2.C, author p.21: the source says the type fixes determinant ψ; it should be ψε, consistent with the inertia condition and introduction; affects a stated result.
- **Error** in KISIN09 at (1.1.6), printed p.647: the source assigns one to nontrivial scalar extensions and suggests two for the split case; it should give ramified nontrivial 1, unramified nontrivial 2, split 4; affects a stated result; corrected in print at GEE-KISIN14 Appendix B.1, author p.38.
- **Gap** in KISIN09 at (1.7.5), printed p.671: the source promotes a generic isomorphism and image homeomorphism to a closed immersion; it should allow nonreduced fibres and omit the resulting formal-smoothness assertion; affects the proof; corrected in print at GEE-KISIN14 Appendix B.1, author p.38.
- **Error** in KISIN09 at Lemma (1.7.4), printed p.670: the source omits the prescribed residual character on the selected line; it should require the residual line to carry ω₁; affects a stated result; corrected in print at GEE-KISIN14 Appendix B.2, author p.38.
- **Error** in KISIN09 at Corollary (1.7.14), printed p.674: the source limits its exceptional clause to split representations; it should also include nonsplit representations with scalar semisimplification; affects a stated result; corrected in print at GEE-KISIN14 Appendix B.1, author p.38.
- **Error** in COLMEZ10 at §II.3.1, author p.62: the source deduces unramified-part vanishing from rank-two irreducibility; it should require absolute irreducibility or the relevant inertia-invariant vanishing; affects a stated result.
- **Misprint** in COLMEZ10 at Theorem III.3.2(i), author p.85: the source reverses the two exceptional extension orientations; it should put Steinberg below the character for r=0, and reverse that sequence for r=p−1; affects a stated result.
- **Misprint** in CDNKISIN at Remark 1.1, author p.4: the source places the scalar exceptional comparison at r=p−1; it should place it at r=0, with Steinberg below the character in compact induction and the character below Steinberg in scalar principal series; affects a stated result.
- **Misprint** in NAKAMURA23 at Lemma B.25, author p.102: the source refers to conditions b,c,d of Theorem B.24; it should refer to that theorem's conditions d,e,f, alongside B.18(a); affects a stated result.
- **Misprint** in DLB17 at Proposition 11.10, author pp.63–64: the source reverses the equation selecting a preimage under u⁺; it should read v=u⁺v′, as used on the following line; affects the proof.
