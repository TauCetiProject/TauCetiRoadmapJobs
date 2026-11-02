# Review of ClassicalArithmeticCompletion (pull request #1409 at e68e65d)

**Verdict:** needs changes

12 findings: 7 P2 blockers and 5 P3 findings. The gate fails. No mathematical counterexample to a roadmap statement was established in the computed instances below. The finite-instance audit covers all 574 numbered targets; source-access and proof-verification limits are explicit below.
## R01 (P2) — The AdelicAlgebraicGroups prerequisite points upward

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:143.

**Claim:** Strong approximation (§4.2), SL₁(D) (§3.4), and the Artin-function interface AA.2.4 are consumed by the existing roadmap.

**Witness:** The dependency check reports `UPWARD: ClassicalArithmeticCompletion (on main) -> AdelicAlgebraicGroups (#29)`. The consumer exists on main; this supplier is absent there and is pending in the merge order.

**Repair:** Keep the existing roadmap as the base. Move the extension requiring this supplier into Part II after its suppliers, or cite an exact earlier owner supplying the same result. The first repair makes this edge forward instead of base-on-main→pending. Re-run the dependency check; do not edit the merge order to hide the edge.
## R02 (P2) — The AnalyticNumberTheoryPartI prerequisite points upward

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:281.

**Claim:** The continued zeta/Hecke functions, GRH predicates and explicit-formula inputs are prerequisites of §§5.1b, 5.1c and 5.16a.

**Witness:** The dependency check reports `UPWARD: ClassicalArithmeticCompletion (on main) -> AnalyticNumberTheoryPartI (#80)`. The consumer exists on main; this supplier is absent there and is pending in the merge order.

**Repair:** Keep the existing roadmap as the base. Move the extension requiring this supplier into Part II after its suppliers, or cite an exact earlier owner supplying the same result. The first repair makes this edge forward instead of base-on-main→pending. Re-run the dependency check; do not edit the merge order to hide the edge.
## R03 (P2) — The ArithmeticGaloisRepresentations prerequisite points upward

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:269.

**Claim:** Local constants and completed Artin equations (§2.7) supply the normalization work in §§7.13 and 7.30.

**Witness:** The dependency check reports `UPWARD: ClassicalArithmeticCompletion (on main) -> ArithmeticGaloisRepresentations (#40)`. The consumer exists on main; this supplier is absent there and is pending in the merge order.

**Repair:** Keep the existing roadmap as the base. Move the extension requiring this supplier into Part II after its suppliers, or cite an exact earlier owner supplying the same result. The first repair makes this edge forward instead of base-on-main→pending. Re-run the dependency check; do not edit the merge order to hide the edge.
## R04 (P2) — The AutomorphicLFunctionsAndLocalFactors prerequisite points upward

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:277.

**Claim:** AL.0–AL.1 supply the trace characters, measures and Tate factors used by §§7.13 and 7.30.

**Witness:** The dependency check reports `UPWARD: ClassicalArithmeticCompletion (on main) -> AutomorphicLFunctionsAndLocalFactors (#76)`. The consumer exists on main; this supplier is absent there and is pending in the merge order.

**Repair:** Keep the existing roadmap as the base. Move the extension requiring this supplier into Part II after its suppliers, or cite an exact earlier owner supplying the same result. The first repair makes this edge forward instead of base-on-main→pending. Re-run the dependency check; do not edit the merge order to hide the edge.
## R05 (P2) — The GeometryOfNumbersAndQuadraticArithmetic prerequisite points upward

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:147.

**Claim:** The analytic Jacobi triple product is imported from §4.3 and used in Layer 4.

**Witness:** The dependency check reports `UPWARD: ClassicalArithmeticCompletion (on main) -> GeometryOfNumbersAndQuadraticArithmetic (#64)`. The consumer exists on main; this supplier is absent there and is pending in the merge order.

**Repair:** Keep the existing roadmap as the base. Move the extension requiring this supplier into Part II after its suppliers, or cite an exact earlier owner supplying the same result. The first repair makes this edge forward instead of base-on-main→pending. Re-run the dependency check; do not edit the merge order to hide the edge.
## R06 (P2) — The IntegralHeckeAndGaloisDeterminants prerequisite points upward

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:139.

**Claim:** The characteristic-polynomial and Azumaya reduced-norm laws (§§0.5–0.6) supply the reduced-norm and arithmetic-order development.

**Witness:** The dependency check reports `UPWARD: ClassicalArithmeticCompletion (on main) -> IntegralHeckeAndGaloisDeterminants (#21)`. The consumer exists on main; this supplier is absent there and is pending in the merge order.

**Repair:** Keep the existing roadmap as the base. Move the extension requiring this supplier into Part II after its suppliers, or cite an exact earlier owner supplying the same result. The first repair makes this edge forward instead of base-on-main→pending. Re-run the dependency check; do not edit the merge order to hide the edge.
## R07 (P2) — State the omitted headline theorems on the available carriers

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/Suggested.lean:4; TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:6186, 13909, 14076, 14175, 14256, 14362, 16845.

**Claim:** The file calls itself representative and omits Capelli, explicit and asymptotic Dobrowolski, Smyth, the smallest-Pisot theorem, the Salem-field generator theorem and Hilbert–Speiser. The generic missing-carriers paragraph does not justify these omissions.

**Witness:** Seven added signatures elaborate: native polynomials state Capelli and the Mahler bounds; IsSalem and Subfield state the generator theorem; the existing NIB/tameness predicates state Hilbert–Speiser for number fields with an abelian Galois action.

**Repair:** Add these headline statements with sorry, at the README generality, and inventory the other end theorems in a single opening module docstring, consolidating the trailing module comment. Name each genuinely unavailable carrier individually. For Smyth and Siegel, the Mahler measure of X³−X−1 gives θ₀ on the existing polynomial carrier; no opaque constant is needed. Retain all promised conclusions of Hilbert–Speiser, not only a weaker surrogate. The signature probe succeeds; θ₀≈1.324717957, φ>θ₀, and Q(√5) has the normal integral generator (1+√5)/2, whereas Q(i) is wild at 2 and has none.
## R08 (P3) — Delete the two one-tactic acceptance-test declarations

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/Suggested.lean:262, 525.

**Claim:** The coordinate involution is an API calculation, and the group-element determinant statement is the specialization of its hypothesis to the determinant character. Neither is a deep acceptance target.

**Witness:** The involution closes with `simp [Function.Involutive, quadraticUnitAction, add_assoc, CharTwo.add_self_eq_zero]`. The determinant declaration already closes with one `exact hlinear` applied to the composite determinant character.

**Repair:** Delete them from Suggested.lean; keep the mathematics in the README. Both proof witnesses elaborate separately at the pins. For s=1, (1,0) maps to (−1,1) and back to (1,0); an S₃ 3-cycle has determinant 1 in the standard representation.
## R09 (P3) — Remove definitions unused by any headline statement

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/Suggested.lean:55, 77, 170, 208, 213, 224, 230, 421, 452, 518.

**Claim:** Ten definitions remain as an API catalogue despite being unused by a retained headline: IsPrimaryGaussian, lucasV, IsIntegerValued, markoffHurwitzSet, markoffHurwitzMove, NumericalSemigroup, aperySet, RealSchurSeries, shiftedHankelDet and StableEquivalent.

**Witness:** Reading all 68 declaration signatures shows no headline consumes any of these ten definitions. Their computed examples below test the definitions, not an end theorem stated in this file.

**Repair:** Delete these unused definitions from Suggested.lean, retaining their README targets and Checks. If a missing genuine headline needs one, retain it only together with that headline. The dependency check within the file finds no theorem signature that deletion would leave unresolved.
## R10 (P3) — Write undeclared API entries as prose

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:787, 3475, 6334, 8544.

