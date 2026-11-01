# Review of HomotopySpheres (pull request #1287 at 6fc3132)

**Verdict:** needs changes

Four blocking findings remain: two supplier-contract defects, duplicated constructions, and missing statable headlines. The supplied gate also fails on one HTML anchor. No false statement was found among the five Lean theorems; elaboration is not evidence of their truth.

The previous review supplied with this job is headed “pull request #284 at fb7c47e”, rather than this head. I checked its sixteen findings individually against the present files. The available repair record contains no finding marked “not actionable in this package”.

| Previous finding and short quoted passage | Disposition at this head |
| --- | --- |
| R01: “88 sorry'd data declarations” | Repaired. All three retained definitions have real bodies; only five theorem proofs contain `sorry`. |
| R02: “imports another roadmap's module” | Repaired. The imports are `Mathlib` and `TauCeti.Geometry.Manifold.Orientation`. The prose's implementation-time checks need not mean importing a roadmap module. |
| R03: “supplier providing `CollaredOrientedManifold`” | Not repaired as an exact contract: R01 below. The earlier review overstated the absence of general cobordism: GeometricTopology on main does plan oriented cobordism in Layer 6. |
| R04: “two open pull requests build this roadmap” | The supplied description identifies this as the adopted follow-up to the baseline. I do not repeat the ownership finding solely because the old baseline remains indexed. Independent overlaps with other roadmap objects remain in R03. |
| R05: “TangentialBordism's later PT theory consumes this roadmap” | Not repaired. That sentence remains at README 1207–1209. The present TangentialBordism and StringOrientation contracts make the overlap explicit: R03. The old claim that `finiteQuadraticArf` exists in TangentialBordism's Lean file is now stale. |
| R06: “headline theorems statable at the pins are absent” | Partly repaired: Bott, the sixth stem, and both recognition statements are present. The seventh stem and the fifth/sixth orthogonal-group vanishings remain statable and absent: R04. I do not repeat the old suggestion to rebuild the heavy Wall quotient in this acceptance file. |
| R07: “README range `n ≥ 6`, Lean range `n ≥ 5`” | Repaired by removing the offending Lean statements. Stage 6C still states its exact segment for n≥6. |
| R08: “normal-slot convention is sorry'd data” | Repaired substantively. The data have gone from Lean; README 993–1001 gives the actual quarter-turn and boundary formula. The determinant and disc example are recomputed below. |
| R09: “`oddElementary` adds a relation” | Repaired. That declaration is gone. Stage 7B uses the complementary/common-complement zero formations; the deleted transvection's counterexample is retained below as a negative control. |
| R10: “README shape and policy” | Not repaired: R06. There is now one explicit Checks block, but most definitions still lack their API and three discriminating Checks. |
| R11: “backticked names not declared” | Partly repaired. `homotopySphereClassOf` is gone; `ParallelizableFilling`, `IsHCobordism`, and `IsProductOnCollar` still occur without declarations: R07. |
| R12: “padding in `Suggested.lean`” | Repaired. The five remaining theorems are substantive; the one-tactic probes did not discharge them. |
| R13: “group law narrowed below the source” | Not repaired in prose: R09. The positive-dimensional group theorem should be separated from the high-dimensional diffeomorphism comparison. |
| R14: “library claims checked at the pin” | Partly repaired, but the separation-axiom claim remains false, and the boundary-manifold explanation overlooks Tau Ceti: R10. Sphere simple connectivity is available in pinned Tau Ceti. |
| R15: “chapter locators that miss the cited result” | Not repaired. Wall's text now directly confirms the problem: R08. The unread Milnor/Steenrod books are not treated as newly certified evidence. |
| R16: “non-sorry build warnings” | Repaired. Fresh elaboration reports only five `sorry` warnings. |

## R01 (P1) — The exact GeometricTopology interfaces are not supplied

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:134–136`: “GeometricTopology supplier providing `CollaredOrientedManifold`, `SmoothEmbeddedClosedDisk`, `CollarOpen`, and `CollarSource`, including the empty/disconnected bordism, boundary-model exterior and proper-tube contracts”. Also 723–725 and 774–775.

**Claim:** these precise carriers and relative constructions can be imported from the named supplier without targets or declared gaps here.

**Witness:** GeometricTopology on main has collars at 205, tubes at 218 and general oriented cobordism at 592–594. None of the four advertised names exists there or at its supplied revision head; no matching gap is declared.

The main knot-theory layer also does not state the cited four framed local moves. A revision of an existing roadmap cannot silently supply extra targets absent on main. General collar/tubular existence alone does not specify the exterior boundary model, positive widths, or relative framing comparisons demanded here.

**Repair:** cite the actual main sections for the general objects; identify the additional adapters explicitly. Own any new homotopy-sphere-specific adapter here, or declare precise supplier gaps in the plan and exact-contract section. Repoint relative transversality to an actual earlier contract, such as TangentialBordism B1's relative construction, where applicable. Do not replace GeometricTopology's already-owned general cobordism theory.

**Repair test:** for the empty bordism, a two-component cylinder, and the radial punctured-sphere exterior, the revised contract must supply respectively zero boundary components, two prescribed incoming/outgoing components, and a collar of positive width ε<1 whose endpoint has radius 1−ε>0. Naming the general collar theorem alone does not specify these maps.

## R02 (P1) — The seventh-stem branch uses unnamed theorem suppliers

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:1374–1376`: “using the independent L2 and untwisted Dirac index theorem”; also 1326–1328, 1356–1357 and 1413–1425.

**Claim:** the numerical Θ₇, Eells–Kuiper and all-dimensional E₈ conclusions follow from the listed inputs.

**Witness:** IndexTheory I7.2, README 740–749, owns the signature theorem; I7.5, 854–876, owns chiral Dirac index and Â-integrality. CharacteristicClasses C7 supplies formal characteristic polynomials, not these geometric index equalities. No IndexTheory contract appears here.

Likewise the “independent rational sphere theorem” is not assigned: GeneralizedCohomology G5 item 6, README 2212–2235 on main, explicitly supplies rational sphere vanishing; DGFloer Layer 1 item 4 owns the Serre-class theorem. A proof route must identify these inputs, not merely refer to an independent theorem.

**Repair:** add exact contracts for the closed oriented 4k-dimensional signature theorem and closed Spin eight-dimensional untwisted index theorem, and name the rational-sphere/Serre-class suppliers. Keep the normalization comparisons here. Resolve the resulting section dependencies and rerun the dependency check; a supplier absent from the order is placed after its own suppliers, not declared invalid solely for being absent.

**Repair test:** the signature contract gives 7p₂=45σ when p₁=0, hence obstruction 240 gives p₂=±1440 and σ=±224. The Spin index contract gives (p₁²−4σ)/896∈ℤ on a closed Spin eight-manifold. Formal power-series coefficients alone prove neither assertion. The rational input gives π₇ˢ⊗ℚ=0; finite generation then excludes a hidden rational summand in the bound 240.

