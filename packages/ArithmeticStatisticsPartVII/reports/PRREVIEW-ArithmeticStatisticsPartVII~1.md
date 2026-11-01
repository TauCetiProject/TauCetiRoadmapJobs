# Review of ArithmeticStatisticsPartVII (pull request #1178 at cbcd49e)
**Verdict:** needs changes

## R01 (P1) — The CM route consumes uniformization from a supplier that excludes it

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2423`: “EllipticCurves Layers 1–3 (isogenies, Tate modules and complex uniformization)”.

**Claim:** CM reciprocity uses complex uniformization as an existing input. EllipticCurves supplies the first two objects, but explicitly excludes the third. There is no declared supplier gap covering this mismatch.

**Witness:** `TauCetiRoadmap/EllipticCurves/README.md:150` excludes complex uniformization; its Layer 3 at line 683 concerns finite fields. `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:2510`, A5.1, supplies lattice uniformization instead.

**Repair:** Cite AbelianSchemesAndArithmeticModuli A5.1 for the general lattice/analytic/algebraic Hom comparison, and ModularCurvesPartII §§1.2–1.4 for its pointed elliptic and differential specialization. Add these exact contracts and update the CM *Needs* line; both suppliers precede this roadmap. For the test lattice Λ and multiplication by 2, the resolved supplier gives kernel `(½Λ)/Λ` of order 4 and differential multiplier 2, exactly the comparison required here. Keep EllipticCurves for algebraic isogenies and Tate modules.

## R02 (P2) — Import the existing general Pontryagin biduality target

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:1666`: “the general compact-open development is owned here”.

**Claim:** The target and proof route reconstruct separation and topological evaluation biduality for locally compact abelian groups with a compact-open subgroup. The supplied new-roadmap head of VonNeumannAlgebras already owns these results for arbitrary locally compact Hausdorff abelian groups.

**Witness:** `TauCetiRoadmap/VonNeumannAlgebras/README.md:3160`, V11.DoubleDualEmbedding, and line 3239, V11's Fourier/biduality conclusion, construct the same evaluation map, including surjectivity and naturality, without a countability restriction.

**Repair:** Import those V11 targets by name and section; remove the second construction of separation and evaluation biduality. Retain the closed-subgroup/quotient adapters and quadratic annihilator comparisons to the extent the supplier does not state them. On `G=C4`, both requested maps send 1 to the character `χ_k ↦ k/4`, and both identify groups of order 4. Importing V11 therefore preserves the actual map, not merely an abstract isomorphism. VonNeumannAlgebras is earlier in the merge order.

## R03 (P2) — Keep the general base field in the CM twist theorem

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:1555`: “Let `K` be an imaginary quadratic field … and `E/K` an elliptic curve”.

**Claim:** The final CM application is restricted to curves over their CM field. Its source and all the preceding CM targets work over an arbitrary number field containing that field. The restriction loses the general theorem without a mathematical need.

**Witness:** BKLOS line 197, Theorem 2.7, printed p. 5, and lines 872–880, printed p. 19, allow `End_F(E)⊗Q=K`. Take `K=Q(√−3)`, `F=K(√2)`, and `E:y²=x³+1`.

**Repair:** State the conditional corank-zero half-proportion theorem for every number field `F` with `End_F(E)⊗Q=K` and 3 non-inert in K. Require `C` over F and average F-squareclasses with the F-height. Keep `F=K` as a Check. In the displayed witness, the finite 3-adic factor is 9 and the two complex factors multiply to 1/9, so the global ratio remains 1; the existing ratio-zero argument gives the same conditional half-bound. No new Sha-finiteness assumption is needed.

## R04 (P3) — Remove the 149 HTML anchors rejected by the gate

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:67`, and the other anchor lines: `<a id="cohen-lenstra-heuristic-for-quadratic-fields"></a>`.

**Claim:** The supplied gate fails its `residue` rule. All 149 reported occurrences are forbidden HTML anchors. A failing gate prevents acceptance even though this rule has P3 severity.

**Witness:** The worker's gate reports `residue=149 … build=0 FAIL`; the first occurrence is line 67. The outside-folder diff is empty.

**Repair:** Remove all HTML anchors, turn target titles into suitable native Markdown headings where stable target fragments are required, and use ordinary reference links for bibliography entries. Update the affected links and rerun the gate. For the first witness, a native “Cohen lenstra heuristic for quadratic fields” heading supplies the same target fragment without an anchor tag. This review did not edit the PR or assert that its gate now passes.

## R05 (P3) — Do not advertise unstated API names as Lean declarations

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:73`: “`CohenLenstraHeuristic`: The conjecture as a proposition”. Similar entries occur throughout the required-API lists and at lines 2419–2466.

**Claim:** The README uses backticked names for this roadmap's future declarations even though `Suggested.lean` deliberately omits them. The standing form rule reserves such names for declarations actually present in that file; line 61's proposed exception does not change that rule.

**Witness:** `Suggested.lean` contains 11 definitions and eight theorems, none named `CohenLenstraHeuristic`, `IsQuadraticFamily`, `cm_reciprocity`, or `cm_hecke_character`.

**Repair:** Express these API bullets and construction targets in mathematical prose; retain a backticked own-name only for the 19 actual declarations. Do not expand `Suggested.lean` with API padding. The CL conjecture's family, limit and hypotheses can remain intact without asserting a nonexistent declaration name.

## R06 (P3) — Supply the source manifest and identifiable supporting citations

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2496`, References, and the absent `TauCetiRoadmap/ArithmeticStatisticsPartVII/sources.toml`.

**Claim:** The required source manifest is absent. The bibliography also gives separate reference numbers to the same PR, BKLPR and BKLOS papers; these must each retain one manifest identity. Supporting citations such as the Oesterlé and van Kampen results need their own identifiable records.

**Witness:** The folder has README, Suggested and metadata files, but no `sources.toml`. References 28/119, 29/120 and 26/127 each identify the same respective arXiv work and version.

**Repair:** Add the required manifest with one key per work, exact version/locator information and the sources service's legal-access records. Record inaccessible texts honestly; do not substitute a successful DOI lookup for having read the theorem. The duplicate PR citations both resolve to arXiv 1009.0287v2, so one entry suffices. This read-only review has not modified a manifest.

## R07 (P3) — Repair supplier links whose target fragments no longer exist

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:51`, the link ending `ArithmeticStatisticsPartIV/README.md#cohen-lenstra-measure`, with similar links to Parts I and III.

**Claim:** The cited mathematical targets exist, but several hyperlinks address removed HTML anchors rather than current headings. This is a locator defect, not an absent mathematical supplier.

**Witness:** At the supplied Part IV head, “Cohen lenstra measure” is a bold paragraph at `TauCetiRoadmap/ArithmeticStatisticsPartIV/README.md:316`; it has neither that HTML id nor a heading producing that fragment.