**Claim:** API bullets advertise local Lean names which Suggested.lean does not declare, contrary to the README/Lean name contract.

**Witness:** Examples are archNormResidueSymbol, dvrVOrdering and AddSubmonoid.IsSymmetricNumerical. The rational-series predicate actually declared is Sequences.IsRational, not PowerSeries.IsRational.

**Repair:** Replace undeclared API names with mathematical prose throughout the README; use the actual qualified name for retained headline definitions. Do not inflate Suggested.lean into the missing API catalogue. In the examples named here this removes three nonexistent declaration claims and makes the rationality citation resolve to its existing signature.
## R11 (P3) — Remove the 713 forbidden HTML anchors

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:29, 61, 306 and subsequent anchor lines.

**Claim:** The residue rule fails on 713 explicit HTML anchor tags.

**Witness:** The gate reports `residue=713`; a direct count of `<a id=` in the README is also 713. The first is the monogenic-prime-factorisation-input anchor at line 29.

**Repair:** Delete the HTML anchors and update internal links to the Markdown heading fragments. For example, the heading at line 31 already generates monogenic-prime-factorisation-input, so the explicit tag adds nothing. Check links after converting the numbered layer targets; re-run the gate.
## R12 (P3) — Update moved supplier paths and heading fragments

**Location:** TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:131, 201, 209, 239.

**Claim:** Supplier hyperlinks for HeightsAndUnits and LocalFieldsRamification use their former TauCetiRoadmap directories. CharacterTheory Layer 3 also uses an obsolete heading fragment.

**Witness:** Main places HeightsAndUnits and LocalFieldsRamification under Completed. CharacterTheory README:397 now heads Layer 3 “the character table, multiplicities, and tensor generation”; the cited idempotents/completeness heading is absent. The supplied mathematical content still exists.

**Repair:** Change these links, including repeated Needs links, to the Completed paths; update the CharacterTheory fragment to layer-3-the-character-table-multiplicities-and-tensor-generation. HeightsAndUnits Layer 1 starts at line 205; LocalFieldsRamification Layers 2 and 3 at lines 576 and 724. This is a broken locator, not an unowned prerequisite.
## Verified sound

**Build, form and scope of the checks.** The head matches e68e65d8b6d42a15cf9b26d96b0c7e0d0b72f766. The PR diff outside this folder is empty. No repository file was changed. The worker's targeted build passes; direct `lake env lean` elaboration also exits successfully, with only sorry warnings. The file has 596 lines, one Mathlib import, real definition bodies, no set_option and no admitted examples. A scratch copy checks all 68 elaborated declarations against the README: no dropped section binder was found. The seven additional headline-signature probes elaborate, with Dobrowolski tested on arbitrary primitive positive-leading-coefficient polynomials, not only monic ones; this demonstrates statability, not truth by compilation. One-tactic probes were attempted for all admitted theorems; only the successful padding witnesses are used for R08. Failed probes are not evidence of depth.

The 15 seeded source targets were read at their locators using 19 legally fetched works. Additional marked proof inputs were identified and checked as recorded below. The source table below distinguishes a source theorem from a derivation or generalization supplied by this roadmap. Computations use integer/rational arithmetic except decimal root and logarithm approximations, which are labelled. A finite collection of examples does not prove a universal theorem.

The shape scan found 580 Needs lines, eight layer Examples/Dependencies pairs, and 136 labelled API blocks, each with at least three Check bullets. These are structural counts, not a claim that every Check has been independently verified.

**Gate and dependency check.** Every nonzero gate category is covered by a finding: six dependency problems (R01–R06) and 713 residue hits (R11). All other categories, including build, stray-files and outside-folder, are zero. The dependency command was run with the supplied order and main content, and produced:

```text
UPWARD: ClassicalArithmeticCompletion (on main) -> AdelicAlgebraicGroups (#29) at README lines [19, 21, 27, 143, 261, 273]
UPWARD: ClassicalArithmeticCompletion (on main) -> AnalyticNumberTheoryPartI (#80) at README lines [23, 281, 11197, 11234, 11869, 12117]
UPWARD: ClassicalArithmeticCompletion (on main) -> ArithmeticGaloisRepresentations (#40) at README lines [19, 269, 14945, 15382, 15384, 15404]
UPWARD: ClassicalArithmeticCompletion (on main) -> AutomorphicLFunctionsAndLocalFactors (#76) at README lines [19, 277, 14945, 15404]
UPWARD: ClassicalArithmeticCompletion (on main) -> GeometryOfNumbersAndQuadraticArithmetic (#64) at README lines [21, 147, 8816, 10964]
UPWARD: ClassicalArithmeticCompletion (on main) -> IntegralHeckeAndGaloisDeterminants (#21) at README lines [21, 27, 87, 139, 14855, 17681]
depcheck: 205 roadmaps, 1511 edges, 6 problem(s)
```

The numbers in parentheses are merge-order positions, not pull-request citations. No CYCLE line was reported. This existing roadmap's presence on main is material: the check does not classify it as a new movable roadmap awaiting insertion.

**Pinned-library and ownership checks.** Object searches used the pinned Mathlib and Tau Ceti, the main roadmap checkout and the available open-roadmap search. The following declarations/definitions were opened, with their restrictions retained:

| Pin-relative file and line | Actual input and ownership consequence |
|---|---|
| Mathlib/NumberTheory/NumberField/Units/Regulator.lean:361 | `regOfFamily_div_regulator` identifies the regulator ratio with the subgroup index. The completeness statement also needs maximal rank and its strict interval margin. |
| Mathlib/Analysis/Polynomial/MahlerMeasure.lean:223 | Polynomial Mahler measure is leading-coefficient norm times the product of max(1, root norm). It supplies a native carrier for R07. |
| Mathlib/Algebra/Module/Lattice.lean:67 | `IsLattice` requires finite generation and full span; it does not impose topological discreteness. |
| Mathlib/RingTheory/IsGaloisGroup/Defs.lean:50 | `IsGaloisGroup` includes faithful action, commutation with the base map and invariant descent. It does not itself assert module finiteness, étaleness or a finite group; the relevant theorem binders supply finiteness. |
| Mathlib/GroupTheory/SpecificGroups/Cyclic.lean:725, 737 | Power-map range/kernel cardinality results supply the cyclic-group counts. They are not a replacement for all the finite-field and zero-exponent comparisons. |
| TauCeti/LinearAlgebra/Matrix/SmithNormalForm.lean:750 | `Matrix.exists_smith_normal_form_of_det_ne_zero` requires a square matrix and nonzero determinant. The rectangular/singular target here is a genuine extension. |
| TauCeti/LinearAlgebra/Matrix/SmithNormalForm.lean:843 | `Matrix.smith_normal_form_unique` compares square nonnegative chained diagonals, including singular ones. The README properly treats this as input. |
| TauCeti/NumberTheory/LocalField/RamificationIndex.lean:499 | `isTamelyRamified_tower_iff` is for nonarchimedean local fields. It does not subsume the finite integral Dedekind-domain tower, with residue separability, in Suggested.lean. |

Cross-roadmap resolution located 29 distinct linked supplier contracts: 26 destination files at the indicated main locations and three links needing the Completed relocation in R12; CharacterTheory Layer 3 additionally has a stale fragment. Examples whose content was read include DiophantineApproximationAndTranscendence §0.2 (README:227, scalar height/Mahler comparison), §2.4 (1085, recurrence closed-form existence), §2.8 (1844, relative Siegel estimate); ClassFieldTheory Layers 10–11 (1552, 1683, global carriers and reciprocity), 13–14 (1799, 1872, norm/class-field and Hilbert reciprocity); Completed/NumberFieldArithmetic Layers 1, 4, 5 (487, 1086, 1290); and the completed suppliers in R12. Heights and recurrence uniqueness here use these earlier interfaces rather than constructing a second height or recurrence carrier.