## R03 (P2) — Import the existing finite PT and Spin-surface constructions

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:704–715`: “construct the following separate earlier theorem”; 788–798 reconstruct Spin filling; 1207–1209 claims TangentialBordism consumes this roadmap's PT.

**Claim:** these are constructions owned by this roadmap.

**Witness:** TangentialBordism B5.2, README 1038–1072, owns exactly the marked-sphere, honest-rank framed bijection and both inverses. B3.2(b–c), 1840–1892, owns the quadratic refinement and Spin-surface filling criterion. StringOrientation S2.2–S2.3 owns coefficient/stable framed PT.

The duplicate is by object, not terminology: both finite theorems have c≥1, d≥0, ordered normal c-frames, collared embedded traces missing the marked axis, pinch addition and domain-reflection inverse. Also import TopologicalKTheory T1.5a, README 299–325, for finite Stiefel connectivity and π₁SO, rather than rebuilding that finite calculation at 609–610 and 759–763. TangentialBordism's algebraic Arf input is now its declared `gap:finite-quadratic-arf`, not the vanished Lean declaration `finiteQuadraticArf` cited here at 1203–1206. The supplier's declared gap is not itself a defect.

**Repair:** make those existing sections explicit suppliers and remove the duplicate general construction targets. Retain the distinct finite-framing/Spin comparison, relative cancellation of normal stabilizations, generator calibrations, change-of-framing formula and homotopy-sphere applications. Replace the reversed consumption sentence. Import StringOrientation's stable coefficient theorem and specify only the additional smooth tangent/normal comparison required here.

**Repair test:** the supplier finite PT theorem sends a positive point to degree +1 and domain reflection to −1; its Hopf example has target reflection preserving Hopf invariant +1. B3.2(c) gives Arf 0 for a Spin boundary and Arf 1 for the Lie-spin torus. These are exactly the inputs needed for the retained c≥4 honest-framing comparison, without using Bott or Stage 9.

## R04 (P2) — Add the statable seventh-stem and orthogonal-vanishing headlines

**Location:** `TauCetiRoadmap/HomotopySpheres/Suggested.lean:10–30`, and `TauCetiRoadmap/HomotopySpheres/README.md:678–684,1342–1345` (“pi_7^S=Z/240 generated by J_7(b)”).

**Claim:** the acceptance file states the statable headline theorems and identifies the others.

**Witness:** scratch copies elaborate π_(n+7)(Sⁿ)≃ℤ/240 for n≥9, `Subsingleton (π_5(O(n)))` for n≥7, and `Subsingleton (π_6(O(n)))` for n≥8 using only the existing `Sphere` and `OrthogonalGroup` definitions.

These are genuine stable-range formulations, just like the sixth stem already retained. No stable colimit, sorry'd carrier or ad hoc encoding is needed. The docstring also omits the new Θ₇ classification, Eells–Kuiper model comparison and E₈ cap obstruction from its missing-carrier accounting.

**Repair:** add those three substantive signatures with `sorry`, their README names and locators. Name the remaining Stage 9A headlines in the docstring and explain their unavailable plumbing, filling, characteristic-number or bordism carriers. Keep the full geometric statements in the README.

**Repair test:** the three added signatures were elaborated in a scratch copy under the defaults. At n=9 the first is π₁₆(S⁹)≃ℤ/240, within 16≤2·9−2. At n=7 and 8 the two orthogonal groups are respectively in degrees 5≤7−2 and 6≤8−2 and both have one element by the Bott table. None is a boundary-value example replacing a general headline.

## R05 (P3) — Delete the anchor that fails the gate

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:611`: `<a id="hs4a-unit-tangent-two-sphere"></a>`.

**Claim:** the folder passes the push gate.

**Witness:** the supplied gate reports `residue=1`, names this exact line, and returns `FAIL`; all other counters are zero.

**Repair:** delete the HTML anchor and use the ordinary heading link where needed. The literal `<a id=` trigger then disappears. Rerun the gate; no acceptance is possible while it fails.

## R06 (P3) — Supply the per-target roadmap structure and discriminating Checks

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:65,140,310–341,1470`; examples of process citations are 107 and 111 (“RiemannianGeometry R1–R3, #935”, “MorseTheory M5, #884”).

**Claim:** the document gives implementable layers with exact prerequisites, APIs and tests.

**Witness:** there are no `*Needs:*` lines. The finite atlas, h-cobordism, almost-framed and filling definitions lack their individual API/three-Check blocks. Most source claims have only a stage-wide chapter range. The dependency table omits Stage 9A.

**Repair:** use the required Summary, Scope and ownership, Conventions, Exact supplier contracts, How to read the build, Layer/subsection, Examples, Dependencies and Downstream consumers structure. Preserve the section identities consumed elsewhere. Give each definition its API and three discriminating Checks, each theorem its hypotheses and locator, and each proof route its individual dependencies. Replace PR references and acceptance-process prose with timeless mathematical contracts. Order the Lean section comments consistently with the README.

**Repair test:** a valid Stage 5.0 definition must distinguish empty→degree 0, positive point→+1 and a reflected derivative→−1; the Hopf target-reflection negative control distinguishes the wrong unstable inverse. A Stage 6B collar block must distinguish ε=1/2 from ε=1 at the centre and compute its normal scaling. These tests are materially different, not three rewritings of a definition.

## R07 (P3) — Remove undeclared API names from prose code spans

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:219,315,1003`: `ParallelizableFilling`, `IsHCobordism`, `IsProductOnCollar`.

**Claim:** these are declared API names of this roadmap's acceptance file.

**Witness:** none occurs among the eight declarations of `TauCetiRoadmap/HomotopySpheres/Suggested.lean`; the file intentionally avoids these heavy carriers.

**Repair:** use ordinary mathematical prose for these planned objects, with intended source/target and fields described in the README. Do not restore heavy or sorry'd definitions merely to satisfy a name check. Retest by comparing every own backticked API name with the eight retained declarations plus the substantive additions in R04.

## R08 (P3) — Replace chapter ranges with verified statement locators

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:1213,1570`: Wall “Chapters 2–6”; sampled §§5.0/5.0b at 702–822 and their stage-wide sources at 887–899.

**Claim:** the citations locate the stated Wall calculation and the two sampled geometric theorems.

**Witness:** `wall1999` line 8288 is Theorem 13A.1, printed p.172: the trivial-group obstruction calculation is in §13A. The sampled sections provide no theorem/page locator for their finite-rank and Spin-filling assertions.

**Repair:** cite Wall Theorem 13A.1, p.172 for the group calculation, and separately locate the surgery realization/comparison. For the sample, cite the owned supplier theorems with precise primary-source support. Milnor's legally readable *Topology from the Differentiable Viewpoint*, §7, Theorems A–C, pp.43–44, supports the basic finite framed correspondence; explicitly account for the marked-relative and product-collar additions. Locate the Spin filling and honest-rank cancellation separately. Record the works in the source manifest through the authoring workflow; no manifest exists in this folder.

**Repair test:** Milnor C applies to compact boundaryless M and uses actual normal frames; `milnorTDV` lines 1231–1294 state those hypotheses. The summary on p.51 gives the first-offset c≥3 and second-offset c≥2 values, but is not a proof of the detailed Spin/cancellation route. Do not cite that summary as proving every intermediate claim. The unread Pontryagin/Kosinski locators remain uncertified, not alleged false.

## R09 (P3) — Separate the Θ group theorem from the high-dimensional comparison

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:180–184,355–361`, restricting the connected-sum group construction to n≥5.

**Claim:** the group structure is developed only in the h-cobordism theorem's diffeomorphism range.