**Repair:** Link to the containing native section heading and name the exact target in the link label/prose. Resolve each fragment against the cited head. For this witness use Part IV §3.3, target “Cohen lenstra measure”, whose formula is the required `c_(p,u)/(|A|^u|Aut A|)`.

## R08 (P3) — State the finite moment formula also when n<m

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:545`: “for `n ≥ m`”.

**Claim:** The finite PR moment identity is restricted unnecessarily. PR Proposition2.22(a) states it for every nonnegative n and m. The restriction in the separate parity-conditioned assertion is different and remains necessary.

**Witness:** PR lines561–575, printed p.12. At p=2,n=1,m=2, the actual moment is `(1+4)/2=5/2`; the displayed product is `(3/2)(5/3)=5/2`.

**Repair:** Remove n≥m from the finite identity and handle cancellation on either side of m=n in the proof sketch. Add n=1,m=2 as a Check; also n=0 gives moment1 and product1 for every m. Keep m<n in the parity-conditioned theorem at line563.

## Verified sound

This was a read-only review of both complete target files at the requested head. I read the repository's normative README and CONTRIBUTING and compared the shape with three main-branch roadmaps. No out-of-folder PR changes were found. There are no sorry-defined data, `set_option`s, extra imports, or admitted examples in the Lean file. The mathematical constructions use actual carriers rather than arbitrary predicates for their conclusions. The arithmetic conjectures remain propositions, and the three-isogeny applications retain the explicit counting hypothesis `C(F,φ,Σ)`.

The dependency command requested in the brief returned:

```text
depcheck: 205 roadmaps, 1454 edges, 0 problem(s)
```

It reports no UPWARD or CYCLE line. The semantic supplier mismatch R01 and ownership duplication R02 are not detected by that graph check. No declared supplier gaps were supplied. The worker's gate passes its build and other reported checks but fails `residue=149`; its failing rule is recorded in R04.

The two imported Tau Ceti modules were built with a targeted module build. Direct `lake env lean` elaboration of the original file then exited successfully, with exactly eight `sorry` warnings. A scratch copy appended `#check @name` for all 19 declarations; I compared every elaborated type with the README. No needed binder disappeared and no type changed. A second scratch copy attempted closing each of the eight sorried statements with `simp`, `rfl`, and `infer_instance`; none closed. The pinned-object search found no single library theorem proving these eight complete statements. No padding finding is raised for them.

The eight statable headline theorems present are the finite intersection generating function, its total-variation PR limit, all PR cardinality moments, Delaunay compatibility, the alternating-kernel total-variation limit, parity-sensitive twist moment recovery, prime-power injection moments, and Kane's signed and positive full-two-torsion twist laws. The module docstring explicitly identifies the other headline families: CL/CM arithmetic implications and enhanced laws; all-rank alternating and p-adic models; integral OGr and Oesterlé measures; all-prime Delaunay comparisons; locally compact random intersections; general Selmer/Sha and theta intersections; composite/Jacobian conjectures; Smith/corank and three-isogeny/CM applications; function-field three-Selmer bounds; local/adelic Kummer summands; and CM reciprocity/Hecke comparisons. Their stated missing arithmetic, scheme, measure, or CM carriers are not replaced by free predicates in the Lean file.

The ownership searches used objects, not only proposed declaration names: quadratic and bilinear isotropy, orthogonal quotients, Pontryagin evaluation, restricted products, moment determinacy, bounded-exponent cyclic splitting, orthogonal Grassmannians, symplectic groups, CM lattices and reciprocity. Main, board package data and the available open-roadmap index were searched. The arbitrary-field quadratic parameter-space adapter adds varying submodules to the existing finite-quadratic carrier; the isotropic probabilities and intersection laws are this roadmap's work. The finite-abelian decomposition in Mathlib does not supply the infinite bounded-exponent decomposition. R02 identifies the generic duality that must instead be imported. No duplicate fully qualified Lean declaration name was found.

Pinned declarations opened and compared include the following (paths are relative to their respective library repository):

| Library declaration or definition | File and line at the pin | What was checked |
|---|---|---|
| `TauCeti.FiniteQuadraticModule.IsNondegenerate`, `IsLagrangian` | `TauCeti/LinearAlgebra/FiniteBilinearModule/Quadratic.lean:152`, `:602` | Quadratic vanishing is separate from polar self-orthogonality; a polar-isotropic dyadic diagonal is excluded. |
| `orthogonalQuotient`, `orthogonalQuotientMk` | same file `:839`, `:861` | Actual quotient carrier and quotient map, with isotropic input. |
| `orthogonalQuotient_quadratic_mk`, `orthogonalQuotient_pairing_mk`, `orthogonalQuotientMk_surjective`, `orthogonalQuotientMk_eq_iff`, `IsNondegenerate.isNondegenerate_orthogonalQuotient` | same file `:905`, `:916`, `:927`, `:956`, `:991` | Quotient quadratic/polar formulas, surjectivity, equality relation, and retained nondegeneracy hypothesis. |
| `WeierstrassCurve.Affine.selmerGroup₂` | `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104` | Dedekind finite places plus the supplied additional local conditions; the theorem includes the real place. |
| `WeierstrassCurve.quadraticTwistOf` | `TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean:169` | Parameters `(0,−b)` give discriminant parameter `4b`, the same nonzero squareclass as b. |
| `TauCeti.Measure.ext_of_mgf` | `TauCeti/Probability/Moments/Determinacy.lean:153` | Finite real measures and exponential integrability near zero, not arbitrary group-class determinacy. |
| `continuous_coe_eval_const` | `TauCeti/Analysis/Fourier/Pontryagin/DualEval.lean:29` | Continuity of evaluation alone does not provide general evaluation biduality. |
| `LinearMap.BilinForm.finrank_add_finrank_orthogonal` | `Mathlib/LinearAlgebra/BilinearForm/Orthogonal.lean:276` | Finite dimension, reflexivity, and the radical correction term; nondegeneracy removes that term. |
| `Matrix.card_GL_field` | `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Card.lean:120` | General-linear count; does not count alternating matrices without additional work. |
| Finite abelian cyclic decomposition | `Mathlib/GroupTheory/FiniteAbelian/Basic.lean:177` | Finiteness restriction; does not subsume §5.31's possibly infinite groups. |
| `MeasureTheory.IsProjectiveLimit.unique` | `Mathlib/MeasureTheory/Constructions/Projective.lean:150` | Uniqueness with finite marginals; construction and the quadratic inverse-limit topology remain necessary. |
| `MeasureTheory.measure_limsup_atTop_eq_zero`, `ProbabilityTheory.measure_limsup_eq_one` | `Mathlib/MeasureTheory/OuterMeasure/BorelCantelli.lean:62`; `Mathlib/Probability/BorelCantelli.lean:69` | Summability for the first result; measurable independent events and divergence for the second. |