The open ComputationalNumberTheory roadmap's §§3.22–3.25 own generic p-saturation; its README:92 consumes this roadmap's intrinsic arithmetic comparisons. This roadmap's residue-character criteria concern units and principal ideal relations and are not a second generic saturation construction. Searches by Smith form, integer-valued polynomials, numerical semigroups, Markoff moves, Mahler measure, normal integral bases and determinant descent found no additional fully qualified declaration collision with another available folder. Main already contains ClassicalArithmeticCompletion; revisions of that folder were not treated as new independent owners. Supplier-order failures remain failures even when the proposed supplier has the desired content.

**Headline inventory.** The summary promises higher reciprocity; Christol and Cobham; irreducibility and Diophantine classifications; class-number/regulator completeness; Smyth–Dobrowolski–Dimitrov; and Fröhlich–Taylor. The body additionally reaches Ward strong divisibility, rectangular Smith/cokernel comparisons, Legendre's three squares, Ramanujan–Nagell, smallest Pisot, Dubinin and Bertrandias, local Noether, Hilbert–Speiser and tame determinant descent. Christol/Cobham, Ward, rectangular Smith, Perron, Markoff descent, three squares, Egyptian expansion, Ramanujan–Nagell, negative Pell, the completeness and saturation statements, Dimitrov's bound, Dubinin, Bertrandias, local Noether and determinant descent have signatures. R07 identifies seven statable omissions. The docstring identifies unavailable continued-L-function carriers for the GRH endpoints and character-idele/root-number-class constructions for the Fröhlich–Taylor endpoint. Those missing constructions should not be replaced by free predicates. Capelli (§3.29), the Salem-field generator (§6.66) and asymptotic Dobrowolski (§6.77) are further statable endpoints.

**Seeded source and adversarial table (15 targets).** A pass here means the recorded instance and locator agree, not that every proof obligation has been discharged. All rows have result “no roadmap correction from this test” unless otherwise stated.

| Target | Source locator read | Instances and computed values on both sides | Result/change |
|---|---|---|---|
| 1.15 Archimedean symbol | milne-cft-2020 lines 11422–11425, VIII §5 after Thm 5.11, p.248; fesenko-vostokov-2002 line 6650, IV §5 Ex.4, p.152 | Over R, (−1,−1)=−1, (−1,1)=1, (2,−3)=1; over C the symbol is 1. “At least one positive” gives 1 for the latter two real pairs; “both positive” does not. | Roadmap uses the correct disjunction; source error below. |
| 1.43 Tame degree-n symbol | shastri-reciprocity-2000 lines 153–165, 203–223, §6, p.180; milne-cft-2020 lines 5111–5119, 5140–5156, III §4, pp.113–114 | q=7,n=3,u=2: (π,u)=2²=4; the inverse convention gives 2. At p=2,n=2 the tame hypothesis fails; (−1,−1)₂=−1. | Arithmetic-Artin-first convention agrees with Shastri; Milne's argument order is opposite. |
| 2.26 Rational series | stanley-ec1 lines 24813–24829, §4.1/Thm 4.1.1, p.535 | f=1/(1−X), Q=1−X: fQ=1. f=X²,Q=1: fQ=X² despite numerator degree 2. Native total inverse of f=X is 0, which is rational. | No numerator-degree restriction in the definition; the later recurrence theorem has extra degree hypotheses. |
| 2.43 EDS local strong divisibility | bhakta-loughran-rydin-myerson-nakahara-2023 lines 401–412, Lemmas 3.4–3.5, p.9; streng-mthesis-2006 lines 1560–1578, IV §3 Lemma 3.1, p.38; stange-valuations-2014 lines 589–600, proof Thm 14, p.13 | (b,c,d)=(1,−1,1): W₅=2,W₁₀=−4; zero indices mod 2 in 1..40 are 5Z, mod 4 are 10Z. For (3,2,5), W₄=15,W₅=397,W₈=−2319495; mod 5 zeros are 4Z, mod 25 are 20Z. In each example 441 valuation/gcd pairs had zero discrepancies. | Includes p=2 when p does not divide W₂W₃. Stange's minimal-model proof alone is not the general statement; the README's earlier model comparisons are needed. |
| 2.49 sec+tan | stanley-ec1 lines 2528–2538, Prop.1.6.1, p.54; nist-dlmf-2026 lines 103–107, 167–171, 4.19.3/4.19.5 | E₀..E₆=1,1,1,2,5,16,61. At z=0 both sides=1. At +π/2 numerator 1+sin z=2 and denominator cos z=0; convergence radius cannot exceed π/2. | Open-disc hypothesis is necessary. |
| 3.34 DVR ordering | cahen-chabert-intvalued-2016 lines 1255–1289, §6 eqs.(13)–(14), pp.331–332; chabert-regularbases-survey lines 253–267, Prop.10/Ex.1, p.7 | Z_(2): aₙ=n. In Z[i] at π=1+i with representatives 0,1: a₂=π,a₄=π²=2i and v(a₄−a₀)=2. For residue cardinality 9, the incorrect aₙ=n gives v₃(3!)=1, whereas w₉(3)=0. | General DVR digits, not rational-prime digits; source typo below. |
| 3.62 Factorial/Π ideals | leriche-polya-2011 lines 204–224, Prop.2.2, p.239; chabert-regularbases-survey lines 516–521, §5.4, p.13 | Over Z, q=4 has Π₄=1 and (4!/3!)/2²=1; q=5 gives 5!/4!=5. Over Z[i], the norm-2 prime gives Π₂=(1+i). | Number-field source plus the README's valuation argument supports the Dedekind formulation; no assertion that Leriche alone states all that generality. |
| 4.1 Integer systems | stein-ant lines 341–380, §2.1 after Cor.2.1.4 and Prop.2.1.5, pp.16–17 | A=(6,10), b=4: x=(−1+5t,1−3t) yields 4; kernel vector (5,−3) yields 0. b=3 fails 2 dividing b. Zero matrix: b=0 admits all x; b≠0 none. | Image condition and affine-kernel parametrization distinguish solvable and insoluble cases. |
| 4.4 Three-square obstruction | sun-three-squares-2017 lines 19–27, §1, p.1 | Sums of three squares mod 8 give {0,1,2,3,4,5,6}. Values 7,15,23,28,60 have no representation; 12=2²+2²+2²; 0=0²+0²+0². | Scaling obstruction and zero case agree. |
| 4.32 Symmetric semigroups | assi-garcia-sanchez-numerical-semigroups-2014 lines 495–497, 533–545, definition after Thm 40 and Prop.43(i), pp.11–12 | <3,5>: gaps {1,2,4,7}, F=7, 2g=8=F+1. <3,4,5>: gaps {1,2}, F=2, 2g=4≠3. <5,7,9>: g=8,F=13,16≠14. N has F=−1 and is symmetric. | Tests both directions and the exceptional Frobenius convention. |
| 4.75 Points on V_k | ghosh-sarnak-2022-v3 lines 833–852, Lemma 6.2/Cor.6.3, p.19 | e=2,f=1/2: for k=0, point (34/9,5/2,61/18) has M=0; k=4, (2,5/2,5/2) has M=4; k=−2, (14/3,5/2,23/6) has M=−2. | Formula verifies over Q; its cleared identity extends to rings with 2 and 3 invertible. |
| 4.87 Negative-level descent | ghosh-sarnak-2022-v3 lines 397–410, Lemma 2.2, p.10 | k=−2: fundamental point (3,3,4), M=−2, and 4≤(2+9)/2=5.5. k=−4: the stated bounded fundamental region has no integer point. | The README's stronger x₃ bound follows from x₃≤x₁x₂/2≤x₂²/2, not the source's weaker displayed bound alone. |
| 5.9 Determinant enclosure | biasse-fieker-classgroup-2014 lines 766–774, Lemma 4.4, p.400 | 4×4 Hadamard H with det H=16 and B=1; H'=1.5H, δ=1/2: det H'=81, error=65. Source bound=64, false. README bound=4!·4·(1/2)·(1.5)³=162≥65. r=0: error=0. | Roadmap correctly avoids the source's false bound. |
| 5.25 Quadratic unit action | koymans-pagano-2022-v1 lines 100–104, remark after Thm 1.1, p.3 | τ₁(1,0)=(−1,1), τ₀(1,0)=(−1,0); τₛ²(1,0)=(1,0). Norms: 1+√2 has −1, 2+√3 has +1, (1+√5)/2 has −1 and its cube is 2+√5. | Source's negative-Pell case is extended by the explicit coordinate derivation; R08 concerns padding, not falsity. |
| 6.48 Plastic number | smyth-mahler-survey-2008 lines 267–275, §5.1 eq.(15), p.328; smyth-salem-survey-2015 lines 232–236, §3.1, p.7 | p(1.3247)=−0.000076579777; p(1.3248)=0.000349908992. θ₀≈1.324717957; other root moduli≈0.868836962<1; φ≈1.618033989>θ₀. | Polynomial/root normalization agrees; the global minimum is separately §6.73 and missing from Lean (R07). |