**Witness:** `kervairemilnor1963` line 48, Theorem 1.1, printed p.504, states the h-cobordism-class group theorem without n≥5. The discussion at lines 70–76 distinguishes the diffeomorphism issue in dimensions 3 and 4.

**Repair:** state the connected-sum abelian group on positive-dimensional homotopy-sphere h-cobordism classes in its general range, and place n≥5 only on the smooth-diffeomorphism comparison used here. Keep dimension zero's conventions separate.

**Repair test:** for n=3 and n=4 the cylinder gives the unit relation and the punctured Σ×I construction gives [Σ]+[−Σ]=0. These do not invoke a smooth Poincaré classification of four-spheres. The high-dimensional recognition theorem remains scoped to n=6.

## R10 (P3) — Correct the pinned-library inventory

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:300–303`: “does not carry the separation”; `Suggested.lean:20–22`: “no manifold structure on a boundary component”.

**Claim:** these unavailable ingredients explain why the broader theorems cannot yet be stated.

**Witness:** Mathlib `Geometry/Manifold/PoincareConjecture.lean:41` includes `[T2Space M]`. Tau Ceti `Geometry/Manifold/Boundary/Charts.lean:321` proves `isManifold_boundary` for finite-dimensional half-space models and k≠0; line 374 gives smooth boundary inclusion.

Also cite native `TopologicalSpace.compactlyGenerated` as the topology underlying the proposed coreflector, and Tau Ceti's actual sphere simple-connectivity theorem instead of a historical Mathlib PR.

**Repair:** say the Poincaré predicate lacks the compactness and second-countability requirements, not separation. Explain that full collared cobordisms and their product/gluing data are missing while boundary manifold structures already exist. Build the categorical k-ification API over the native topology rather than planning that topology again.

**Repair test:** at n=6, k=∞, the pinned boundary theorem supplies a six-dimensional smooth boundary for a seven-dimensional half-space-model manifold. It still supplies no h-cobordism carrier. `NonemptyDiffeomorphSphere` has T2 in its elaborated context, whereas the retained recognition theorem correctly also includes compactness and second countability.

## Verified sound

The following are checks of statements and interfaces, not claims that numerical examples replace proofs. The mathematical tests found no counterexample to the five retained Lean headlines. Source verification is limited explicitly below.

**Mechanical checks.** Exact head verified; worktree initially clean; the PR diff outside `TauCetiRoadmap/HomotopySpheres` is empty. The supplied gate has one failure, R05, with `build=0`, `depcheck=0`, `sorry-data=0`, `set_option=0`, `imports=0`, `stray-files=0` and all other counters zero. Fresh dependency-check output:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The check cannot detect an unnamed supplier such as R02 or an incorrect cited contract such as R01. No merge-order file was changed. The section-level TopologicalKTheory classifier → HomotopySpheres Bott → TopologicalKTheory KO split is explicit and is not reported as a coarse citation cycle.

Fresh `lake env lean` elaboration of `Suggested.lean` succeeds with exactly five `sorry` warnings. I elaborated a scratch copy containing `#check @name` for all **eight** declarations and compared all signatures with the prose: **zero lost binders**, **zero changed statements**. In particular the oriented theorem retains both atlas hypotheses and all compact/T2/second-countable/smooth hypotheses. Separate scratch signatures substantiate R04.

For all **five** sorried theorems, scratch one-tactic probes with `simp`, `rfl`, and `infer_instance` failed to close the goal; the fallback `sorry` remained. Searches and inspection of the pinned APIs found no single existing theorem furnishing these five conclusions. The unoriented recognition conclusion requires constructing/choosing orientations before using the oriented theorem, so is not an `exact` restatement. No padding finding remains. No sorry'd data, `set_option`, arbitrary free-condition surrogate, algorithmic executable target, copied source passage, or edit outside the folder was found.

**Headlines accounted for.** The README promises: simply connected smooth h-cobordism; the Θ group and diffeomorphism comparison; convenient pointed topology, suspension/Freudenthal and James splitting; Hopf-invariant-one exclusion and parallelizable spheres; the real Bott loop chain/table and stable J; finite/stable framed PT; the A/P/Θ exact sequence; identification and calculation of surgery obstruction groups; framing obstruction/cokernel-J comparisons; sixth-stem and Θ₆ calculations; seventh stem/J, Θ₇, Eells–Kuiper sphere-bundle recognition and the all-k E₈ cap obstruction; oriented and unoriented smooth six-sphere recognition. Five are represented by substantive Lean statements. R04 identifies further native-carrier numerical headlines that can be stated now. The remaining geometric/spectral constructions need carriers not supplied by a few simple definitions; they belong in the README and in the module's explicit missing-carrier list.

**Adversarial values (129 rows).** “Retain” means the instance agrees with the stated object; Rxx identifies the needed change. The table tests dimensions, source/target, signs, ranks, both inverse directions and the relevant negative controls. Arithmetic over a DVR, nonreduced schemes and nonabelian input groups is inapplicable to these fixed real-manifold, integral-quadratic and mod-two statements; their analogues here are low ranks, nonconnected cycles, absent orientation, unstable framing and characteristic-two polarization.