All 35 distinct explicit cross-roadmap links were located by their mathematical target text; broken fragments are distinguished in R07. Numbered supplier sections were also resolved. In particular I read the following contracts against their actual main or new-roadmap head, rather than a revision of existing work:

| Supplier | Resolved location and mathematical contract |
|---|---|
| ArithmeticStatisticsPartI | `README.md:174`, arithmetic families; `:434`, local conditions; `:972–1114`, squareclass heights, finiteness, twists and positive squarefree representatives. The signed-squareclass constants differ by a factor 2. |
| ArithmeticStatisticsPartIII | `README.md:1991`, number-field twist orbit count; `:2084`, seven-item windowed contract C. Constant ratio1 gives nonidentity mean1 and full Selmer mean2. |
| ArithmeticStatisticsPartIV | `README.md:130`, Gaussian polynomials; `:163`, q-binomial theorem; `:181`, finite p-group classes; `:224`, surjections; `:316`, CL measure; `:519–532`, moment implication and failure of its converse; `:999–1013`, matrix-cokernel laws. |
| ArithmeticStatisticsPartV | `README.md:364`, quadratic three-torsion means; `:846`, cubic two-torsion; `:1088`, Malle; `:1366`, relative propagation; `:1505`, two-extension means. Their differently weighted base-field means are not identified here. |
| ArithmeticStatisticsPartVI | `README.md:857`, mean two-Selmer size3; `:985`, height moments; `:1039`, torsion density zero. |
| SelmerIwasawaCohomology | `README.md:591–675`, duals/coranks/finite-level comparison and abelian Kummer carriers; `:2508`, cohomological Cassels–Tate pairing, radicals and elliptic parity. The reduced pairing does not assert finiteness of full Sha. |
| ArithmeticGaloisDuality | `README.md:3118`, local invariant and pairing conventions; `:3436`, finite Poitou–Tate; `:3869`, prime-to-characteristic function-field form; `:6018`, characteristic-zero lattice/abelian comparisons; `:6600`, Greenberg–Wiles. The flat characteristic-p extension is owned here, not misattributed to these prime-to-characteristic inputs. |
| HeightsRationalPointsAndObstructions | `README.md:545`, arbitrary-field fppf Kummer; `:557`, good prime-to-characteristic local comparison; `:614`, finite generation. |
| AbelianSchemesAndArithmeticModuli | `README.md:1081–1197`, duality and polarizations; `:1388–1628`, isogenies, quotients, Cartier duality, theta groups and Weil pairings; `:2814`, degrees; `:3755`, quadratic twists. A5.1 at `:2510` is the repair supplier in R01. |
| AlgebraicModuliForArithmeticGeometry | `README.md:305`, projective quotients; `:504`, coherent cohomology; `:601`, Grassmannians and Plücker. These are not an Oesterlé measure theorem. |
| SchemeAndStackFoundations | `README.md:4905`, §3.6, degree-d Picard components without a rational point; a Picard point is not automatically an actual divisor. |
| EllipticCurves | `README.md:423`, isogenies; `:647`, torsion/Weil/Tate; `:793`, local theory; `:1154–1262`, twists, Mordell–Weil and Selmer; `:1374`, minimal models. Uniformization is explicitly excluded at `:150`. |
| RestrictedProducts | `Completed/RestrictedProducts/README.md:179`, export contract; group topology and reference subgroups, rather than a second restricted-product construction. |

The remaining broad supplier citations to ClassFieldTheory, Completed/GlobalNumberFields, Completed/NumberFieldArithmetic, Completed/Chebotarev, the analytic-number-theory parts, AdelicAlgebraicGroups, and ReductiveGroupsPartII were resolved to their named layers/targets. No upward supplier was needed for the repairs above.

The seeded source sample has **15 sections**. Locators below refer to line-numbered legal extractions, with preprint printed pagination where specified in the README. I found no separately flagged “unverified” locator in the README. Reading a source theorem is distinguished from checking a numerical witness or proving it:

| Sample | Text inspected and outcome |
|---|---|
| §5.1 | EVW lines 1831–1845, §8.5, printed p.774; WangWood lines284–325, Conjecture3.4/Theorem4.1, pp.7–8. Imaginary/real u=0/1 distinction retained. EVW's unsupported converse is not imported. |
| §5.5 | PR lines248–342, Proposition2.6, pp.5–7; lines561 onward, Proposition2.22, p.12; lines1010–1065, §5/Theorem5.2, pp.21–22. Index0 half-factor, positive denominator indices, parity and rank prior agree. |
| §5.6 | BKLPR lines335–440, Lemma3.6 and Theorem3.9, pp.8–10, and §3.8/Theorem3.11. Zero-diagonal alternation, even dimensions, symplectic automorphism weights and intrinsic fixed-rank measures retained. |
| §5.7 | BKLPR lines708–828, Propositions5.1,5.4–5.6, pp.15–17; lines989–1017, Theorem5.10, p.20. The roadmap retains n≥1 for the half-rank law and uses p, not q, in residue-field injection factors. |
| §5.10 | BKLOS lines103–107, Theorem2.1, p.3; lines620–680, §9 and Proposition10.1, pp.13–14; §10–11 at lines699–869. C, torsion corrections, all places and the inverse differential factor remain explicit. |
| §5.11 | BKLOS lines832–880, Theorem11.2 and proof of2.7, pp.18–19; Rubin lines384–390, Proposition3.14, p.11; lines548–566, Propositions5.3–5.4, pp.15–16; lines690–742 and Corollary5.22, pp.19–22. R03 records lost base-field generality. |
| §§5.23–5.24 | PR lines398–451, Definitions2.13–2.16 and Examples2.17–2.18, pp.8–9. Quadratic self-duality, closed maximal isotropics and compact-open weak metabolicity are different conditions. |
| §5.25 | PR lines147–173, Conjecture1.4, pp.3–4. Common-parity normalization is correct for nonempty prime sets; the roadmap separately fixes n=1. |
| §5.26 | PR lines454–541, Theorem2.19 and proof, pp.9–11. Countable reductions and finite/infinite laws checked; the extra dyadic quadratic-value assumption repairs a real source issue. |
| §5.28 | PR lines147–204, Conjectures1.4,1.7,1.8, pp.3–4. Squarefree/composite distinctions, even genus, separability and the extra factor2 in Selmer size retained. |
| §5.29 | BKLPR lines201–229, Proposition2.1/Corollary2.2, pp.5–6; §§3.8,4.2–4.4 and Propositions4.4–4.9, pp.10–15. Reduction images, dyadic quadratic OGr and parity-selected Schubert strata agree. Serre Théorème8, line762, printed p.145, concerns analytic sets, not all nonreduced finite-level points. Oesterlé's original text is uncertified. |
| §5.30 | BKLPR lines1044–1196, Theorems5.15–5.16, Lemma5.17 and Corollary5.18, pp.21–24. Positive-rank summability and rankzero infinite support distinguished; harmonic weights use reciprocal factors. |
| §5.31 | BKLPR lines989–1025 and1388–1435, Theorem5.10, Conjecture5.11, Proposition6.7, Corollary6.8, Conjecture6.9 and Lemmas6.10–6.11, pp.20,27–28. Prime-power injections are not determined by group order. Baer lines770–793, pp.274–275, supplies the arbitrary bounded-exponent cyclic decomposition. |
| §5.32 | BKLOS lines103–199, Theorems2.1–2.7, pp.3–5; lines620–640, Lemma9.1 and proof, p.13; lines1010–1062, Example13.3/Proposition13.4, pp.22–23. The additional rank-index hypothesis is explicit, field-extension averages use the new field, and kernel coordinates/exceptional twist factors have been corrected. |