**Acceptance signatures and further adversarial instances.** The next table has one row for each of the 68 declarations. Bare names refer to Suggested.lean in this folder. “Pass” means only the recorded calculation survives; “delete” refers to R08/R09, not a mathematical contradiction.

| Declaration (line) | Instances and computed values | Result/change |
|---|---|---|
| int_exists_modEq_and_modEq_iff (24) | m=6,n=10,a=4,b=8: x=28 gives residues 4,8; gcd=2 gives 4≡8. a=0,b=1 gives no x and 0≢1 mod 2. m=0,n=3,a=7,b=1: x=7 on both sides. | Pass |
| range_powMonoidHom_eq_ker (34) | Additive C₆,d=4: image={0,2,4}=ker(×3). d=0: image={0}=ker(×1). Trivial group: both singleton. | Pass |
| exists_pow_eq_iff_pow_eq_one (41) | F₇,n=3: a=2 gives no root and a²=4≠1; a=6 has roots 3,5,6 and a²=1. F₂,n=0,a=1: root 1 and criterion 1=1. | Pass |
| card_nonzero_pow_roots (48) | F₇,n=3,a=1: roots {1,2,4}, cardinal 3=gcd(6,3). F₃,n=0,a=1: two nonzero roots=gcd(2,0)=2. | Pass |
| IsPrimaryGaussian (55) | z=1: z−1=0 divisible by (1+i)³. z=0: norm(z−1)=1 is not divisible by norm((1+i)³)=8. | Delete unused definition (R09) |
| IsRational (65) | f=1/(1−X),Q=1−X gives P=1; f=X²,Q=1 gives P=X². Over F₂, f=X+X²+X⁴+X⁸+… has zero runs of lengths 1,3,7,… between nonzero coefficients; no eventual fixed recurrence, hence not rational. | Pass; API naming R10 |
| lucasU (70) | P=1,Q=−1 gives 0,1,1,2,3,5,8. P=2,Q=1 gives Uₙ=n, including repeated root and U₀=0. | Pass |
| lucasV (77) | P=1,Q=−1 gives 2,1,3,4,7; first term 2 distinguishes U₀=0. | Delete unused definition (R09) |
| gcd_lucasU (83) | Fibonacci: gcd(U₆,U₉)=gcd(8,34)=2=U₃; m=0,n=6 gives gcd(0,8)=8=abs(U₆). P=2,Q=1 gives gcd(m,n) on both sides. | Pass |
| DFAO (90) | States N, step(s,d)=2s+d,start=0,output=id: word [1,0] ends at 2; reverse-order interpretation ends at 1. Infinite states are allowed here, not by automaticity. | Pass |
| DFAO.eval (99) | Same machine: []→0, [1]→1, [1,0]→2. Right-fold/reversed digits would give 1 for the last word. | Pass |
| IsAutomatic (104) | Constant sequence 0 has one state and output 0 on all words; parity has a finite least-digit-reading machine. f(n)=n has infinitely many outputs and cannot have finite states. | Pass |
| kernel (110) | Parity sequence: 2-kernel={parity,0,1}, size 3; 3-kernel={parity,1−parity}, size 2. Constant zero: kernel={0}, size 1. | Pass |
| isAutomatic_iff_finite_kernel (114) | Parity in base 2: finite automaton and 3-element kernel; constant in base 3: one state and one kernel element. f(n)=n: subsequences 2^e n have distinct slopes, infinite kernel and no finite-output machine. | Pass |
| christol (119) | Over F₂ parity has series X/(1−X²); (1−X²)f−X=0, so algebraic=true and 2-automatic=true. Zero series has polynomial relation Y=0 and one-state automaton. | Pass |
| cobham (125) | Parity in bases 2,3: finite kernels 3 and 2, period 2 from N=0. Constant zero has period 1. Bases 2,4 are excluded because 2²=4¹. | Pass |
| ward_strong_divisibility (133) | 40 choices b,c,d∈{−2,−1,1,2} with gcd(c,db)=1; all 121 pairs 0≤m,n≤10 per choice satisfy abs(W_gcd)=gcd(W_m,W_n). For (1,−1,1), gcd(W₅,W₁₀)=gcd(2,−4)=2=abs(W₅). | Pass on 4,840 pairs |
| smithDiag (146) | m=1,n=2,r=1,d₀=2 gives [2,0]; r=0 gives the zero matrix. | Pass |
| exists_smith_normal_form_rectangular (150) | A=[6,10], Q=[[2,5],[−1,−3]]: det Q=−1 and AQ=[2,0]. A=0 of size 2×3: r=0 and zero diagonal. | Pass; square library input is narrower |
| nonempty_cokernel_equiv_of_smith (160) | A=[6,10]: image=2Z, cokernel=Z/2. Zero 2×3 matrix: image=0, cokernel=Z², matching two free summands. | Pass |
| IsIntegerValued (170) | X(X−1)/2 at 0,1,2 gives 0,0,1 in Z; X/2 at 1 gives 1/2 outside Z. | Delete unused definition (R09) |
| perron_irreducible_of_le (175) | X²−3X+1: coefficient bound 2≤3, f(1)=−1,f(−1)=5, irreducible. (X−1)²: bound 2≤2 but f(1)=0, so excluded. | Pass |
| markoffSet (190) | (1,1,1): sum of squares 3=3xyz; (3,3,3): sum 27≠3xyz=81, distinguishing coefficient-1 Markoff convention. | Pass |
| markoffVieta (195) | At (1,1,2), third mutation is 3·1·1−2=1, giving (1,1,1). Apply again: 3−1=2, restoring the original. | Pass |
| markoff_descent (199) | (1,1,2): sum 4→3, all coordinates positive. Base (1,1,1): mutation sum 3→4; base is excluded. | Pass |
| markoffHurwitzSet (208) | n=0: empty sum 0, empty product 1, so a=1,k=−1 satisfies 0=0; a=1,k=0 fails 0=1. | Delete unused definition (R09) |
| markoffHurwitzMove (213) | n=1,a=3: x↦3−x; at k=0 roots 0,3 are exchanged and both satisfy x²=3x. | Delete unused definition (R09) |
| legendre_three_square (218) | n=0 has (0,0,0), not 4^a(8b+7). n=7,28 fail representation and have forbidden forms; n=12=(2,2,2) succeeds and is not forbidden. | Pass |
| NumericalSemigroup (224) | N has empty complement (finite); 2N has all odd numbers in its complement (infinite), so is rejected. | Delete unused definition (R09) |
| aperySet (230) | S=<3,5>,n=3: Apéry={0,5,10}. n=0: empty. The 0 term distinguishes the intended boundary treatment from blind natural subtraction. | Delete unused definition (R09) |
| IsEgyptianExpansion (236) | D={2,3}: sum=1/2+1/3=5/6, positive denominators true. Empty D has sum 0; D containing 0 fails positivity even with total inverse 0. | Pass |
| exists_egyptianExpansion (240) | r=5/6: D={2,3}. r=2: D={1,2,3,6} has sum 2. r=0 is excluded by hr. | Pass |
| ramanujan_nagell (245) | x=1,3,5,11,181 give x²+7=8,16,32,128,32768=2³,2⁴,2⁵,2⁷,2¹⁵. x=0,n=0 gives 7≠1. Negative x have the same squares. | Pass on listed solutions and control |
| quadraticUnitAction (258) | s=0,(1,0)↦(−1,0); s=1,(1,0)↦(−1,1). At (2,1), both give (−2,1) because 2=0 in F₂. | Pass |
| quadraticUnitAction_involutive (262) | For s=1, (1,0)↦(−1,1)↦(1,0); for either s, (2,1)↦(−2,1)↦(2,1). | Delete padding (R08) |
| negativePell_iff_norm_neg_one (267) | d=2: (1,1) gives −1 and N(1+√2)=−1. d=3: x²−3y²=−1 fails mod 3 and fundamental unit norm is +1. d=5: cube of (1+√5)/2 is 2+√5, norm −1. | Pass |
| relations_units_complete_of_intervals (278) | K=Q,N=0: det(empty)=1,R=Rhat=1,a=1,ε=η=0; margin 1<2, indices=1. With A=[2] and φ=0, margin would be 2<2, false; conclusion would incorrectly assert determinant 2=class number 1. | Pass; strict margin matters |
| IsFactorBaseBound (304) | Q,T<2: generated subgroup has order 1=class number. Q(√−14),T=1.5: subgroup order 1≠4; T=2: order 2≠4; T=3: order 4=4. | Pass |
| isFactorBaseBound_minkowski (309) | Bounds: Q gives 1, Q(i) gives 4/π≈1.27324 (both class number 1); Q(√−14) gives (2/π)√56≈4.76403, including the generators of norm 2 and 3. | Pass |
| PowerResidueIndependent (320) | p=2,P=(3),v=−1 over Q: tests (−1)^e=1 iff e even, exactly 2 dividing e. v=1 gives test 1 for e=1 but 2 does not divide 1, so independence fails. | Pass |
| isMaxRank_and_not_dvd_index_of_powerResidueIndependent (326) | K=Q,rank=0,p=3: empty family, torsion order 2; maximal rank 0 and index 1, 3 does not divide 1. For a square of a rank-one fundamental unit at p=2, all residue square tests are 1 and independence fails. | Pass |
| isMaxRank_and_not_dvd_index_of_powerResidueIndependent_torsion (336) | K=Q,p=2,P=(3),ζ=−1: augmented test detects parity, free rank 0, closure with torsion is all units, index 1. Replacing ζ by 1 gives undetected e=1. | Pass |
| dvd_of_isPrincipal_prod_pow_of_powerResidueIndependent (346) | README Q(√−14) example has mod-2 character matrix [[1,0],[0,1]], determinant 1; squaring its principal generator makes that column zero, determinant 0, excluding the falsely enlarged relation order. | Pass on the stated character test |
| classNumber_eq_prod_of_saturated (360) | Trivial class group, N=0: h=1=empty product. Cyclic class group C₄ with order 4: product=4. Claimed order 8 fails p=2 saturation at e=4: 8 divides 2e but not e. | Pass |
| classNumber_mul_regulator_bounds_of_abs_log_residue_sub_le (371) | Q: residue=1, log=0,S=ε=0,w=2,disc=1,r₁=1,r₂=0; prefactor=1 and bounds 1≤hR=1≤1. | Pass |
| IsPisot (391) | 2 is degree-one integral with no other conjugates, true. 1 fails >1. √2 fails because its other conjugate has modulus √2>1. φ succeeds since other conjugate has modulus (√5−1)/2<1. | Pass |
| IsSalem (397) | Root τ>1 of X⁴−3X³+3X²−3X+1: conjugates τ,1/τ and a unit-circle pair, true. 2 and φ have no unit-circle conjugate and fail. | Pass |
| IsSalem.pow (403) | For that τ, τ²>1, inverse τ⁻²<1 and the squared nonreal pair still has modulus 1. n=0 gives 1, rejected by >1 and explicitly excluded. | Pass |
| IsPisot.pow (408) | 2²=4 remains degree-one Pisot; φ²≈2.61803 has other conjugate≈0.381966. n=0 gives 1, excluded. | Pass |
| schinzel_zassenhaus (413) | Degree 1, P=X−2: house 2≥2^(1/4)≈1.189207. Degree 2, P=X²−X−1: house φ≈1.618034≥2^(1/8)≈1.090508. X−1 is cyclotomic and excluded. | Pass |
| RealSchurSeries (421) | Constant coefficients e₀=1/2,eⱼ=0 for j>0: f=1/2, norm 1/2≤1. e₀=2 violates 2≤1. | Delete unused definition (R09) |
| finiteFeketeDiameter (428) | n=0,1: defined value 0. K={−1,1},n=2: pair distance 2; n=3: every triple repeats, product 0. | Pass |
| transfiniteDiameter (436) | K={−1,1}: sequence starts 2,0,0,…, infimum 0. Unit disc has transfinite diameter 1 whereas its two-point diameter is 2. | Pass |
| radialHedgehog (441) | No endpoints: empty union. Endpoint 0: {0}. Endpoint 1: [0,1]; endpoints 1,−1: [−1,1]. | Pass |
| dubinin_hedgehog_bound (445) | One unit spike: diameter 1/4=4^(−1). Two opposite unit spikes: diameter 1/2=4^(−1/2). Repeated endpoint 1 twice: diameter 1/4≤1/2. | Pass; multiplicities allowed |
| shiftedHankelDet (452) | aⱼ=j+1: n=0 gives 1; n=1 gives a₁=2; n=2 gives det[[2,3],[3,4]]=−1. Unshifted n=1 would give 1. | Delete unused definition (R09) |
| ExteriorLaurentContinuation (456) | K={2},G(z)=1/(z−2),a₀=0,aⱼ=2^(j−1): at z=4 sum=1/2=G(4). Replacing G by 0 fails equality 1/2=0. | Pass; germ is constrained |
| bertrandias_rationality (462) | Same integral sequence: transfinite diameter {2}=0<1; f=X/(1−2X), so (1−2X)f=X and Q(0)=1. | Pass |
| IsNIBGenerator (476) | Trivial G,A=B=Q: α=1 has independent singleton spanning Q; α=0 has dependent singleton spanning 0. | Pass |
| HasNIB (482) | Identity Z→Z, trivial G: α=1 is a basis; in Q(i), conjugates of a+bi have determinant −2ab in basis 1,i, never ±1. | Pass |
| IsTamelyRamifiedAt (487) | Identity at (3): separable F₃/F₃ and e=1, 3 does not divide 1. Z→Z[i] at 2: e=2, 2 divides 2, false. Purely inseparable residue extension with e=1 fails separability. | Pass |
| IsTamelyRamified (493) | Identity Z→Z: all e=1, true. Z→Z[i]: prime over 2 fails, so false despite all odd primes being tame. | Pass; no good-primes shortcut |
| isTamelyRamified_trans_iff (497) | Identity tower: e=1=1·1, true iff true∧true. Z→Z→Z[i]: at 2 total e=2=1·2; both sides false. | Pass |
| local_noether (508) | Unramified quadratic Q₂ extension: residue F₄ basis {ω,ω²} has determinant 1 over F₂, lifts to an integral normal basis, e=1. Q₂(i): determinant −2ab is never a 2-adic unit and e=2 is wild. | Pass |
| StableEquivalent (518) | Z and Z with n=0 give ranks 1=1. Z and Z² cannot become equal after adding the same n: 1+n≠2+n. | Delete unused definition (R09) |
| groupElement_determinant_eq_one_of_linear_characters (525) | S₃ 3-cycle: all linear characters take value 1, standard determinant 1. A transposition has sign −1 and fails the hypothesis. Q₈ central −1 has standard two-dimensional determinant 1. | Delete padding (R08) |
| groupRingDeterminant (534) | Trivial G, scalar 2, dimension 1: determinant 2. Dimension 0: determinant 1. S₃ 3-cycle in standard representation: determinant 1. | Pass |
| tameInertia_determinant_descent (542) | R=S, u=1: v=1, every representation determinant 1=1. Tame quadratic Z₃ extension, trivial G, invariant scalar u=2: v=2 gives determinants 2^n=2^n for every n; n=0 gives 1. | Pass on these instances only |