| Statement | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| `Sphere` | n=0; origin in ambient space | S⁰={−1,+1}; ‖0‖=0≠1 | Native carrier; retain |
| `OrthogonalGroup` | ranks 0,1; zero 1×1 matrix | O(0) singleton; O(1)={±1}; 0·0ᵀ=0≠1 | Correct native subspace group |
| `PreservesOrientedAtlases` | identity; reflection in one coordinate | transition determinants +1; −1 respectively | Distinguishes orientation reversal |
| Oriented-atlas hypotheses | empty atlas on S⁶ | union of chart sources=∅≠S⁶; `IsOrientedAtlas` false | Empty-atlas vacuity excluded |
| `smoothPoincareSix_oriented` | M=S⁶, same/opposite orientations | identity has sign +1; reflection changes −1 to +1 relative to opposite atlas | All four orientation choices consistent |
| `smoothPoincareSix` | S⁶; S³×S³ | H₃=0 versus ℤ²; only first satisfies sphere-homotopy premise | Non-sphere negative control excluded |
| `orthogonalGroup_bottPeriodicity` | (k,n)=(0,11),(1,12),(2,13),(6,17) | π₉/π₁=ℤ/2; π₁₀/π₂=0; π₁₁/π₃=ℤ; π₁₅/π₇=ℤ | Both degrees stable, retain |
| `sphere_homotopyGroup_sixthStem` | n=8,9 | degrees 14,15; stable bounds 14,16; group order 2 on each side | Correct n≥8 |
| `sphere_parallelizable_iff` | n=1,3,7; n=2; excluded n=0 | frame ranks 1,3,7 exist; χ(S²)=2 obstructs frame; empty rank-0 frame exists but RHS false | n>0 necessary, retain |
| Finite atlas realization | empty; one Euclidean chart | quotient empty; one-chart quotient U with identity transition | Cannot supply homotopy sphere from empty atlas |
| Homotopy-sphere convention | empty; Sⁿ for n≥1; S⁰ | H₀=0,ℤ,ℤ² respectively | Empty excluded; positive-dimensional connected convention explicit |
| Collar width and normal | ε=1/2; ε=0 | ν_ε=ν/2; zero derivative at ε=0 | Positive-width hypothesis necessary |
| Cylinder boundary sign | I×X at 0 and 1 | outward normal −∂t,+∂t; boundary −X,+X | Retain outward-normal-first convention |
| Stage 1 handle carrier | Dᵖ×Dᑫ | dimension p+q; attaching locus S^(p−1)×Dᑫ | Dimensions agree |
| Stage 1 relative Morse setup | product cylinder | no critical points; relative chain complex 0 | Product is zero-handle-change control |
| Stage 1 handle chain cancellation | boundary matrix [1] or [−1] | kernel=0, cokernel=0 in both cases | Algebraic cancellation compatible with orientation change |
| Stage 1 Whitney dimensions | p=q=3; exceptional p=2,q=3 | 3+3=6; exceptional ambient handle boundary dimension 5 | Ordinary high-index argument must not subsume special six-dimensional proof |
| Stage 1 h-cobordism theorem | W=X×I, dim W=n+1, n=5 | both relative H*=0; model dimension 6 | Correct lower product-theorem dimension |
| Stage 2 connected sum unit | Σ#Sⁿ | class [Σ]+0=[Σ] | Retain |
| Stage 2 connected sum inverse | Σ#(−Σ) | boundary of punctured product construction; [Σ]−[Σ]=0 | Group theorem does not require n≥5; R09 |
| Stage 2 diffeomorphism comparison | n=3,4 versus n=6 | group operation defined in all three; supplied smooth h-cobordism range includes 6 only | Separate conclusions; R09 |
| Stage 3A k-topology | one point; finite discrete two-point space | k(*)=*; k({0,1})={0,1}; product has 4 points | Use native topology, then categorical API; R10 |
| Stage 3A coreflection direction | compactly generated point mapping to X | maps *→kX and *→X both indexed by X's points | Direction i⊣k and counit kX→X consistent |
| Stage 3A pointed cone convention | t=0,1 | F([a,0])=H(1,a)=basepoint; F([a,1])=H(0,a)=g(f(a)) | Base at 1/apex at 0 compatible with formula |
| Stage 3A suspension range | n=2 and q=2,3 | 2≤2n−2=2 is iso; q=3=2n−1 only surjective | Boundary not upgraded to iso |
| Stable-offset range | offsets k=0,1,2,6,7 | n≥k+2 gives 2,3,4,8,9 | Sixth and seventh signature ranges agree |
| Stage 3B James comparison | X=S¹; X=* | π₁(J(S¹))=ℤ=π₂(S²); J(*)=*≃ΩΣ(*) | Connected version has expected units |
| Stage 3B derived generality | disconnected S⁰ | π₀(J(S⁰))=ℕ versus π₀(ΩS¹)=ℤ | Naive comparison not used outside connected case |
| Stage 3B integral tensor/Tor | M=M(ℤ/2,2), M∧M | H̃₄=ℤ/2⊗ℤ/2=ℤ/2; H̃₅=Tor₁(ℤ/2,ℤ/2)=ℤ/2 | Retain Tor correction |
| Stage 3C Hopf normalization | complex Hopf map and target reflection | H(η)=1; H((−1)∘η)=(−1)²·1=1 | Rules out target reflection as unstable inverse |
| Stage 3C Hopf cone ring | x²=Hy; xy=y²=0 | H=0 gives x²=0; H=1 gives x²=y | Detects zero Hopf invariant |
| Stage 3C Adams-operation identity | commute ψ² and ψ³ on x | coefficients give 3ʳ(3ʳ−1)b₂=2ʳ(2ʳ−1)b₃ | Both paths have leading coefficient 6ʳ |
| Stage 3C odd-Hopf divisibility | r=1,2,3,4,6 | 2ʳ=2,4,8,16,64; 3ʳ−1=2,8,26,80,728 | r=3,6 excluded; 1,2,4 pass |
| Stage 3C two-adic bound | r odd; r=4,8 | ν₂(3ʳ−1)=1; at 4 it is 4, at 8 it is 5<8 | Only r=1,2,4 survive the bound |
| Stage 3C frame→multiplication | frame normalized at e | A_e=I; μ(e,y)=y and μ(x,e)=x | Strict unit excludes arbitrary unnormalized frame matrix |
| Stage 3C Clifford tangent fields | Aᵢ²=−I, i≠j | ⟨x,Aᵢx⟩=0; ⟨Aᵢx,Aⱼx⟩=0; ‖Aᵢx‖²=1 | n independent tangent fields on unit sphere |
| Stage 3C real Clifford conventions | Cl(0,1),Cl(0,3),Cl(0,7) | ℂ; ℍ⊕ℍ; M₈(ℝ)⊕M₈(ℝ); dimensions 2,8,128 | Negative generators and module dimensions agree |
| Stage 4A stabilizer bundle | SO(2)→SO(3)→S² | dimensions 1,3,2; 1+2=3 | Correct source/target |
| Stage 4A finite π₁SO | ranks 0,1,2,3 | 0,0,ℤ,ℤ/2; winding 1↦1 and 2↦0 mod 2 | Existing TopK input; R03 |
| Stage 4A finite π₂SO | SO(2),SO(3) | π₂S¹=0; covering S³ gives π₂SO(3)=0 | Correct starting cases |
| Stage 4A unit tangent comparison | x=e₁,v=e₂ | [x,v,x×v]=[e₁,e₂,e₃], determinant +1 | Correct oriented frame |
| Stage 4A cyclic versus odd permutation | (x,v,w)↦(v,w,x); swap x,v | determinants +1 and −1 | Cyclic map preserves SO(3) |
| Stage 4A unit tangent topology | UTS²≅SO(3)≅ℝP³ | π₁=ℤ/2 on both sides; S²×S¹ would give ℤ | Rejects trivial tangent-bundle model |
| Stage 4A stable versus honest tangent | TS²; TS²⊕ℝ | Euler number 2≠0; rank-3 stabilized bundle trivial | Stable triviality not honest parallelizability |
| Stage 4B Bott loop components | Ω(BO×ℤ),ΩO,Ω(O/U) | π₀ targets: π₁BO=ℤ/2, π₁O=ℤ/2, π₁(O/U)=0 | Agrees with O, O/U, U/Sp chain |
| Stage 4B stable O table | i=0,…,7 | ℤ/2,ℤ/2,0,ℤ,0,0,0,ℤ | Correct O versus SO component distinction |
| Stage 4B fifth/sixth groups | O(7) at degree 5; O(8) at degree 6 | both zero groups/cardinality 1 | Missing native headlines; R04 |
| Stage 4B finite stable bound | k=0,n=11 | top degree 9=n−2; bottom degree 1 | Correct uniform Bott signature bound |
| Stage 4C unstable J action | identity clutching map | action fixes sphere basepoint; zero homotopy class maps to 0 | Correct pointed construction |
| Stage 4C stable J/frame change | degree 3 generator; degree 6 domain | J₃(1)=generator mod24; π₆SO=0 gives im J₆=0 | Change-of-frame term cannot kill ν² |
| Sample 5.0 cycle rank | (c,d)=(1,0),(2,1) | ambient dimensions 1,3; codimensions 1,2 | Honest normal rank preserved |
| Sample 5.0 embedded trace | (c,d)=(2,1) | ambient cylinder dim4, trace dim2, normal rank2 | Same rank at both collars |
| Sample 5.0 empty collapse | L=∅ | constant based map; class 0 | Empty object allowed and distinguished |
| Sample 5.0 signed fibre | c≥1,d=0; one ± point | degree +1 or −1; two opposite points sum 0 | Framing sign detected |
| Sample 5.0 zero-section/tube/complement | positive framed point | centre→0 in finite chart; exterior→∞; derivative +1 | Excludes constant or negatively framed collapse |
| Sample 5.0 first inverse | positively framed point, its collapse | regular inverse image one point with derivative +1 | Frame, not just underlying point, recovered |
| Sample 5.0 second inverse | degree 2 circle map | two positive regular preimages; collapse degree 1+1=2 | Both maps give same homotopy class |
| Sample 5.0 pinch and inverse | two positive points; domain reflection | degrees 1+1=2; precomposition gives −1 | Correct group operation including total dimension 1 |
| Sample 5.0 Hopf inverse negative control | η:S³→S² | target reflection H=+1; domain reflection H=−1 | Correctly excludes target-only reflection |
| Sample 5.0 rank zero | based S⁰→S⁰ | two based maps; no positive-rank π formula applied | c=0 explicitly separated |
| Sample 5.0 suspension | framed point + one normal | dimensions increase by 1; degree stays +1 | Calibration compatible with stabilization |
| Sample 5.0b framed curves | c=3 and c=2 | π₄S³=ℤ/2, 1+1=0; π₃S²=ℤ, 1+1=2 | Integral case not collapsed to parity |
| Sample 5.0b bounding parity | disc boundary; nonbounding framing | parity 0 versus 1; pair of pants adds mod2 | Distinct reference framing required |
| Sample 5.0b curve general position | c=3 | surface trace dimension 2; ambient c+2=5=2·2+1 | Embedding range sufficient |
| Sample 5.0b surface polarization | q(a)=q(b)=0, a·b=1 | q(a+b)=1=0+0+1 | Zero quadratic map fails polarization |
| Sample 5.0b Lie torus | q(a)=q(b)=1, a·b=1 | q(a+b)=1; Arf=q(a)q(b)=1 | Nonbounding class distinguished |
| Sample 5.0b sphere/hyperbolic surface | S²; torus q(a)=q(b)=0 | H₁S²=0, Arf0; torus Arf0 | Both admit Spin filling; import B3.2(c) |
| Sample 5.0b filling converse | handlebody with q-zero meridian | kernel line ⟨a⟩, q(a)=0; Lie torus has no q-zero nonzero line | Arf1 torus excluded as full Spin boundary |
| Sample 5.0b Spin→frame obstruction | Spin(3)=S³, 3-dimensional filling | π₁=π₂=0; extension obstruction groups vanish | Low-cell assertion, not all Spin manifolds framed |
| Sample 5.0b honest-rank cancellation | c=4, trace dimension3 | V_(4+r),r connectivity 3; ambient c+3=7=2·3+1 | Relative stabilization cancellation in range |
| Sample 5.0b η² calibration | Lie-framed product of two η circles | q(a)=q(b)=1; Arf1; class order2 | Nonzero second-offset generator |
| Sample 5.0b complex Hopf LES | S¹→S³→S² | π₄S¹=π₃S¹=0; π₄S³≃π₄S²=ℤ/2 | c=2 exceptional case retained |
| Sample 5.0b quaternionic LES | S³→S⁷→S⁴ | π₆S⁷=π₅S⁷=0; π₅S³≃π₆S⁴=ℤ/2 | c=3 exceptional case retained |
| Sample 5.0b first/second/zeroth offsets | c=1; c≥2; c≥1 respectively | π₃S¹=0; second offset ℤ/2; degree group ℤ | Thresholds not conflated |
| Stage 5 stable normal splitting | Sᵈ in ℝ^(d+1) | rank TSᵈ=d, normal rank1; sum rank d+1 | Stable tangent/normal comparison needed separately |
| Stage 5 Thom augmentation | one point versus two points | Sᶜ versus Sᶜ∨Sᶜ; augmentation sends both components to target Sᶜ | Disjoint union becomes sum |
| Stage 5 derivative/tube convention | positive point; reflected normal | derivative +1 versus −1; collapse degree +1 versus −1 | Three explicit Checks discriminate orientation |
| Stage 5 stable framed PT | signed zero-manifolds | Ω₀fr=ℤ, π₀ˢ=ℤ, positive point 1↦1 | Existing StringOrientation coefficient theorem; R03 |
| Stage 6A almost-framed defect | sphere with one deleted disk | remaining disk framed; boundary sphere carries obstruction class | Zero obstruction for standard trivial clutching |
| Stage 6A punctured-sphere exterior | ε=1/2 radial collar | r(s)=1−s/2 gives r(1)=1/2>0 | Proper collar avoids centre |
| Stage 6A gluing defect | two opposite boundary framings | obstruction α+(−α)=0 | Reversal needed, not α+α |
| Stage 6B quarter-turn | normal/stabilizing coordinates (s,a) | (s,a)↦(−a,s); matrix [[0,−1],[1,0]], determinant +1 | Replaces unpinned permutation |
| Stage 6B boundary restriction | tangent t and normal slot a | (t,a)↦f(t−aν) | Added coordinate has specified sign |
| Stage 6B width rescaling | ε=1/2 | f(t−aν_ε)=f(t−(a/2)ν) | Normal and scalar rescaling agree |
| Stage 6B radial boundary control | ν=x on S⁶ | (t,a)↦t−ax; at t=0,a=1 value −x | Matches disc boundary convention |
| Stage 6B forbidden full width | ε=1 | r(1)=0 versus required r(1)>0 | Wrong exterior model rejected |
| Stage 6B no-top-handle spine | 7-dimensional filling | spine dimension≤6<7, so tangent rank exceeds spine dimension | Cancellation is absolute, not a claim about an arbitrary fixed boundary frame |
| Stage 6B filling boundary signs | W and −W | σ(−W)=−σ(W); incoming framing reverses normal | Compatible with addition and inverses |
| Stage 6B E₈ plumbing | negative E₈ matrix | determinant 1; signature −8 | Boundary integral homology sphere; sign fixed |
| Stage 6B E₈ dimension restriction | k=1 versus k=2 | boundary dimensions 3 versus 7; high-dimensional recognition used only at 7 | Does not assert every homology 3-sphere is a sphere |
| Stage 6C exactness at Θ₆ | P₇→Θ₆→A₆ | P₇=0; kernel(Θ₆→A₆)=0 | Correct n≥6 segment |
| Stage 6C exactness at A₆ | Θ₆→A₆→P₆ | A₆=ℤ/2→P₆=ℤ/2 is identity; kernel0 | Forces image Θ₆=0 |
| Stage 7A surgery kernel | cancelling hyperbolic handle pair | intersection [[0,1],[1,0]], determinant −1, signature0 | Nonsingular kernel with zero signature |
| Stage 7B even quadratic forms | q even; hyperbolic plane | λ(e+f,e+f)=2 and quadratic value1 | λ(x,x)=2μ(x), not μ(x) |
| Stage 7B odd quadratic refinement | mod2 hyperbolic/anisotropic plane | μ(e)=μ(f)=0→Arf0; both1→Arf1 | Polarization same; quadratic data distinguish forms |
| Stage 7B zero-rank form | zero ℤ-module | dual0, nonsingularity unique, signature0, Arf0 | Zero object legitimate |
| Stage 7B formation zero relations | (H;F,F*) and (H;F,F) | complementary pair; common complement F* | Both zero relations required |
| Deleted transvection negative control | symmetric H, v=e,c=1 | λ(f,f)=0; λ(f+e,f+e)=2 | Deleted relation would be invalid; stays deleted |
| Stage 7C L-group normalization | positive E₈; hyperbolic plane | σ/8=8/8=1; 0/8=0 | Generator not signature8 in target ℤ |
| Stage 7C dimensions | P₆,P₇,P₈; excluded P₄ | ℤ/2,0,ℤ; k≥2 excludes P₄ claim | Correct high-dimensional ranges |
| Stage 7C Arf generator | anisotropic rank2 over 𝔽₂ | Arf1; two copies Arf1+1=0 | Correct order2 |
| Stage 8 framing sequence | n=6 | π₆SO=0; coker J₆=π₆ˢ=ℤ/2; π₅SO=0 | A₆≃ℤ/2 follows with both ends checked |
| Stage 9 lower stems | k=1,2,3,4,5,6 | orders 2,2,24,1,1,2 | No good-prime restriction |
| Stage 9 ν² composite | ν₄∘Σ³ν₄ | S¹⁰→S⁷→S⁴, offset 10−4=6 | Correct composition order and dimensions |
| Stage 9 product framing | S³×S³ | middle H₃=ℤ², q(a)=q(b)=1, Arf1 | Generator maps nontrivially to P₆ |
| Stage 9 Θ₆ conclusion | A₆→P₆ iso, P₇=0 | kernel0 and preceding image0 imply Θ₆=0 | Exactness route consistent |
| Stage 9A seventh-stem prime bounds | p=2,3,5; p=7 | 16·3·5=240; 2p−3=11>8 | Covers small primes and excludes others in window |
| Stage 9A finiteness input | positive stem versus degree0 | π₇ˢ⊗ℚ=0; π₀ˢ⊗ℚ=ℚ | Need positive-degree rational theorem; R02 |
| Stage 9A complex e-invariant | candidate 1/240 | order in ℚ/ℤ=240; upper bound240 gives equality | Requires actual real J calibration |
| Stage 9A cannot halve in ℚ/ℤ | x=1/240 and x'=121/240 | 2x=2x'=1/120; x≠x' | Explicitly rejects ambiguous realification inference |
| Stage 9A J kernel | J:ℤ→ℤ/240 sending 1↦generator | kernel=240ℤ, cokernel0 | Both directions, not just divisibility |
| Stage 9A obstruction/signature | obstruction=240z, z=1 | p₂=±1440; σ=7p₂/45=±224; σ/8=±28 | Image exactly28ℤ needs realization of z=1 |
| Stage 9A Θ₇ quotient | P₈=ℤ, im A₈=28ℤ, A₇=0 | quotient ℤ/28; negative E₈ maps −1≡27 | Sign and cardinality consistent |
| Stage 9A Eells–Kuiper gluing | closed Spin8 difference | (p₁²−4σ)/896=(7p₁²−4p₂)/5760 | Algebra follows from σ=(7p₂−p₁²)/45; integrality needs R02 |
| Stage 9A index normalization check | ℍP², p₁²=4,p₂=7 | σ=(49−4)/45=1; both Â expressions=0 | Coefficients 896 and5760 agree |
| Stage 9A quaternionic clutching | h=2,j=−1; h=1,j=0 | e=h+j=1 both; p₁=2(h−j)=6,2 | Same Euler class, different Pontryagin data |
| Stage 9A explicit sphere-bundle μ | preceding two disk bundles | (36−4)/896=1/28; (4−4)/896=0 | Nonstandard and standard classes separated |
| Stage 9A negative E₈ μ | p₁=0,σ=−8 | (0+32)/896=1/28 | Agrees with h=2,j=−1 model |
| Stage 9A invariant injectivity | classes 0,−1 in signature/8 coordinates | μ(0)=0; μ(−1)=1/28 | Equality of μ used only after Θ₇ identification |
| Stage 9A twisted double disk | clutching extends over D⁷ | gluing conjugated to identity; resulting class0 | Nonzero 1/28 rules out extension |
| Stage 9A cap at k=2 | σ=−8, lower p₁=0 | 7p₂=−360; p₂=−360/7 not integer | Contradiction independent of bP order |
| Stage 9A Bott divisibility | k=2,3,4 | aₖ(2k−1)!=6,240,5040 | Uses real complexification factor2 only for odd k |
| Stage 9A signature multiples | k=3,4 | d₃=992/63, ν₂=5; d₄=−2032/15, ν₂=4 | Neither nonzero integer multiple can equal−8, ν₂=3 |
| Stage 9A general valuation | k=5; k≥5 bound | ν₂(d₅)=9; 2k−2−ν₂(k)+ν₂(aₖ)≥k−1≥4 | Zero multiple gives0≠−8; nonzero multiples have valuation≥4 |
| Stage 9A Bernoulli denominator | p=2,k=3,4 | B₆=1/42,B₈=−1/30, both ν₂=−1 | Prime, k>0, divisibility hypotheses satisfied |
| Stage 10 geometric recognition | standard sphere, either orientation | Θ₆ class0; reflection degree−1 exchanges orientations | Oriented/unoriented conclusions compatible |
| R01 supplier contract negative controls | no boundary; two ends; ε=1/2 | 0 boundary pieces; two specified maps; end radius1/2 | Precise missing contract, not missing general cobordism |
| R08 source range | Wall Ch.2–6 versus Thm13A.1 | chapter13 is outside [2,6] | Correct locator required |
| R10 native predicates | Poincaré predicate; boundary theorem k=∞ | T2 binder present; ∞≠0, boundary dimension7−1=6 | Correct inventory, retain broader missing cobordism explanation |