The following **128 rows** record finite, degenerate, normalization and negative-control computations across the named targets and the conventions. They are adversarial probes, not proofs of asymptotic or conjectural statements. Finite enumerations were performed for F2-subspaces, alternating matrices over F2/F3, 2×2 matrices over F2/F3/F5, and quadratic direct summands over Z/4. Infinite-product numbers are floating-point truncations (200 factors; 24 rank weights); displayed decimals are numerical checks, not certified error estimates. A row for an unavailable source does not certify its theorem. Locations are lines of the target README.

| Line / statement | Instances and computed values on the compared sides | Result / change |
|---|---|---|
| 69: CL field law | p=3, B=0: imaginary predicted mass 0.56012608; real mass 0.84018912 (=3c/2). d=−1,2 have discriminants −4,8. | Conjecture remains a conjecture. |
| 95: CL moments | A=0: Sur(G,0)=1 and prediction 1. A=C3: predictions 1 and 1/3 for u=0,1; Sur(C3,C3)=2. | No assertion that individual fields equal their mean. |
| 119: Moment implication | Adding mass 3^(−N) at C3^N changes TV by at most 2·3^(−N), but changes the C3-surjection moment by 1−3^(−N). | Converse correctly excluded. |
| 135: CM fixed-space moment | Sign action C2 on F3: fixed size 1 gives 1; identity fixed size3 gives1/3. In F2 sign=identity, prediction1/2. | Correct, including dyadic negative control. |
| 162: Average conjecture | Trivial class group contributes1, never0; C3 contributes3. For p=3,G=C2 the coprimality test is gcd(3,2)=1. | Only predicted limit, not a proved density. |
| 187: Equivariant moment conjecture | Sign F3 has global invariant dimension0; infinite-place identity has fixed dimension1 and moment1/3. | The no-trivial-constituent condition does not replace local invariants. |
| 212: Relative torsion/Hom | G=C2, H=1: V is the one-dimensional sign representation; a sign C3 class module has Hom-count3, a trivial C3 module has Hom-count1. | Correct distinction of relative and absolute torsion. |
| 226: Relative prediction | u=0,1,2 give1+3^(−u)=2,4/3,10/9. | Correct unit-rank normalization. |
| 243: Wreath-type prediction | W′=0 gives factor1 and predictions2 or4/3; a one-dimensional extra trivial-action-at-infinity summand multiplies by1+1/3. | Direct-sum multiplicities retained. |
| 262: Dihedral comparison | For u=0 and base h3-values1,3, weights1,2 give A_w=7/3, versus unweighted2; final factor2 gives14/3 versus4. | Correctly does not equate different base-field weights. |
| 284: Enhanced finite law | g=0: every cokernel0, mass1. g=1,F2: F=0 yields both cokernels0; F=1 yields neither0, joint zero mass1/2. | Shared matrix creates dependence. |
| 314: Zero cokernel at2 | g=1:1/2; g=2 enumeration6/16=3/8, product(1−1/2)(1−1/4)=3/8. | Equal. |
| 332: Odd-prime lower bound | g=2,p=3:27/81=1/3; p=5:365/625=73/125. Both exceed2c3−1=0.12025216. | Bound, not equality or existence of a limit. |
| 350: Enhanced conjecture | Empty prime set and empty tuple give singleton law mass1; (n1,n2)=(1,1) forces equal cokernels, so distinctness test rejects it. | Conjectural family hypothesis retained. |
| 376: Quadratic isotropy definitions | F2 plane q=xy: axes q=0 and self-orthogonal; diagonal q(1,1)=1, although polar value on itself0. V=0 has one isotropic. | Correct quadratic condition. |
| 400: Reduction | F2 plane,X=axis: X⊥/X=0, both axes map to0; X=0 gives identity on two axes. | Correct domain and quotient. |
| 432: Reduction fibres | F2 four-space, X a line: total6, quotient has2 isotropics, fibre size3=2^(2−1)+1. Zero X gives fibre1. | Equal. |
| 449: Isotropic count | n=0,1,2 over F2:1,2,6; products empty,2,2·3. | Equal; excludes all35 Grassmannian planes. |
| 467: Generating-function headline | F2,n=2: enumerated polynomial2+3z+z²=(z+1)(z+2). z=−1,0,1 gives0,2,6 on both sides. | Equal. |
| 485: Closed intersection law | p=2,n=2: d=0,1,2 masses1/3,1/2,1/6; d=3 mass0. Formula gives those three values. | Range restriction retained. |
| 504: PR definitions | p=2 weights at0…3:0.20971122,0.41942244,0.27961496,0.07988999; p=3:0.31950229,0.47925343,0.17972004,0.02073693. | Positive; includes factor1/2 at index0. |
| 527: TV-limit headline | p=2,n=1 finite masses(1/2,1/2) have L1 distance0.74173267; n=2 gives0.40839934; limit weights sum1.00000000 in truncation. | Finite laws differ from limit; convergence consistent. |
| 545: Moment headline | p=2,m=0…3:1,3,15,135; p=3:1,4,40,1120, equal displayed products. Finite p2,n2 first moment2 versus limiting3; p2,n1,m2 gives5/2 on both sides. | R08: allow n<m too. |
| 563: Parity | p2,n2: even mass(2+1)/6=1/2, odd3/6=1/2. Conditional first moments both2; second moments6 and4 differ since m=n. | m<n restriction essential. |
| 581: Delaunay law | p2,r0: mass at0=0.41942244=2a0; r1: mass at0=0.83884488=2a1. Odd Sha-ranks have mass0. | Correct rank shift. |
| 604: Compatibility headline | Half-prior gives a0…a3 as0.20971122,0.41942244,0.27961496,0.07988999. Prior δ0 gives0.41942244 at0, twice a0. | Both directions discriminate wrong prior. |
| 624: Alternating invertibility | F2 sizes0,1,2,3,4: invertible counts1,0,1,0,28; totals1,1,2,8,64. 28/64=(1−1/2)(1−1/8). | Zero diagonal required at2. |
| 642: Kernel-law definition | F2 n3 kernel histogram(j0…3)=(0,7,0,1); F3 n3=(0,26,0,1). | Parity and total8/27 verified. |
| 667: Kernel formula | F2 n4 kernel masses j0,2,4 are28/64,35/64,1/64; Gaussian factor [4 2]2=35. | Equal to enumeration. |
| 685: Alternating-limit headline | p2,n0 parity average is(1/2,1/2); n1 average sizes2,3 gives(1/4,7/16,1/4,1/16). Target a0=0.20971122, not2a0. | Parity mixing factor correct. |
| 703: Symplectic groups | C2 has no perfect alternating form: its one generator pairs0 with everything. C2² has pairing matrix[[0,1/2],[1/2,0]], order4, Sp-order6. | Square-order condition necessary, not sufficient alone. |
| 734: Cokernel finite detection | A=[[0,2],[−2,0]] over Z2: coker=C2². Mod4 reproduces it. Mod2 cannot distinguish it from the zero matrix, whose integral cokernel is infinite; mod4 distinguishes C2² from C4². | e−1 annihilation condition retained. |
| 764: All-rank cokernel laws | p2,G=0: A0=0.41942244; G=C2²: A0=(4/6)·0.41942244=0.27961496. A1(0)=0.83884488. | Automorphisms are symplectic, not all24 permutations. |
| 784: BKLPR model | Q(0,0)=0.20971122; Q(1,0)=0.41942244; Q(2,G)=0; sums over G are1/2 for r0,r1. | Correct two-rank mixture. |
| 814: p-adic intersections | n1: two axes. Equal axes give corank1 and T=0; distinct axes give corank0,T=0; four pairs split2/2. n0 instead corank0 with probability1. | n≥1 essential. |
| 831: Prime-power direct summands | n0 count1; n1 count2 for q2,q4; n2,q4 count12=4·(1+1/2)·2. | Not all self-annihilating subgroups. |
| 847: Injection-moment headline | q4,n1,m1: two equal-axis pairs each have2 injections and two distinct pairs0; average1; at n2 enumeration gives12 summands and total288 injections over144 pairs, average2; limiting target4. m0 gives1. | Finite average not mistaken for limit. |
| 867: PR arithmetic conjecture | p2,d0 predicted0.20971122; first cardinality moment3. Curves with full rational2-torsion have Selmer size≥4, so are not individually distributed by this family law. | Conjecture and family retained. |
| 896: Composite mean conjecture | n1,2,3,4,6: divisor sums1,3,4,7,12. n4 is7, not(2+1)²=9. | Correct composite convention. |
| 924: Rank≤1 consequence | n2 boundσ(2)/2²=3/4; n6 bound12/36=1/3; n prime p gives(p+1)/p²→0. | Unbounded N needed; one n is insufficient. |
| 940: BKLPR arithmetic conjecture | Predicted rank0/rank1 masses1/2 each; rank≥2 mass0. Finite Sha classes exhaust predicted mass1, while infinite Sha is not silently a finite class. | Conjecture stays separate from moment statements. |
| 967: BKLPR consequences | Pair law on r0,r1 gives total1; rank-tail bound1−1/2−1/2=0. Delaunay convolution gives PR first masses above. | No unjustified unbounded moment inference. |
| 985: Full two-descent data | Roots−1,0,1: products2,−1,2, none rational squares. Roots0,1,4 give4,−3,12 and fail the no4-isogeny condition. | Separating control for actual curve condition. |
| 1001: Swinnerton–Dyer transition | i0 probabilities(1/2,1/2,0); i1(1/8,7/8,0); i2(1/32,19/32,3/8); each sum1. | No negative-index transition mass. |
| 1017: Kane tuple estimate | One prime tuple has no pair-character factors, empty product1; repeated prime pair violates distinctness and cannot be treated as an independent Legendre symbol. | Restriction retained; analytic estimate source-checked separately. |
| 1033: Moment determinacy headline | Even-conditioned PR and odd-conditioned PR have the same displayed cardinality moments, but parity expectations+1 and−1; equal mixture has0. | Parity hypothesis excludes two wrong laws. |
| 1050: Kane headline and twist definition | W:y²=x³−x, b=1 gives Sel2 size4 and reduced d0. b=−1 is the same squareclass twist here. b=0 excluded; signed denominator2N counts±1 atN1, positive denominatorN counts1. | Torsion shift2 and real local condition preserved. |
| 1069: Geometric-height family | Constant nonsingular curve has d0; scaling coefficients by u^i multiplies Δ by u^12 and leaves isomorphism class fixed. | Carrier check only; de Jong text unavailable. |
| 1085: de Jong denominator | q5 predicted constant(1−5^−9)(1−5^−10)/(1−1/5)≈1.24999923>0; q1 would divide by0 and is excluded. | Limit uncertified without source. |
| 1101: Constant-j estimate | d1 count scaleq9 versus total scaleq11; ratioq^−2. d0 would make C1d=0 and is excluded from rank bound. | Growth comparison only; source unavailable. |
| 1117: Torsor/surface comparison | Identity Selmer class removed: Selmer size1 gives0 nonidentity torsors; size3 gives2 classes, not3. | Normalization control; source unavailable. |
| 1133: Projective cubic count | d0,a=b=0: cubic section dimension10, #P(V)=(q10−1)/(q−1). Zero polynomial excluded from projectivization. | Counting control; asymptotic unavailable. |
| 1150: Function-field mean headline | Identity contribution1 plus three expected nonidentity contributions gives4; characteristic3 excluded, characteristic2 not excluded by the stated range. | Source unavailable; no certification of bound. |
| 1169: Corank law | M=(Qp/Zp)⊕C_p² has corank1, while dim M[p]=3; finite C_p² has corank0. | Correct distinction of corank and finite dimension. |
| 1198: Smith hypothesis | E:x³−x has rational2-torsion dimension2 and roots products(−1,2,2); x(x−1)(x−4) has square4 and fails case3. | Discriminating examples. |
| 1225: Congruent-number hypothesis | E[2](Q) has O and three roots, cardinal4; root-difference products−1,2,2 are nonsquares. | Matches case3. |
| 1241: Finite-level ranks→corank | M=(Qp/Zp)^2⊕C_(p³): largest free ranks at levels1,2,3,4 are3,3,3,2, stabilizing at corank2. | Finite torsion is eventually removed. |
| 1256: High-corank tail | Prob(c≥2)=1−Prob(c0)−Prob(c1); limits1−1/2−1/2=0. | Exact partition. |
| 1272: Even congruent twists | Squarefree residues1,2,3 mod8 have total density1/2; on even-parity family excluded positive corank begins at2, whose density is0. | Parity bridges to corank0, not rank conjecture. |
| 1291: Selmer ratio | Identity map has kernel/cokernel sizes1/1, ratio1. Complex degree3 isogeny has1/3; reversing kernel and cokernel gives wrong3. | Correct direction. |
| 1321: Local Tamagawa formula | Good reduction, p≠3 gives1·1=1. Complex degree3 gives1/3. Formal multiplier3 over Q3 contributes\|3\|3^−1=3. | Inverse derivative correct. |
| 1336: Potential-good Tamagawa | Equal Tamagawa numbers give quotient1; at p≠3 the derivative is a unit and ratio1, while at3 derivative can contribute3. | Residue-characteristic qualification essential. |
| 1351: Ratio strata | A product of local ratios3,1/3,1 has exponent0; changing first factor to1 gives exponent−1. | Finite local data, not signless exponent. |
| 1368: Elliptic3-isogeny mean | Constant global ratio1 gives irreducible mean1, total Selmer mean2; ratio3 gives total4. | Identity orbit retained; conditional on C. |
| 1383: Cassels ratio | With Selmer sizes3 and1, kernel sizes3 and1, formula forces c=1; removing torsion factor would force3. | Correct torsion correction. |
| 1398: Factorization exactness | For φ1=id, first kernel quotient0 and Selψ=Selφ2; φ2=id gives Selψ=Selφ1. | Maps have proper source and target. |
| 1413: 3-Selmer parity | Sel3 dimension2 with rational3-torsion dimension1 gives reduced parity1; raw dimension parity0 differs. | Subtraction essential. |
| 1427: Finite twist exception | One exceptional class in growing slice of N classes contributes1/N→0; empty exceptional set contributes0. | No finite-denominator claim. |
| 1444: Odd torsion twists | p3 geometric nonzero torsion has8 points, bound8 classes; the trivial character can account for rational torsion, p2 sign twist is trivial and argument fails. | p odd essential. |
| 1463: Reduced rank bound | Sel_p dimension3, rational p-torsion dimension1 leaves bound2; corank2 attains it. Equal dimensions1−1 yield0. | Torsion subtraction correct. |
| 1478: Ratio-zero low rank | Nonnegative even reduced rank with mean≤1 gives P(rank≥2)≤1/2 and P(rank0)≥1/2. | Correct lower-density bound. |
| 1493: Ratio-one low rank | Odd rank with mean≤4/3 gives P(rank≥3)≤(4/3−1)/2=1/6; rank1≥5/6. | Correct5/6, not2/3. |
| 1507: Local subfamilies | Strata masses1/2 and1/2 inside full family give rank0≥1/4 and rank1≥5/12. | Denominator weighting correct. |
| 1525: CM good-reduction twists | O_K units order2,4,6 for generic,j1728,j0; a unit character of order3 cannot be killed by a quadratic character of order2. | Larger twist groups retained. |
| 1540: CM global ratio | F=K: finite3-part3 and complex factor1/3 give1; [F:K]=2 gives9·1/9=1. | General base-degree cancellation works. |
| 1555: CM corank headline | K=Q(√−3),F=K(√2): finite factor9, two complex factors1/9 give1, hence same conditional half-bound. Present statement excludes this F. | R03: retain arbitrary F containing K. |
| 1573: LC quadratic data | F2²,q=xy/2: polar matrix[[0,1/2],[1/2,0]] induces bijection of four-element groups. q=0 on same V has adjoint image size1, not4. | Stored topological equivalence excludes trivial model. |
| 1593: Weak metabolicity | F2 hyperbolic axis: size2=orthogonal size2,q0. Diagonal has q(1,1)=1/2. Zero subgroup orthogonal has size4. | Correct three conditions. |
| 1616: Maximal isotropics | Finite hyperbolic plane has2; zero group has1; real hyperbolic x-axis equals its annihilator but is not compact-open. | Carrier is not just weakly metabolic subgroups. |
| 1638: Common-parity law | Two marginals(1/2,1/2) give(1/2,0,0,1/2), total1; empty product mass1. Both δ0 marginals instead give total2. | Half-parity hypotheses essential. |
| 1662: Character duality | C4 generator evaluation χ_k↦k/4; dual and bidual each have4 elements. Character on2C4 with value1/2 extends with value1/4 at1. | R02: same evaluation already owned by VNA V11. |
| 1678: Restricted-product dual | One factor C2 with reference0 gives dualC2, cardinal2; empty product has1 character. Infinite nontrivial restrictions on compact ∏C2 fail finite-support continuity. | Correct dual reference subgroup. |
| 1697: LC reductions | Finite hyperbolic plane,X0: quotient size4 and2 isotropics; X=axis quotient size1 and1 isotropic. | Identity and maximal reduction consistent. |
| 1713: Canonical measure | Dyadic hyperbolic plane has masses1/2,1/2. q=(x²−y²)/4 on C2² has only diagonal isotropic: mass1; p q(e1)=1/2≠0 excludes it. | Value-group hypothesis necessary. |
| 1729: Random intersection | Finite n1 intersection dimensions0,1 each1/2, versus infinite model a0=0.20971122,a1=0.41942244. | Finite/infinite clauses necessary. |
| 1745: Quadratic restricted product | Two hyperbolic factors: q((1,1),(1,0))=1/2+0=1/2; a point supported wholly in references has q0. | Finite sum and zero references agree. |
| 1763: Flat local topology | L=F_p((t)), N=α_p: H1=L/L^p has nonzero class t; étale geometric α_p-points have cardinal1 and would lose it. | fppf required at characteristic p. |
| 1779: Integral flat references | α_p over F_p[[t]]: integral class t survives in L/L^p; class t^−1 is not integral. Reference is proper, not entire H1. | Integral/generic distinction retained. |
| 1795: Flat global duality | N=0 gives every H1 term0 and annihilator0; α_p retains the nonzero t class over F_p(t), unlike geometric-point cohomology0. | Correct coefficient category; full duality not finite-example proof. |
| 1814: Sha1 criteria | Constant C2 and trivial module: locally trivial characters have kernel0 by splitting at all Frobenii; S3 acting on F2² has Sylow2 order2 cyclic. | Criterion includes nonabelian automorphism group. |
| 1828: Theta/Selmer intersection | Cup invariant1/3 has negative2/3; at2 −1/2=1/2. Identity isogeny gives zero Selmer, zero Sha1 and intersection0. | Sign detectable at3, not only2. |
| 1848: Coefficient families | Over Q, height(1/2)=2; coefficients(0,0) have Δ0 and are excluded. In char2, short equation alone misses general models. | Height and nonsingularity controls. |
| 1868: Common-parity moments | Primes2,3: first moment(2+1)(3+1)=12=σ(6); second15·40=600. Empty product gives1. | Parity does not change these moments. |
| 1882: Squarefree Selmer conjecture | n6 ranks(0,1) have mass0, ranks(0,0) mass2a_2(0)a_3(0)≈0.134006; n1 separately singleton mass1. | Conjecture normalized, including excluded n1 boundary. |
| 1906: Jacobian conjecture | g1 odd-degree model has degree3 and predicted mean3 atp2; even-degree,odd n3 predicts mean4; genus0 excluded. | Family conditions retained. |
| 1930: Even-genus shift | g2,degree6: X=1+X_PR gives moments1,6,60,1080 versus unshifted1,3,15,135; g1 excluded. | Shift and even genus discriminate. |
| 1956: Oesterlé measure | Spec Z2 mass1; A1 mass1, point ambient mass0. Spec Z2[T]/T²: integral reduction image size1; all mod2^e solutions size2^floor(e/2). | Reduction images crucial. |
| 1972: Rank-stratum measure | n2,r2 intrinsic point mass1 vs ambient mass0; n2,r0 dimension1; determinant integral p2,s1 is(1/2)/(7/8)=4/7. | Squared determinant exponent verified. |
| 1989: Smooth cylinder measure | P1/Z2 total3/2; level2 has6 points, each probability1/6. Two copies total3, components probability1/2. | Haar mass and normalized probability distinguished. |
| 2005: Integral OGr | n0 point dimension0; n1 two points dimension0; n2,F2 count6 versus Gr count35; chart alternating2×2 has one free coordinate. | Includes characteristic2. |
| 2021: OGr components | n1 axes intersect in dimension0≠1 mod2, hence opposite; equal axes intersect dimension1, hence same. n0 has one even point, no odd point. | Boundary fixed. |
| 2035: OGr prime powers | p2,n2,e1…4 counts6,12,24,48; successive fibres2=p^(n(n−1)/2). n0 always1. | Equal. |
| 2052: Schubert stratum | n2,r2 dimension0, point; n2,r0 dimension1; n1,r0 one point, not both OGr1 points. | Parity-selected resolution required. |
| 2072: All-rank Delaunay | p2,r0,G0 mass0.41942244; r1,G0 mass0.83884488. C2 alone has no symplectic structure and contributes0. | Intrinsic rank law, not ambient conditioning. |
| 2086: Positive rank all primes | r1,p2 nontrivial probability0.16115512 versus leading2^−3=0.125; exponent−3 gives convergent prime sum. | Correct summable order. |
| 2100: Rankzero all primes | p2 nontrivial probability0.58057756≥1/2; at general p product≤1−1/p so nontrivial probability≥1/p. | Divergence excludes finite all-prime law. |
| 2114: Harmonic weights | N1,2,3,4 masses1,2/3,3/8,16/45; each between1/N and2/N. At L=N interval still has positive mass while log(N/L)=0. | +1 in bound necessary. |
| 2128: Sparse-prime limit | P empty,f1: both normalized averages1 and c_P sum1; f0 both0. P={2},f supported at0 yields predicted0.41942244. | Correct normalization; unbounded f needs L1. |
| 2144: Injection conjecture | q4: Inj(C4,C4)=2 but Inj(C4,C2²)=0 despite both orders4. m0 target1; m1 limiting target4. | Not a cardinality polynomial for e>1. |
| 2168: Bounded splitting | 2C4⊂C4: A/2A has2 elements but map to B/2B is zero, so hypothesis fails. C2⊂C2⊕C4 passes and has explicit projection. | Purity tests all divisors. |
| 2185: Kummer summand | n1: A(k)/A(k)=0,H1(A[1])=0, complement0. In characteristicp, α_p torsion must use fppf to retain class t. | Algebraic splitting, not continuity assertion. |
| 2202: Adelic summand | Finite two-place model (C2⊕C2)²: Kummer productC2² and complementary direct sumC2² have trivial intersection, orders4·4=16. | Correct product/direct-sum roles. |
| 2219: Global splitting conjecture | n1 global image0 in0 splits; a thin trivial-torsion-action family alone has no computed density1. | Remains a conjecture. |
| 2243: Trivial-action splitting | n2, full rational E[2] gives μ2²; scalar Kummer point1 is trivial in each quotient, nonsquare2 is detected atQ2. | All-divisor injection mechanism distinguishes local failure. |
| 2265: Abelian3-isogeny mean | Degree3 complex local kernel3,cokernel1 gives1/3 regardless of dimension. Global ratio1 gives mean2, not1. | C uses actual abelian Kummer images. |
| 2279: Endomorphism rank bound | Z² with ψ=diag(1,3): quotient order3, rank2, log3 index1; bound requires c≤1/2. ψ=[3] gives index9, log3=rank2. | Uniform comparison is explicit, not inferred from degree. |
| 2293: [3] rank bound | Z²⊕C3 modulo3 has order27≥9=3²; torsion increases quotient, never reduces bound. | c=1 valid. |
| 2308: Finite extension bound | A[3] over splitting field has order3^(2g), a full flag has2g degree3 factors; g1 gives2 factors and total degree9. | Height remains over the new field. |
| 2322: Explicit elliptic bound | m0,1,2 give\|m\|+3^−\|m\|=1,4/3,19/9; m=−1 also4/3. | Absolute exponent required. |
| 2336: Attainable ratios | p≠3 requested value1; overQ3 interval[1,3] permits1,3; over degree2 extension interval[1,9]. | Does not assert every twist attains1. |
| 2352: Universal local table | k1:t=26244,t+27=26271. Atx0 RHS16·26271=420336; (4√26271)²=420336, whereas(2√26271)²=105084. | Corrected kernel coordinate; k≥1 retained. |
| 2370: Signature applications | Totally real r2=0 permits m0; imaginary quadratic r2=1 permits local exponent offsets giving rank0 or1; degree4 totally imaginary falls outside those conclusions. | Signature conditions substantive. |
| 2387: Complex obstruction | r2=0 bound0; r2=2 bound2. Exceptional torsion correction−2 is offset by two extra powers: (r2+2)−2=r2. | Uniform twist claim retains exceptional case. |
| 2419: CM reciprocity | Principal idele2 sends lattice a to(1/2)a; t↦t/2 followed by ξ′(z)=ξ(2z) returns ξ(t); Artin is identity. | R01: missing supplier fixed by actual uniformization owner. |
| 2435: CM Hecke character | Principal idele2 over F=K: finite scalar2 times infinite factor1/2 givesψ=1; omitting infinity gives2. | Normalization and principal triviality agree. |
| 2451: CM unit character | Trivial inertia character gives inverse twist1; characterζ3 has inverseζ3², product1, while a quadratic sign cannot cancelζ3. | All roots-of-unity units retained. |
| 2466: CM ideal comparison | a=(2): O_K/a has4 elements, isogeny degree4 and differential multiplier2; a=(1) gives degree1, multiplier1. | Ideal norm differs from scalar2. |
| 21: Quartic conventions | x4−y4: I=−12,J0,27Δ=−6912=4I³, Δ=−256. E(A,B)=(−1,0): H_E4,H_IJ27,27H_E=4H_IJ=108. | Sign and height factor verified. |