**Additional headline/finding witnesses.** These supplement, rather than replace, the 68 signature rows.

| Target | Instances and computed values | Result/change |
|---|---|---|
| Higher reciprocity | Over Q for (−1,−1), local quadratic symbols are −1 at 2 and infinity and +1 elsewhere; product (−1)(−1)=1. | Convention test passes; full higher-symbol carrier is not in Suggested.lean. |
| §6.60 Dobrowolski | For d=2 the displayed lower bound is approximately 0.999987364; M(X²−X−1)=φ≈1.618034. At d=3 the bound is 1.000000054; M(X³−X−1)=θ₀≈1.324718. Nonmonic primitive 2X²−1 has measure 2, also exceeding the degree-2 bound. | Statable and absent: R07. The negative log-log at d=2 is not replaced by a false positive estimate. |
| §6.70 Smyth | X³−X−1 is nonreciprocal and has measure θ₀, equality. X−2 has measure 2>θ₀. Cyclotomic X−1 has measure 1 and is excluded by reciprocity. | Statable and absent: R07. |
| §6.73 Smallest Pisot | θ₀≈1.324718, φ≈1.618034, 2>θ₀; 1 is smaller but fails the Pisot >1 condition. | Statable and absent: R07. |
| §7.89 Hilbert–Speiser | Q(√5), α=(1+√5)/2: conjugate coordinate columns (0,1),(1,−1) have determinant −1; discriminant 5, ramification index 2 prime to 5. Q(i): determinant −2ab is not ±1 and e₂=2 is wild. | Native NIB/tameness statement elaborates; add headline (R07). |
| §3.29 Capelli | Q,n=4,a=−4: a is not a rational square, but a=−4·1⁴ and X⁴+4=(X²−2X+2)(X²+2X+2). Q,n=2,a=2 gives irreducibility and no rational square root. | Both clauses are needed; signature elaborates, absent (R07). |
| §6.66 Salem-field generator | P=X⁴−3X³+3X²−3X+1: τ≈2.153721376 and τ²≈4.638515. The squared-root polynomial is X⁴−3X³−7X²−3X+1, still degree 4, so Q(τ²)=Q(τ). | Powers retain field; this does not establish the minimal generator universally. Signature elaborates, absent (R07). |
| §6.77 Asymptotic Dobrowolski | m=1000: 2(log m/log log m)³≈91.32, exp(1/L)≈1.01101. For m=1, X−2 has M=2≥exp(1/2)≈1.64872, using bounded-degree c=2 in this test. | Branch and constants matter; test is not a proof of universal C,c. Signature elaborates, absent (R07). |
| Fröhlich–Taylor endpoint | Trivial G: the integer ring is a free Z-module; reduced projective class 0, root-number class 0, and twice the class is 0. | Boundary normalization passes; does not verify the nontrivial root-number comparison. Missing carrier is discussed in docstring. |
| §4.95 exceptional Markoff orbit | Closure of (0,1,1) under coordinate permutations, even sign changes and Vieta moves has exactly 16 triples; all have M=2. | Roadmap's finite orbit is correct; the source's infinite-orbit assertion is false. |
| R01–R06 supply direction | Six base-on-main→pending edges; the mechanical problem count is 6, expected count 0. | Fail. Moving only the extension after its suppliers changes these six edge directions to forward; edits not made in review. |
| R09 unused definitions | 10 listed definitions, 0 retained headline signatures using them. | Fail acceptance-test shape; delete or connect to a genuine missing headline. |
| R10 local API names | archNormResidueSymbol, dvrVOrdering, AddSubmonoid.IsSymmetricNumerical: 3 claimed identifiers, 0 declarations; rationality has 1 declaration under Sequences.IsRational. | Fail name contract; convert undeclared API bullets to prose. |
| R11 anchors | 713 explicit tags counted; allowed count 0. | Fail gate; remove tags and repair heading links. |
| R12 moved suppliers | Three cited old destination files resolve to 0 existing files there; all three corresponding Completed destinations exist. | Fail locator; repoint, retaining the existing supplier. |