**Pinned declarations opened.** Pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These twelve file entries record the native definitions and hypotheses actually used in the audit; searches were by objects as well as proposed names.

| Pinned file and line | Declaration/content and conclusion |
| --- | --- |
| `Mathlib/Topology/Homotopy/HomotopyGroup.lean:441,458,530,603` | `HomotopyGroup`, `HomotopyGroup.Pi`, `pi1EquivFundamentalGroup`, and the higher `commGroup` instance. Native based cube-homotopy groups exist; this does not supply sphere suspension or stable colimits. |
| `Mathlib/LinearAlgebra/UnitaryGroup.lean:293,295,313` | `Matrix.orthogonalGroup`, membership via A·Aᵀ=1, `specialOrthogonalGroup`. O(n) is a real native matrix subgroup with inherited topology; it is not a sorry'd stable group. |
| `Mathlib/Geometry/Manifold/PoincareConjecture.lean:41` | `ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere` includes T2, but is a predicate, not a proof of smooth recognition. |
| `Mathlib/Topology/Compactness/CompactlyGeneratedSpace.lean:67` | `TopologicalSpace.compactlyGenerated` is the actual topology defined through compact Hausdorff probes; no Hausdorffness of X is built into it. |
| `Mathlib/Topology/Category/CompactlyGenerated.lean:32,77,81` | Compact-generation carrier, `compactlyGeneratedToTop` and full faithfulness exist. The inspected definitions do not establish the desired closed pointed/coreflector API. |
| `TauCeti/Geometry/Manifold/Orientation.lean:99,178,183,292,332` | `OrientationPreservingOn`, `orientationPreservingGroupoid`, its determinant criterion and linear-equivalence comparison, and `IsOrientedAtlas`. The atlas includes coverage and compatibility with the smooth maximal atlas; empty families cannot orient a nonempty sphere. |
| `TauCeti/Geometry/Manifold/Boundary/Charts.lean:321,338,374` | `isManifold_boundary`, immersion and smooth-embedding boundary inclusion for finite half-space models, k≠0. No collared bordism/gluing carrier follows merely from these. |
| `TauCeti/AlgebraicTopology/Sphere/SimplyConnected.lean:389,408` | General sphere result and `simplyConnectedSpace_sphere_euclideanSpace`: the native sphere is simply connected for n≥2. |
| `TauCeti/AlgebraicTopology/UniversalCover/Circle/HigherHomotopy.lean:84,95,109,122` | `Circle.subsingleton_homotopyGroup`, `Circle.homotopyGroupPi_eq_one`, and corresponding one-sphere statements cover degrees ≥2. These discharge the complex Hopf LES's circle ends. |
| `Mathlib/NumberTheory/Bernoulli.lean:689` | `Bernoulli.padicValRat_bernoulli`: prime p, positive k, and p−1 dividing 2k are required. At p=2 the divisibility is automatic, positivity is not. |
| `Mathlib/Geometry/Manifold/WhitneyEmbedding.lean:131` | `exists_embedding_euclidean_of_compact` includes the compact/Hausdorff smooth setting; it is not by itself a relative prescribed-boundary embedding theorem. |
| `Mathlib/Geometry/Manifold/Instances/Sphere.lean:385` | `EuclideanSpace.instIsManifoldSphere` supplies the smooth structure used by `Sphere n`, including the actual tangent carrier in the parallelizability statement. |