## Not verifiable

- **de Jong, Counting elliptic surfaces over finite fields:** the author-hosted DVI is not extractable by the sources service; the corresponding author PDF returned 404 and the DOI landing page returned 403. Thus the exact geometric-height counts, surface comparison and average bound in §§5.9 (lines 1069–1166) remain uncertified. Their elementary normalization probes above are not a verification of those theorems. The failed legal-access attempts and requested locators are recorded in the job's missing-reference list.
- **van Kampen 1935, Theorem 2:** the DOI leads to JSTOR, and the sources service could not establish a readable legal copy. PR's use of the result was read; the original theorem was not. This does not remove R02, which rests on an independently read earlier roadmap owner.
- **Oesterlé, Théorème 2:** the sources service classified the publisher citation as paywalled/uncertified. BKLPR Proposition2.1 and Serre's analytic counting theorem were read, but the original reduction-limit proof was not. The Oesterlé locator is therefore uncertified, not silently verified through the secondary citation.
- **Prüfer, §17:** the original publisher citation was uncertified. Baer's legal scan, printed pp.274–275, was read and supports the bounded-exponent decomposition used in the roadmap.

The finite computations do not establish any arithmetic conjecture or replace a proof of an asymptotic theorem. No open work beyond the available index and provided/readable heads was presumed absent. No source files were copied into the repository, and no PR files were changed.