**Whole-document finite-instance coverage.** Separate per-target ledgers record 574 rows: Layer 0: 1; Layer 1: 75; Layer 2: 81; Layer 3: 67; Layer 4: 121; Layer 5: 31; Layer 6: 75; Layer 7: 123. They test conventions and negative controls as well as boundary cases. For example the noncommutative S₃ Adams test gives ψ²χ=(2,2,−1)=1−sign+χ, and the Q₈ torsion test has four linear values 1 and faithful-character value −1. The 574-node graph extracted from all Needs lines has 1,114 internal target edges and no directed cycle; this does not remove the six cross-roadmap UPWARD edges.

Further supplier content opened on main: FormalLaurentPuiseux L5 (README:233); EllipticCurves formal-group milestones (637–645); GlobalQuadraticForms archimedean values (463); IntegralLattices B4 (1125); QuadraticFormInvariants 6C (1984); ReductiveGroups Layer 6 (466); CharacterTheory Layers 3, 4, 7 (397, 713, 1150); InductionRestriction Layer 6 (661); and SemisimpleAlgebras Layer 6 (293). The character-theory shape has changed, accounting for R12’s additional fragment repair.
**Additional marked source obligations.** The README calls these auxiliary proof targets or marked inputs. The source statements and proof passages listed below were opened; unavailable primary texts are separated below. Numerical checks do not certify the missing arguments.