**Supplier and duplication audit.** I read main-roadmap examples AlgebraicTopology, SpinGeometry and HeegaardFloer before evaluating shape. Object searches through the roadmap service covered main and indexed open heads for collared cobordism, relative transversality, finite/stable PT, Spin-surface Arf, Bott/Stiefel/classifier objects, James/Freudenthal, surgery formations, stable stems and index inputs. I also searched the board package README files. Substantive witnesses below were opened on main or at the explicitly supplied sibling head; an open revision of a main roadmap was not substituted for main. The table has eighteen supplier/object entries.

| Supplier, version and resolved location | Contract / disposition |
| --- | --- |
| AlgebraicTopology, main; `Suggested.lean:962,1111,1132,1154,1213` | `poincareDualityMap_isIso`, `relativeHurewicz`, `relativeHurewicz_isIso`, `compactManifoldFiniteCWType`, `homologicalWhitehead` exist. The roadmap should name these as contracts, not import its acceptance module. |
| GeometricTopology, main; `README.md:205,210,213,218,222,546,592` | Collar, gluing, handle, tube, connected sum, framed surgery, oriented cobordism are owned there. Exact invented interfaces and added relative contracts are R01. The supplied revision was also searched for the four advertised names; it is not substituted for main as a supplier. |
| DifferentialGeometry, main; `README.md:345–352`; `Suggested.lean:893,931,935,940,978,1736` | `OrientationLift`, chosen `Manifold.Orientation`, reversal, point orientation, derivative preservation and boundary orientation resolve. The atlas-based headline uses pinned Tau Ceti instead of copying these prospective definitions. |
| HeegaardFloer, main; `README.md:142,161` | Lanes M/F0 distinguish finite-dimensional trajectory/Morse–Smale inputs from this roadmap's high-dimensional conclusions. |
| Completed UniversalCovers, main; `README.md:20–23,126–137` | Basepoint policy, higher homotopy, basepoint change and covering-induced isomorphisms for n≥2 resolve. Pinned circle results now supply the low-dimensional application. |
| TopologicalKTheory, main; `README.md:299–325,328–597,1148,1263` | T1.5a finite Stiefel/π₁SO and T1.6 classifiers precede this Bott theory. T7 has c(a)=2u²,c(b)=u⁴. Finite duplication is R03; full real loop periodicity belongs here. |
| RepresentationTheory / SpinRepresentations, main; algebraic Clifford periodicity contract | The algebraic Clifford-module input is distinct from topological Bott periodicity; it is not sufficient to replace the loop-space proof. |
| RiemannianGeometry, main; R1–R3, `README.md:179,300,347` | Metrics, Jacobi fields and finite broken-geodesic machinery are general inputs; this roadmap retains Bott-specific negative-bundle computations. |
| MorseTheory, main; M3/M5, `README.md:430,611` | Relative Morse input and Morse–Bott attachment resolve; neither is the six-dimensional h-cobordism theorem. |
| CharacteristicClasses, main; C6.2–C6.3, `README.md:1463–1517`; C7.1/C7.3, 1534,1553 | Chern/character normalizations and actual sphere tangent adapters resolve. Formal genus polynomials do not supply a signature or index theorem: R02. |
| SpinGeometry, main; G4/G6, `README.md:395` onward; scope 79–80 | Spin-lift existence/torsor and circle/torus lifts resolve. Numeric index/genus assertions are explicitly outside that supplier's scope. |
| TangentialBordism, supplied head; B5.2, `README.md:1038–1072`; B3.2(b–c), 1840–1892 | Owns the finite framed correspondence and Spin-surface refinement/filling. B3.2(a) now consumes its declared algebraic Arf gap; do not reinstate the stale Lean citation. R03. |
| StringOrientation, supplied head; S2.2/S2.3, `README.md:528–636` | Structured coefficient PT and framed Ωfr≃πˢ resolve. Keep only distinct comparison/application work here: R03. |
| GeneralizedCohomology, main; `README.md:326–333,2212–2235` | Broad Freudenthal is distinguished from this roadmap's sphere-only input; no duplication finding on that split. G5.6 supplies the rational sphere argument needed in R02. |
| DGFloer, main; `README.md:650–666` | Layer 1 item 4 supplies Serre classes and Hurewicz modulo a class; a name and hypotheses are needed when invoking it in Stage 9A. |
| IndexTheory, supplied head; I7.2/I7.5, `README.md:740–749,854–876` | Actual signature and chiral Dirac-index equalities are available as prospective contracts; missing here: R02. |
| EllipticCohomology, main; E4.S, `README.md:913–978` | Sphere ANSS/ην input is distinguished from the full geometric sixth/seventh-stem programme. No second-owner finding inferred merely from mentioning low stems. |
| ChromaticHomotopyTheory and FourManifolds, supplied heads; downstream references to §§3A–3C,4B,6C,9 | These are consumers. Preserve the cited section identities during R06; do not introduce upward supplier edges to them. |