## Source issues

These are issues observed in the texts inspected, not additional findings against corrected roadmap statements. Source ids refer to the legal extractions used above.

- **Error** in EVW at Introduction, printed p.730, lines41–45: the source says the probability of class number indivisible by3 is one minus the Euler product, approximately0.440; it should be the Euler product, approximately0.560; affects a stated result.
- **Gap** in EVW at §8.5, printed p.774, lines1837–1839: the source says distribution convergence is equivalent to convergence of every surjection moment; it should be supplemented by uniform integrability for the distribution-to-moment direction; affects the proof.
- **Error** in PR at Proposition2.6(a), printed p.6, lines306–312: the source says the reduction fibre corresponds to all hyperplanes of W plus W; it should be hyperplanes not containing the chosen isotropic vector, plus W; affects the proof.
- **Misprint** in PR at Corollary2.12, printed p.8, line397: the source says separability makes the discrete quotient G/K finite; it should be countable; affects the proof.
- **Error** in PR at Theorem2.19(d–f), printed p.10, lines464–471: the source says the exponent condition pV=0 suffices for the stated quadratic probability law; it should be accompanied by pQ=0, which is additional at2; affects a stated result.
- **Error** in PR at Conjecture1.4(a), printed p.3, lines147–167: the source says the factor2^(ω(n)−1) applies to every positive squarefree n; it should be restricted to n>1, with mass1 at n=1; affects a stated result.
- **Error** in BKLPR at Proposition2.1(b) proof, printed p.5, lines220–226: the source says all Y(Z/p^e) points satisfy the smaller-dimensional analytic counting bound; it should be the reduction image of integral points; affects the proof.
- **Misprint** in BKLPR at Lemma3.6 proof, printed p.8, line352: the source says the second column begins with1 when the first column begins with0,1; it should be −1 in the off-diagonal entry; affects the proof.
- **Misprint** in BKLPR at Proposition5.4 proof, printed p.16, line743: the source says the second reduced summand is W/qZ; it should be W/qW; affects the proof.
- **Error** in BKLPR at §5.5 before Theorem5.10, printed p.20, lines992–996: the source says injection counts from free Z/q modules are polynomials in the target's cardinality; it should restrict this assertion to q=p, since C4 and C2² give different counts; affects a stated result.
- **Misprint** in BKLPR at Theorem5.10 proof, printed p.20, line1003: the source says the injectivity factors use q^(i−n); it should use p^(i−n), determined by the residue field; affects the proof.
- **Misprint** in BKLPR at Theorem5.10 proof, printed p.20, line1016: the source says the finite average includes a product of1+p^(−i); it should include the reciprocal product; affects the proof.
- **Error** in BKLPR at Corollary5.18, printed p.23: the source says the interval weight is uniformly O(log(n/ℓ)); it should be O(1+log(n/ℓ)), including a nonempty diagonal interval; affects a stated result.
- **Error** in BKLPR at Theorem5.16 proof, printed p.23, lines1186–1190: the source says the small-order contribution is at most ε(log n)/2; it should use the available upper bound, rather than the denominator's lower bound; affects the proof.
- **Gap** in BKLOS at Theorem2.2 proof, printed p.13, lines626–639: the source says the ring index alone bounds every Mordell–Weil module's quotient with coefficient e/t; it should justify that module comparison or impose an appropriate uniform rank-index hypothesis; affects the proof.
- **Misprint** in BKLOS at Example13.3, printed p.22, line1012: the source says the kernel point has second coordinate2√(t+27); it should be4√(t+27) for the displayed equation; affects a stated result.
- **Error** in BKLOS at Example13.3 and Proposition13.4 proof, printed pp.22–23, lines1010,1053: the source says the local assertions apply without a positive lower restriction on k; it should require k≥1 for the displayed square-at2 argument; affects the proof.
- **Misprint** in BKLOS at Proposition13.4 proof, printed p.23, lines1057–1060: the source says c(φ_s)=3^r₂ times the full local ratios above6; it should separate out the already-counted differential powers before multiplying the extra Tamagawa factors; affects the proof.
- **Misprint** in Rubin at Proposition5.3, printed p.15, line549: the source says the original E has maximal endomorphism order after constructing E′; it should say End_F(E′)=O_K; affects a stated result.

For the dyadic source issue, add to the infinite hyperbolic locally compact model the finite plane `C2²` with `q(x,y)=(x²−y²)/4`. Its vector `(1,1)` lies in every maximal quadratic-isotropic subgroup and in the fixed compact-open one. Consequently intersection dimension0 has probability0, whereas the asserted PR mass is0.20971122. The roadmap's additional `2q=0` condition excludes this plane. For the finite-level injection misprints, `q=4,n=m=1` gives two injections into a fixed axis and average1, while using q in the residue factor gives three injections. For the rank-index gap, a module supported on the eigenvalue1 factor of `Z[diag(1,3)]` has positive Z-rank and index1 under ψ; the ring quotient has order3 and rank2. These witnesses explain why the roadmap's corrections are substantive.