| Target | Text read and computed witness | Result/change |
|---|---|---|
| §1.64 quartic supplement | For λ=3+2i, norm 13, i reduces to 5: (1+i)³=6³=8=−i; exponent (3−2−4−1)/4=−1. For λ=−1+2i, norm 5: 1+i=4=−1 and exponent −2 gives −1. | Both signs agree. Gauss §§68–76 remains unread. |
| §2.58 full Ward theorem | Bad-prime example (b,c,d)=(1,3,1): W₃=3, W₆=−81, W₉=52647, W₁₂=116963109, W₁₈=11737096697868185511; their 3-valuations are 1,4,1,4,5. Singular (2,3,2) gives Wₙ=n. | Agrees with the auxiliary obligation's two valuation branches and singular control; the good-prime argument alone would not suffice. |
| §§3.15,3.35 Mignotte input | bskk-random-polynomials-2023 lines 1063–1071, Lemma 3.4, p.20 quotes Theorem 1′. For A=I=X+1, m=n=H=1, the L² estimate reads √2≤50e; at N=2 the evaluation bound reads 3≤2·14⁸. | Exact quoted estimate located; primary Mignotte text is uncertified. The source's intermediate √n estimate is false (√2>1); use √(n+1). |
| §6.34 prime-count application | berrevoets-lehmer-2016 lines 681–698, Lemmas 4.5–4.6, p.16. At x=20.5, interval primes are 23,29,31,37,41: 5>3x/(5 log x)≈4.072275. At y=13 the application bound is 13.032203>13; at y=10 it is 9.786135<10. | Roadmap's threshold 13 survives. Rosser–Schoenfeld primary text remains unread. |
| §§6.62,6.67 short-gap branch | q(c)=40c⁴−93c²+40 gives q(.75)=.34375, q(.76)=−.3719296, q(1/θ₀)≈−.006428773. | Quartic has the promised exclusion at θ₀; these values do not prove the missing multiplier inequalities. Smyth §4 remains unread. |
| §6.77 asymptotic Dobrowolski | bskk-random-polynomials-2023 lines 2161–2182, §7, p.37, states L(m)=(1/2)(log m/log log m)³, compared with the roadmap's weaker L(m)=2(log m/log log m)³, and bounds degree-dropping primes by log d/log 2. For α=√2, exceptional set={2}, size 1=log 2/log 2; for ζ₈, size 1≤log 4/log 2=2. | Exceptional-prime bound agrees. Original asymptotic proof in Dobrowolski remains unread. |
| §7.29 Hasse–Davenport | dh lines 1179–1195, Appendix (A.6), p.19, retains χ(n)^n and excludes the trivial character from the fixed product. At q=5,n=2, χ(2)=i: g(χ²)²=5=−g(χ)g(χ⁻¹), since g(χ)g(χ⁻¹)=−5. At q=2,n=1 both sides equal g(1)=−1. | Sign agrees in these instances. Characteristic-two proof is not supplied by reduction modulo 2; BEW §11.3 remains unread. |
| §7.30 root-number convention | f76 lines 453–476, §2, (2.4)–(2.5), p.390; lines 1234–1265, Theorem 9, pp.410–411. For a one-dimensional odd real character W∞=−i, and the positive analytic factor is W∞⁻¹=i; their product is 1. Trivial global character has root number 1. | The normalization adapter has the required inverse. A general symplectic comparison is not certified by this test. |
| §7.63 field-of-definition induction | cpt lines 1184–1198, Theorem 5.4, p.28; the coefficient condition and prime-to-p multiplier are explicit. Trivial group over Q gives multiplier 1 and induced character 1=1. | Source is stronger than ordinary complex Brauer induction in precisely the required way. |
| §7.86 crossed products | cpt lines 1295–1342, Theorem 6.2 proof, pp.31–32, explicitly invokes Wall Theorem 8.3, p.614. With trivial action and trivial group, crossed product R=Mat₁(R), invariants R, norm identity. | Boundary case agrees; integral matrix splitting in Wall remains unread. |
| §7.93 coefficient descent | cpt lines 1422–1458, Theorem 6.6 and Propositions 6.9–6.10, pp.34–35, names Fröhlich Theorem 15A and Reiner Theorems 41.1/41.7. Rank-one identity extension has determinant u=u and norm u=u. | Citations and integral hypotheses match; both imported book arguments remain unread. |
| §§7.112,7.118 Gauss corrections | taylor-froehlich-conjecture-1981 lines 275–313, Propositions 3.6–3.10, pp.47–48; lines 730–811, §7 and Theorem 4, pp.59–61; lines 990–1018, §9 Ia, p.66. Zero virtual character gives τ(0)=y(0)=1, hence τ*(0)=1. At 2, log(−1)=0 although −1≠1; −1≢1 modulo 4. | The proof passages retain a torsion step beyond logarithmic equality. Fröhlich–Taylor (1980) remains unread. |
| §7.119a inertia norm | taylor-froehlich-conjecture-1981 lines 1449–1474, §12, p.78 uses prime-to-ℓ inertia on principal units. At ℓ=3, inertia order 2, 4²≡7 mod 9 and 7²≡4 mod 9: squaring is invertible on 1+3Z/9. | This norm input is supported; it is not by itself a proof of the full determinant-descent theorem. |

**Source availability outside the seeded sample.** Every one of the 132 works in the reference list was submitted to the sources service; marked inputs absent from that list were also requested. Legal source fetches produced 122 cached text paths after excluding the known access-error page (not all contents independently verified) in the combined sweep. Retrieval does not mean their contents were all verified. No source manifest or repository file was edited. One consolidated missing-source record retains the following 18 works and their retrieval attempts:

| Source | Unverified locator or use | Where retrieval failed |
|---|---|---|
| bach-euler-products-1995 | Euler-product estimates, pp.13–28 | README provides only the zbMATH summary; service received HTTP 403. |
| berndt-evans-williams-1998 | §11.3, Hasse–Davenport proof | Sources-service legal search timed out. |
| carmichael-arithmeticforms-1913 | §2, recurrence (14), Theorems I/IV, pp.35–37 | Internet Archive redirect remained rejected by the service's licence check despite explicit open-repository classification. |
| conrad-group-determinant-2010 | Theorem 2, p.5; §3, p.4 | Author URL redirected; service still rejected the destination despite explicit author-page classification. |
| dobrowolski-1979 | Lemma 3 and main theorem, pp.391–401 | IMPAN publisher route and EuDML attempt did not yield a readable text. |
| froehlich-galois-modules-1983 | Theorem 15A, p.66 | Legal search timed out; Springer book was not obtained. |
| froehlich-taylor-gauss-1980 | Theorem 5(ii)–(iii), §5.1 | Royal Society DOI 10.1098/rsta.1980.0242 returned 403; legal search also failed. |
| gauss-biquadratic-1832 | §§68–76 | Legal search was rate-limited; no text obtained. |
| kudla-tate-2004 | §3, (3.29), Propositions 3.5–3.8, pp.120–125; §4 Corollary 4.4, p.128 | Linked third-party GitHub copy was not established as an authorized source. |
| prasolov-polynomials-russian-2003 | Chapter 2 §7.2, Theorem 7.2, pp.68–69 | Linked loegria copy's authorization was not established. |
| prr | §1.4.1 p.29, §1.4.3 p.33, Proposition 2.37 pp.100–101 | Cambridge book route yielded no legal text; legal search was rate-limited. |
| reiner-maximal-orders-1975 | Theorems 41.1,41.7 | Sources-service legal search was rate-limited. |
| rosser-schoenfeld-1962 | Corollary 3 | Project Euclid's apparent PDF fetch returned an Incapsula access-error HTML page. It was not accepted as the article. |
| silverman-icms-2007 | First slide, full Ward divisibility assertion | Brown author PDF timed out. |
| simonson-gersonides-2005 | Highlights item 5, p.3; pp.6–7 | Institutional author-copy request timed out. |
| smyth-1971 | §2 pp.170–171, §3 pp.171–172, §4 pp.172–174, especially multipliers on p.173 | Author-uploaded ResearchGate scan and Wiley DOI route returned 403; full text unavailable. |
| ullom-normal-bases-1969 | Chapter I, pp.154–156, and the README's later local/global normal-basis citations | Cambridge open scan's redirect failed the service licence check even with publisher-open classification. |
| wall-norms-1974 | Theorem 8.3, p.614 | Wiley DOI route returned 403; legal search was rate-limited. |

Mignotte's Theorem 1′ (1988), pp.156–166, is separately **uncertified**: the service classified the primary text as paywalled. It is not in the missing-source request. BSKK's explicit quotation was read, but that does not verify the primary theorem's complete hypotheses or proof.

## Not verifiable