No additional owner was identified for the specific h-cobordism/Θ recognition programme. Its combination of stable framing obstruction, surgery and homotopy-sphere classification is distinct from the general supplier constructions. The adopted-baseline issue is addressed above rather than rejecting this roadmap as a re-plan. No source passage was copied into this report; brief quotation is confined to the reviewed claims.

**Legal source sample and supporting checks.** Six legally accessible works/explanatory texts were inspected, plus Wall's errata. Source keys identify the service's line-numbered extractions. All further retrievals went through the source service; no repository source file or manifest was changed.

| Source and locator | What the text supports / limit |
| --- | --- |
| [milnorTDV](https://www.ux1.eiu.edu/~cidelman/Classes/4855%20and%205220/Supplementary%20Texts/MilnorTopDiffVpt.pdf), §7, pp.42–50; lines 1231–1294,1347–1476 | Compact boundaryless ambient M, normal frames, collared framed cobordism, regular-value independence, homotopy equivalence criterion and realization; Theorems A–B p.43 and C p.44. Supports the basic §5.0 theorem. The marked-infinity/relative version and its derivative convention still need the explicitly owned adapter, not a claim that Milnor literally states that version. |
| milnorTDV, §7, p.51; lines 1490–1515 | Signed-point degree and the first two sphere offsets with their different c≥3/c≥2 thresholds. The low-offset discussion does not prove the detailed Spin-filling/cancellation route in §5.0b. |
| [snaith2010](https://arxiv.org/pdf/1001.4751v1), Definition 3.1 p.7, §3.1 pp.8–9; lines 253–268,285–307 | Compact source without boundary, quotient normal bundle, framing-specific Thom identification, collapse then augmentation. This is a stable/PT construction reference, not certification of all finite-rank inverse/relative claims in the sample. |
| snaith2010, Corollary 2.2 p.7 and Example 8.3 p.31; lines 240–245,1153 onward | The 2-primary low-stem orders and existence of an Arf-one framing on S³×S³. Identifying this roadmap's chosen framing with its chosen ν² still requires its comparison target. |
| [kervairemilnor1963](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/kervaire-milnor.pdf), Theorem 1.1 p.504; lines 36–76 | Compact oriented smooth setting and the connected-sum h-cobordism-class group, with the low-dimensional diffeomorphism caveat. Direct support for R09. |
| kervairemilnor1963, Theorem 3.1 and §4; lines 195,263–350 | Stable parallelizability and the framed/cokernel-J/bP comparison. The paper's notation is Θ, bP and stable homotopy; it does not literally define the present A/P geometric carriers. A statement-by-statement dictionary is needed for the Stage 6C citation. |
| [wall1999](https://webhomes.maths.ed.ac.uk/~v1ranick/books/scm.pdf), Theorem 13A.1 pp.172–173; lines 8288–8308 | For the trivial group: signature/8 in residue 0, Arf in residue 2, and zero in odd residues. This verifies the normalization and the incorrect chapter-range finding, not the entire P-to-L geometric realization. |
| [ranicki2001](https://arxiv.org/pdf/math/0111315v1), §2 pp.6–7; lines 275–292 | Even quadratic Witt groups and odd formations with complementary/common-complement trivial formations. Supports Stage 7B after deletion of the old transvection relation. |
| [hatcherVB](https://pi.math.cornell.edu/~hatcher/VBKT/VB.pdf), §2.3, Theorem 2.16 p.59; Lemma 2.17 pp.59–60; Theorem 2.19 p.62; Lemma 2.22 p.65; lines 2326,2352,2442,2558–2586 | Parallelizable-sphere/H-space/Hopf-invariant route, Adams-operation comparison and two-adic obstruction. Confirms the hypotheses and r=1,2,4 exclusion calculation. It is an accessible explanatory source, not a claim that the unavailable original articles were read. |
| [wall-errata](https://webhomes.maths.ed.ac.uk/~v1ranick/books/scmerr.pdf), erratum for p.173 line 3; line 162 | Confirms the orientation-character misprint observed in the proof of Theorem 13A.1. This concerns the order-two group calculation, not the roadmap's trivial-group table. |

The two seeded sections are therefore **partially source-verified**, not certified at their existing locators. Their arithmetic, ranks, negative controls and supplier overlap were checked in full detail above; the unavailable original texts and unlocated intermediate results are recorded next.

## Not verifiable

I attempted every work cited by the README, including works named only in the body, and the three extra original parallelizability references in Lean. The unavailable-text list was consolidated; resolved Kervaire–Milnor and Wall requests were removed. No request is being used to postpone this review or to guess a source's contents.

- **Sample §5.0:** `pontryagin1959`, Chapter II §§1–4, resolved through DOI 10.1090/trans2/011/01 only to a LibLynx access page; no legal text was returned. `kosinski1993`, Chapters VIII–X, had no legal full-text match. `thom1954`, Chapters I–II, and `hirsch1976`, Chapters 2–4, were classified by the service as paywalled/uncertified. Their precise support for the marked finite-rank theorem was not verified. The accessible Milnor/Snaith checks above do not certify these unread locators.
- **Sample §5.0b:** its Spin filling and relative honest-rank cancellation assertions have no exact theorem/page citations to verify. The resolved supplier sections state the needed constructions, but the complete original source proof of the combined route was not certified. Milnor's p.51 summary verifies the stated low-offset values and thresholds only.
- `milnor1965`, *Lectures on the h-Cobordism Theorem*, cited Chapters 2–8: De Gruyter landing page only. `smale1961`, pp.391–406: JSTOR landing page only. I did not certify their detailed handle and exceptional-dimension proof locators.
- `james1955`, §§1–6: JSTOR landing page only. `steenrod1967`, pp.133–152: Project Euclid landing page yielded no PDF through the service. `whitehead1978`, Chapters VII–XI: no legal full-text match. The full convenient-space/James/EHP routes were not verified against those texts.
- `toda1962`: no book text was obtained. The service's bibliographic resolution returned an Elsevier paywall result, which is not evidence that the Princeton book's Chapters I–V or the Lean comment's Chapter XIV table were checked. Treat the locator as uncertified; do not infer numbering from that match.
- `bott1959`, §§2–8: JSTOR landing page only. `milnor1963`, *Morse Theory*, §24: the service matched a Smiley book review, not Milnor's book; that false match was corrected in the unresolved-source record. `steenrod1951`, cited Chapters 5–7 and 12, and `husemoller1994`, Chapters 3–4 and 8–9: no legal full text was returned. Their detailed bundle/Bott proof routes remain unverified at those locators.
- `browder1969`, §§1–3: JSTOR landing page only. The complete source justification of the specific ν²/product framing and P₆ comparison was not read; the Snaith statement cited above supports a narrower existence assertion.
- `adamsatiyah1966`, pp.31–38: publisher returned HTTP 403. `adams1960`: JSTOR landing page only. `bottmilnor1958`: AMS landing page was not fetched as an open text by the service. `kervaire1958`: no legal full-text match. Hatcher's text verifies the tested parallelizability/Hopf route; it does not certify the original articles' locators.
- Stage 9A supplies no precise primary locators for its complex e-invariant normalization, the Eells–Kuiper comparison, or its chosen quaternionic clutching signs. The numerical identities and necessary supplier contracts were tested; a primary-source audit of all those model identifications remains unavailable from the citations as written.

## Source issues

- **Misprint** in wall1999 at Theorem 13A.1 proof, printed p.173, line 3: the source says the surgery group has the negative orientation character; it should be the positive orientation character in this case; affects the proof; corrected in print at Ranicki's errata for p.173 line 3 (`wall-errata` line 162).