- No text in the 15-target seeded sample was unavailable legally. The 19 source fetches succeeded. No manifest was edited. Additional unavailable inputs and the consolidated missing-source record are described above.
- A computed instance or negative control was recorded for each of the 574 numbered targets, and every Lean declaration was compared with its elaborated signature. The public tables select the seeded targets, headline signatures and finding witnesses. Individual tests, especially rank-zero or trivial-group tests of deep results, do not certify the universal theorems; source proofs beyond the locators identified here and every API bullet/Check were not independently proved.
- The cross-roadmap search resolved the cited files and the contracts described above, but this is not a proof that every prerequisite hidden in every proof sketch has an exact owner. In particular, a missing-name search is not evidence that a construction is absent: the resolver emitted a pinned-package availability warning, so its 237 unresolved-name leads were inspected selectively and not promoted wholesale to findings.
- Ownership was searched against the available open-roadmap data and main. Open work without an available file was not independently checked. No undisclosed open pull request was sought as a supplier.
- The interval, automata, class-group and Galois-module examples are checks, not replacements for general proofs. The determinant-descent test does not certify its assertion for arbitrary nonabelian groups, and the trivial-group Fröhlich–Taylor test does not certify the root-number theorem.

## Source issues

- **Error** in fesenko-vostokov-2002 at IV §5, Exercise 4, printed p.152: the source says the real Hilbert symbol is one only when both arguments are positive; it should be one when at least one argument is positive; affects a stated result.
- **Error** in biasse-fieker-classgroup-2014 at Lemma 4.4, printed p.400: the source says its determinant error is bounded using unperturbed column sizes; it should be bounded using perturbed sizes too, for example r!((B+δ)^r−B^r); affects a stated result.
- **Error** in ghosh-sarnak-2022-v3 at §2, printed p.10: the source says the k=2 orbit of (0,1,1) is infinite; it should be a finite orbit of sixteen points; affects a stated result.
- **Misprint** in chabert-regularbases-survey at Example 1, equation (20), printed p.7: the source says the residue representatives satisfy the digit inequalities; it should be the integer digits n_i that satisfy 0≤n_i<q; affects nothing.
- **Misprint** in milne-cft-2020 at proof of Theorem 5.11, printed p.248: the source says the multiplicative Hilbert symbols outside the exceptional places equal zero; it should be one; affects the proof.
- **Misprint** in stange-valuations-2014 at Theorem 14, printed p.12: the source says n_P is the smallest nonnegative return index; it should be the smallest positive return index; affects a stated result.
- **Misprint** in streng-mthesis-2006 at Example 4.2, printed p.39: the source says the Weierstrass left side is x²+xy; it should be y²+xy, giving 35/64 on both sides at (−1/4,7/8); affects a stated result.
- **Misprint** in streng-mthesis-2006 at Example 4.2, printed p.39: the source says Q₂ is the field of 2-adic integers; it should be the field of 2-adic numbers; affects nothing.

- **Error** in bskk-random-polynomials-2023 at proof of Lemma 3.4, printed p.20: the source says a degree-n polynomial of coefficient height H has coefficient norm at most H√n; it should be H√(n+1), as X+1 has norm √2>1; affects the proof.
- **Error** in berrevoets-lehmer-2016 at Lemma 4.6, printed p.16: the source says its prime-avoidance conclusion holds without excluding α=0; it should be restricted to nonzero α, since F=X¹³ vanishes at every power of zero; affects a stated result.
- **Error** in berrevoets-lehmer-2016 at proof of Lemma 4.6, printed p.16: the source says the final numerical inequality follows for y≥10; it should use y≥13, since at 10 the lower bound is 9.786135<10; affects the proof.
- **Error** in berrevoets-lehmer-2016 at Lemma 4.7, printed p.16: the source says degree drop alone produces 1<M(β)≤M(α); it should exclude roots of unity, since α=i has degree drop but M(α)=1; affects a stated result.
- **Misprint** in relyea-reciprocity-2024 at Lemma 3.18, printed p.39: the source says the nonzero power sum depends on k dividing p−1; it should depend on p−1 dividing k: at p=7,k=2 the sum is 91≡0; affects a stated result.
- **Misprint** in relyea-reciprocity-2024 at proof of Proposition 3.19, printed p.39: the source says every primary element has norm p; it should invoke the norm-p Jacobi-sum identity for this particular element, since the primary unit −1 has norm 1; affects the proof.
- **Misprint** in relyea-reciprocity-2024 at proof of Proposition 3.19, printed p.39: the source says every prime element is primary; it should use the unique primary associate, since 3+ω is prime of norm 7 but is not primary; affects the proof.
- **Error** in relyea-reciprocity-2024 at Proposition 3.24, printed p.43: the source says its cubic-residue criterion applies to any Eisenstein prime; it should require a primary prime not dividing 6: at π=2, x³≡2 has x=0 but π≢1 modulo 2; affects a stated result.

- **Error** in dimitrov-2019 at Lemma 2.3, printed p.5: the source says the cyclotomic level must be odd; it should allow levels not divisible by four: Φ₆ has P₂=P₄=Φ₃; affects a stated result.
- **Misprint** in smith-conjugates-2024 at §1, printed p.1: the source says the trace threshold is the least number with the finite-exception property; it should be the supremum of such numbers, since every nonpositive number already has that property; affects a stated result.
- **Misprint** in berrevoets-lehmer-2016 at Lemma 4.8 proof, equation (17), printed p.17: the source says the summand uses F_k while the summation index is j; it should use F_j; affects the proof.
- **Misprint** in berrevoets-lehmer-2016 at Lemma 4.8 proof, printed p.17: the source says the tuple (F₀,…,F_N) belongs to Z^N; it should belong to Z^(N+1); affects nothing.
- **Misprint** in assi-garcia-sanchez-numerical-semigroups-2014 at Example 13(ii), printed p.6: the source says the Apéry sum is a+2a+⋯+(b−1)a while dividing by a; it should be b+2b+⋯+(a−1)b, giving genus 4 for ⟨3,5⟩; affects the proof.
- **Error** in ghosh-sarnak-2022-v3 at consequence (d), printed p.5: the source says the exceptional class number is at most the positive fundamental count; it should exceed that count at exceptional k≥5: k=5 has a point but no positive fundamental root; affects a stated result.
- **Error** in ghosh-sarnak-2022-v3 at consequence (c), printed p.4: the source says the class-number bound applies to all levels; it should exclude exceptional positive levels, since level 4+w² has at least ⌊w/2⌋+1 distinct line orbits; affects a stated result.
- **Error** in ghosh-sarnak-2022-v3 at illustration after Theorem 1.1, printed p.4: the source says h_M(3685)=6; it should distinguish six positive fundamental roots from at least seven orbits, since (1,70,32) is an additional small-coordinate point; affects a stated result.
- **Error** in ghosh-sarnak-2022-v3 at equation (8.1), printed p.22: the source says every coordinate satisfies its nonnegative-character restriction; it should retain the negative-factor sign exception: k=2, x=(0,1,1) gives (−8/−3)=−1; affects a stated result.
- **Error** in ghosh-sarnak-2022-v3 at Proposition 8.2, printed p.24: the source says the smallest parameter is ν=37; it should be ν=11, since 11²≡25 modulo 32 and 11≡−1 modulo 12, giving k=1456; affects a stated result.
- **Misprint** in ghosh-sarnak-2022-v3 at Proposition 8.2 proof, printed p.24: the source says x₁²−4=(x₁−2)(x₂+2); it should use x₁+2 in the second factor; affects the proof.
- **Misprint** in ghosh-sarnak-2022-v3 at Proposition 8.3 proof, printed p.25: the source says the residue under consideration is 3 modulo 20; it should retain −3 from the preceding sentence; affects the proof.
- **Error** in gamburd-magee-ronan-2018-v3 at Proposition 16(3), printed p.13 of arXiv v3: the source says the nonmaximal-coordinate growth claim holds everywhere; it should retain the outside-compact-set hypothesis: (1,3,4) at n=3,a=1,k=14 mutates to (1,1,4); affects a stated result.
